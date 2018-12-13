<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Trabajo */

$this->title = $model->id_tra;
$this->params['breadcrumbs'][] = ['label' => 'Trabajos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="trabajo-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            //'id_tra',
            [
                'attribute'=>'esttra',
                'value' => function($data){
                 $valores=['PENDIENTE','FINALIZADO'];
                 return $valores[$data->esttra];
                }
            ],
            'initra',
            [
                'attribute'=>'vehtra',
                'value' => function($data){
                    return $data->vehiculos[$data->vehtra];
                }
            ],   
            // 'fintra',
            // 'restra:ntext',
        ],
    ]) ?>

</div>
