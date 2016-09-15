<?php

use yii\helpers\Html;

/**
 * @var string $directoryAsset
 */

?>
<table border="0" cellpadding="0" cellspacing="0" width="600" id="template_header"
       style="background-color: #339933; border-radius: 3px 3px 0 0 !important; color: #ffffff; border-bottom: 0;
       font-weight: bold; line-height: 100%; vertical-align: middle; font-family: 'Helvetica Neue', Helvetica, Roboto, Arial, sans-serif;">
    <tbody>
    <tr>
        <td id="header-wrapper" style="padding: 20px 45px; display: block;">
            <h1 style="color: #ffffff; font-family: 'Helvetica Neue', Helvetica, Roboto, Arial, sans-serif;
                font-size: 20px; font-weight: 300; line-height: 150%; margin: 0; text-align: left;
                text-shadow: 0 1px 0 #7195a9; -webkit-font-smoothing: antialiased;">
                <?= Html::img(\yii\helpers\Url::to('/uploads/logo-email.png', true), [
                    'height' => 100,
                    'alt'    => 'Logo',
                    'style'  => 'border: none; display: inline; font-size: 14px; font-weight: bold; height: 100px; 
                                width: auto; vertical-align: middle; line-height: 100%; outline: none; 
                                text-decoration: none; text-transform: capitalize;'
                ]) ?>
                <span style="float: right; line-height: 100px;">With pleasure: We knit – you wear!</span>
            </h1>
        </td>
    </tr>
    </tbody>
</table>