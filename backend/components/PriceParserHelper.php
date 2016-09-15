<?php
/**
 * Created by PhpStorm.
 * User: artem
 * Date: 7/6/16
 * Time: 10:08 AM
 */

namespace backend\components;

use backend\models\AveragePrice;
use backend\models\BullionType;
use keltstr\simplehtmldom\simple_html_dom;
use keltstr\simplehtmldom\SimpleHTMLDom as SHD;
use yii\base\ErrorException;

/**
 * Class for everyday parsing of the average price per metal
 */
class PriceParserHelper
{
    /** Currency for which parsing is done */
    const PARSE_CURRENCY = 'EUR';

    /**
     * Endpoint url for parsing
     * @var string
     */
    private $url = 'http://lbma.oblive.co.uk/table';

    /**
     * Period for what the request is made
     * @var string
     */
    private $requestType = 'daily';

    /**
     * Year of the getted data
     * @var string
     */
    private $year;

    /**
     * Table selector from html response
     * @var string
     */
    private $htmlTable = 'table.data';


    public function __construct()
    {
        $this->year = date('Y');
    }

    /**
     * @param $newYear
     */
    public function setYear($newYear)
    {
        $this->year = $newYear;
    }

    /**
     * Method which executes the parsing of the prices per metal
     */
    public function run()
    {
        $metals = BullionType::getMetalParseSlugs();
        $currentDate = date('Y-m-d');
        foreach ($metals as $slug => $title) {
            $amount = $this->getParsedAmount($slug);
            if (!empty($amount)) {
                $searchData = [
                    'date_created' => $currentDate,
                    'metal'        => $slug
                ];
                $averagePrice = AveragePrice::find()->where($searchData)->one();
                if (!empty($averagePrice)) {
                    $averagePrice->amount = $amount;
                }
                else {
                    $averagePrice = new AveragePrice();
                    $averagePrice->metal = $slug;
                    $averagePrice->amount = $amount;
                    $averagePrice->date_created = $currentDate;
                }
                $averagePrice->save(true, null, true);
            }
        }
    }

    /**
     * Method that returns the active metal amount for today
     * @param string $metal
     * @return bool|float
     */
    public function getParsedAmount($metal)
    {
        try {
            $html = SHD::file_get_html($this->getRequestUrl($metal));
            $amount = $this->getAmountFromHtml($html);
        } catch (ErrorException $error) {
            $amount = false;
        }

        return $amount;
    }

    /**
     * Method which forms the request URL to get the data
     * @param string $metal
     * @return string
     */
    public function getRequestUrl($metal)
    {
        $queryParams = [
            'metal' => $metal,
            'year'  => date('Y'),
            'type'  => $this->requestType
        ];
        return $this->url . '?' . http_build_query($queryParams);
    }

    /**
     * Method which returns the average amount from the html object
     * @param simple_html_dom $html
     * @return bool|float
     */
    public function getAmountFromHtml($html)
    {
        $amount = false;
        try {
            $tableCollection = $html->find($this->htmlTable);
            $colspan = 0;
            $subCells = 1;
            if (!empty($tableCollection) && count($tableCollection) == 1) {
                $table = reset($tableCollection);
                $theadCells = $table->find('tr.currency th');
                /**
                 * Find the position of the currency
                 * and the number of cells before this column
                 */
                foreach ($theadCells as $key => $cell) {
                    $colspanCounter = 1;
                    if (!empty($cell->colspan)) {
                        $colspanCounter = $cell->colspan;
                    }
                    if ($cell->plaintext == self::PARSE_CURRENCY) {
                        $subCells = $colspanCounter;
                        break;
                    } else {
                        $colspan += $colspanCounter;
                    }
                }
                $firstRow = $table->find('tbody tr.even', 0);
                $currencyData = [];
                /**
                 * Depending on the found position and subcells number get the amount
                 * Than find the average of it
                 * */
                for ($i = 0; $i < $subCells; $i++) {
                    $cell = $firstRow->children($i + $colspan);
                    if (!empty($cell->plaintext)) {
                        $currencyData[] = $cell->plaintext;
                    }
                }
                if (!empty($currencyData)) {
                    $amount = array_sum($currencyData) / count($currencyData);
                }
            }
        } catch (ErrorException $error) {
            $amount = false;
        }

        return $amount;
    }


}