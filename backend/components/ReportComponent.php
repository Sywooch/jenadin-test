<?php
/**
 * Created by PhpStorm.
 * User: artem
 * Date: 7/7/16
 * Time: 4:51 PM
 */

namespace backend\components;


use backend\models\BullionType;
use backend\models\Currency;
use backend\models\Customer;
use backend\models\DateWeight;
use backend\models\Location;
use common\components\Number;
use common\modules\i18n\Module;
use yii\db\Query;
use yii\helpers\ArrayHelper;

/**
 * Class for generating of the specific reports
 */
class ReportComponent
{
    /** Excel number format */
    const FORMAT_NUMBER = 'numberFormat';

    /** Excel percentage format */
    const FORMAT_PERCENTAGE = 'percentageFormat';

    /** Excel price format */
    const FORMAT_PRICE = 'priceFormat';

    /**
     * Excel entity to generate report in Excel format
     * @var Excel */
    private $excelWorker;

    public function __construct()
    {
        $this->excelWorker = new Excel();
    }

    /**
     * Generate the report with value for metal per location
     * Pie chart also will be included
     * @return array
     */
    public function getReportMetalPerLocationData()
    {
        $bullionTypes = BullionType::find()->all();
        $datePeriodEnd = date('Y-m-d');
        $data = [];
        foreach ($bullionTypes as $bullionType) {
            $locationData = [];
            $isEmpty = true;
            foreach ($bullionType->products as $product) {
                foreach ($product->customers as $customer) {
                    $customerTariff = $customer->getTariffPriceForBullionType($product->bullion_type_id);
                    $dateStorageAdd = $customer->getProductStorageDate($product->id);
                    $product->setTariff($customerTariff);
                    $product->setDatePeriodEnd($datePeriodEnd);
                    $product->setDateToStorageAdded($dateStorageAdd);
                    if (!array_key_exists($product->location_id, $locationData)) {
                        $locationData[$product->location_id] = 0;
                    }
                    $price = $product->getPriceInclVAT();
                    if (!empty($price)) {
                        $isEmpty = false;
                        $locationData[$product->location_id] += $price;
                    }
                }
            }
            if (!$isEmpty) {
                $bullionTypeData = [
                    'bullionType' => $bullionType,
                    'rows'        => []
                ];
                foreach ($locationData as $locationID => $price) {
                    if ($price == 0) {
                        continue;
                    }
                    $bullionTypeData['rows'][] = [
                        'location' => Location::findOne($locationID),
                        'price'    => $price
                    ];
                }
                $data[$bullionType->id] = $bullionTypeData;
            }
        }
        return $data;
    }

    /**
     * Generate data with value per customer
     * Pie chart also presents
     * @return array
     */
    public function getReportCustomerData()
    {
        $data = [];
        $customers = Customer::find()->all();
        foreach ($customers as $customer) {
            $pricePerCustomer = $customer->getCurrentPrice();
            if (empty($pricePerCustomer)) {
                continue;
            }
            $data[] = [
                'customer' => $customer,
                'price'    => $pricePerCustomer
            ];
        }
        return $data;
    }

    /**
     * @return array
     */
    public function getReportWeightData()
    {
        $groupedData = (new Query())
            ->select('SUM(weight) as total_weight, date_created')
            ->from(DateWeight::tableName())
            ->groupBy('date_created')
            ->all();
        $prepareData = [];
        foreach ($groupedData as $item) {
            $prepareData[] = [
                strtotime($item['date_created']) * 1000, (float)($item['total_weight'])
            ];
        }
        return $prepareData;
    }

}