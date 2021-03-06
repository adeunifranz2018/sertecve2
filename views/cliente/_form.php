<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Cliente */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="cliente-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'cidcli',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'ESCRIBA NUMERO DE CARNET',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.toUpperCase().trim();']])->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nomcli',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'escriba su nombre',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.toUpperCase().trim();']])->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'apecli',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'escriba su apellido',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.toUpperCase().trim();'
                    ]])->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'telcli',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'type'=>'number',
                'min' => '0',
                'max' => '79999999',
                'placeholder' => 'escriba su numero de telefono',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.replace(/[^\d]/g,"").trim();',
                'onkeydown'=>'javascript:this.value=this.value.replace(/[^\d]/g,"").trim();'
                    ]])->textInput(['maxlength' => true]) ?>


    <?= $form->field($model, 'dircli',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'escriba su direccion',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.toUpperCase().trim();'
                    ]])->textarea(['rows' => 2]) ?>

    <?= $form->field($model, 'emacli',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'escriba su correo electronico',
                'type'=>'email',
                    ]])->textInput(['maxlength' => true]) ?>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Registrar') : Yii::t('app', 'Modificar'), ['class' => $model->isNewRecord ? 'btn btn-success btn-lg col-lg-5' : 'btn btn-primary btn-lg col-lg-6']) ?>
        <?= Html::a('Cancelar', ['/personal'], ['class' => 'btn btn-default btn-lg col-lg-5',])  ?>           
    </div>

    <?php ActiveForm::end(); ?>

</div>
