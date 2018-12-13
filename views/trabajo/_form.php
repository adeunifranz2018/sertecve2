<?php

//use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\select2\Select2;
use kartik\helpers\Html;
use rmrevin\yii\fontawesome\FAS;
use yii\widgets\Pjax;
use yii\bootstrap\Modal;
use wbraganca\dynamicform\DynamicFormWidget;

/* @var $this yii\web\View */
/* @var $model app\models\Trabajo */
/* @var $form yii\widgets\ActiveForm */
rmrevin\yii\fontawesome\AssetBundle::register($this);
$CSS=<<<CSS
.modal.in .modal-dialog { 
    margin: 0;
    width: 100%;
    height: 100%;
}
.modal-content {
    height: 100%;
    background-color: rgba(125,150,250,0.5);
}
.panel {
    background-color: transparent;
}
.panel-default > .panel-heading {
    color:#fff;
    background-color: rgba(125,150,250,0.7);
    text-shadow: 1px 1px 2px rgba(0,0,0,0.3) !important;    
}
table, td, th {
    color: #fff;
}
td.precio {
text-align: right;padding-right: 2% !important;"   
}
CSS;
$this->registerCSS($CSS);
$this->registerCssFile("css/chosen.min.css");
$this->registerJsFile('@web/js/js.js', ['depends' => [\yii\web\JqueryAsset::className()]]);

$this->registerJS('
    $("#trabajo-vehtra").on("change",function(){
        if($("#trabajo-vehtra").val()==""){
            $("#modalbutton").show();
        } else {
            $("#modalbutton").hide();
        }
    });
    $("#submitveh").on("click",function(e){
        if($("#trabajo-vehtra").val()!=""){
            $("#modalbutton").hide();
            $("#submitveh").hide();
            $("#trabajo-vehtra").selected()="123";
        }
    });
    $("#agregar-vehiculo").on("click",function(e){
        $("#veh").yiiActiveForm("resetForm");
        $("#titulo").hide();
        $("#trabajo").toggle();
    });
    $("#agrveh").on("click",function(e){
        $("#trabajo").toggle();
        $(".trabajo-create>h1").show();
    });
    $("#myInput").on("keyup", function(){
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("tb-rep-dis");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
      td = tr[i].getElementsByTagName("td")[1];
      if (td) {
        txtValue = td.textContent || td.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }       
    }
    });
    $("button.btrash").on("click", function(){
        var table = document.getElementById("tb-rep-usa");
        //console.log(parseInt(table.rows[parseInt(this.name)].cells[4].innerHTML));
        var id="r"+this.id;
        //console.log(id);
        var row = document.getElementById(id);
        row.style.display = "none";
        document.getElementById("tb-rep-usa").deleteRow(this.name);
        var total=0;
        for (var r = 1, n = table.rows.length; r < n-1; r++) {
            total+=parseInt(table.rows[r].cells[4].innerHTML);
        }
        console.log(total);
        table.rows[table.rows.length-1].cells[1].innerHTML=total+" Bs";
    });
//TableSchema
getPagination("#tb-rep-dis");

    ');
?>
 
<!-- <div class="modal fade modal-fullscreen" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
 <div class="modal-dialog">
  <div class="modal-content">
   <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <div class="modal-title" id="myModalLabel"><h3><strong>Agregar registro de persona</strong></h3></div>
   </div>
   <div class="modal-body"> -->
<?php if ($model->isNewRecord) { ?>

<?php 
Modal::begin([
    'header' => '<h2>Registrar nuevo vehiculo</h2>',
    //'toggleButton' => ['label' => 'click me'],
    'options' => [
        'id'=>'modal1'
    ]
]);
?>

<?php $form = ActiveForm::begin(['id'=>'veh']); ?>
<div class="vehiculo-form">


    <?= $form->field($model2, 'plaveh',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'ESCRIBA LA PLACA',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.toUpperCase().trim();']])->textInput(['maxlength' => true]) ?>
    <div class="col-sm-6">
    <?= $form->field($model2, 'marveh',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'ESCRIBA LA MARCA',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.toUpperCase().trim();']])->textInput(['maxlength' => true]) ?>

    </div>
    <div class="col-sm-6">
    <?= $form->field($model2, 'tipveh',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'ESCRIBA EL TIPO',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.toUpperCase().trim();']])->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-sm-6">
    <?= $form->field($model2, 'modveh',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'type'=>'number',
                'min' => '1900',
                'value' => '1900',
                'placeholder' => 'ESCRIBA EL MODELO',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.replace(/[^\d]/g,"").trim();',
                'onkeydown'=>'javascript:this.value=this.value.replace(/[^\d]/g,"").trim();']])->textInput() ?>
    </div>
    <div class="col-sm-6">
    <?= $form->field($model2, 'chaveh',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'ESCRIBA EL CHASIS',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.toUpperCase().trim();']])->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-sm-6">
    <?= $form->field($model2, 'colveh',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'ESCRIBA EL COLOR',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.toUpperCase().trim();']])->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-sm-6">
    <?= $form->field($model2, 'pueveh',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'type'=>'number',
                'min' => '2',
                'placeholder' => 'ESCRIBA EL NUMERO DE PUERTAS',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.replace(/[^\d]/g,"").trim();',
                'onkeydown'=>'javascript:this.value=this.value.replace(/[^\d]/g,"").trim();']])->textInput() ?>
    </div>
    <?= $form->field($model2, 'traveh',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'ESCRIBA LA TRANSMISION',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.toUpperCase().trim();']])->textInput(['maxlength' => true]) ?>

<?php 
echo 

        $form->field($model2, 'proveh')->widget(Select2::classname(), [
                'data' => $model2->propietarios,
                'theme' => Select2::THEME_BOOTSTRAP,
                'language'      => 'es',
                'options'       => ['placeholder'=>'--Seleccione--'],
                'pluginOptions' => ['allowClear'=>false],
                'addon' => [
                    'prepend' => [
                        'content' => FAS::icon('user')
                    ],
                    ]
            ]);
    ?>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Registrar') : Yii::t('app', 'Modificar'), ['id'=>'submitveh','class' => $model->isNewRecord ? 'btn btn-success btn-lg col-lg-5' : 'btn btn-primary btn-lg col-lg-6']) ?>
        <?= Html::button('Cancelar', ['class' => 'btn btn-default btn-lg col-lg-5','data-dismiss'=>'modal'])  ?>           
    </div>
</div>
<?php ActiveForm::end(); ?>

<?php 
Modal::end();
 ?>

<?php } ?>
<div class="trabajo-form">

    <?php $form = ActiveForm::begin(); ?>
    <?php if ($model->isNewRecord) { ?>
    <?php Pjax::begin(); ?>
    <?php   
        /*echo $form->field($model, 'PERS_PRE')->dropDownList($personas,['prompt'=>'--Seleccione--']);*/
        echo 
        $form->field($model, 'vehtra')->widget(Select2::classname(), [
                'data' => $model->vehiculos,
                'theme' => Select2::THEME_BOOTSTRAP,
                'language'      => 'es',
                'options'       => ['placeholder'=>'--Seleccione--'],
                'pluginOptions' => ['allowClear'=>true],
                'addon' => [
                    'prepend' => [
                        'content' => FAS::icon('car')
                    ],
                    'append' => [
                                'content' => Html::button('<i class="fa fa-car"></i><span class="label">+</span>', [
                                    'class'       => 'btn btn-xs btn-primary', 
                                    'title'       => 'Nuevo Vehiculo', 
                                    'data-toggle' => 'modal', 
                                    'data-target' => '#modal1', 
                                    'id'          => 'modalbutton'
                                ]),
                                'asButton' => true
                            ]                     
                    ]
            ]);
    ?>
        <?php Pjax::end(); ?>
    <?php } else { ?>
    <?= $form->field($model, 'vehtra')->dropdownList($model->vehiculos,['disabled'=>'disabled']); ?>
    <?php } ?>
    <?php 
    $model->fintra = date("Y-m-d");
    if ($model->isNewRecord) {
      $model->initra = date("Y-m-d");
      $model->esttra = 0;
      $model->restra = '-';
    }
    else {
      $model->esttra = 1;        
      $model->fintra = Yii::$app->formatter->asDate($model->fintra, 'php:Y-m-d');
    }
     ?>
    <?= $form->field($model, 'esttra')->dropdownList(['PENDIENTE','FINALIZADO']); ?>     
    <div class="row">
        <div class="col-sm-6">
    <?= $form->field($model, 'initra')->textInput(['type'=>'date']) ?>
        </div>
        <div class="col-sm-6">        
    <?= $form->field($model, 'fintra')->textInput(['type'=>'date']) ?>
        </div>    
    </div>
     <?= $form->field($model, 'restra',[
        'inputOptions' => [
                'class' => 'form-control transparent',
                'placeholder' => 'ESCRIBA EL DIAGNOSTICO FINAL O RESULTADO',
                'style'=>'text-transform: uppercase',
                'onblur'=>'javascript:this.value=this.value.toUpperCase().trim();'
                    ]])->textarea(['rows' => 2]) ?>

    <?php 
        echo 
            $form->field($model, 'seru')->widget(Select2::classname(), [
                'name'          => 'servicios utilizados',
                'data'          => $model->sd,
                'language'      => 'es',
                'options'       => ['placeholder'=>'--Seleccione--', 'id'=>'seru'],
                'pluginOptions' => ['allowClear'=>true,'multiple' => true, 'maintainOrder'=> false,'tags'=>true],
                'addon'         => ['prepend' => ['content' => Html::icon('shopping-cart')]]
        ]);
    ?>

<?php 
Modal::begin([
    'header' => '<h2>Agregar repuesto</h2>',
    //'toggleButton' => ['label' => 'click me'],
    'options' => [
        'id'=>'modal2'
    ]
]);
?>
        <h1>Repuestos disponibles en almacen</h1>
        <div class="row">
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-6">
                        <label class="control-label" for="maxRows">Filtrar lista por nombre:</label>
                        <input class="form-control" type="text" id="myInput" placeholder="Buscar un repuesto.." title="Type in a name">
                    </div>
                    <div class="col-sm-2">
                        <label class="control-label" for="maxRows">Mostrar</label>
                        <select class ="form-control" name="state" id="maxRows">
                             <option value="5">5</option>
                             <option value="10">10</option>
                             <option value="15">15</option>
                             <option value="All" selected>Todos</option>
                        </select>                    
                    </div>
                </div>
            </div>
        </div>
    <table class="table table-sm table-striped table-borderless" id="tb-rep-dis">
            <thead>
            <th class="col-sm-1">#</th>                
            <th class="col-sm-6">REPUESTO</th>
            <th class="col-sm-2">DISPONIBLE</th>
            <th class="col-sm-2">PRECIO</th>
            <th class="col-sm-1">AGREGAR</th>            
            </thead>
            <tbody>
            <?php 
                $c=1;$t=0;
                foreach ($model->repdisp as $repuesto) {
             ?>                
             <tr>
             <td><?= $c ?></td>                
             <td><?= $repuesto["nombre"] ?></td>
             <td><?= $repuesto["cantidad"] ?></td>
             <td><?= $repuesto["precio"] ?> Bs.</td>
             <td>
                <?=
                    Html::button(
                        '<i class="fa fa-shopping-cart"></i>',
                        ['class' => 'btn btn-xs btn-info cart','id'=>$repuesto["id"]]);
                  ?>
            </td>
             </tr>
            <?php
                $c++;            
                }
             ?>
        </tbody>
        <tfoot>
            <td align="center" colspan="5">
                <?=
                    Html::button(
                        'Aceptar',
                        ['class' => 'btn btn-lg btn-default','data-dismiss'=>'modal']);
                  ?>
            </td>
        </tfoot>
    </table>
<!--        Start Pagination -->
            <div class='pagination-container' >
                <nav>
                  <ul class="pagination">
                   <!-- Here the JS Function Will Add the Rows -->
                  </ul>
                </nav>
            </div>
<?php 
Modal::end();
 ?>

        <?php Pjax::begin(); ?>
   
    <table class="table table-sm table-striped table-borderless" id="tb-rep-usa">
            <thead>
            <th class="col-sm-1">#</th>
            <th class="col-sm-2">FECHA</th>
            <th class="col-sm-6">REPUESTO</th>
            <th class="col-sm-1">CANTIDAD</th>
            <th class="col-sm-1">PRECIO</th>
            <th class="col-sm-1">
                <?= 
                    Html::button('<i class="fa fa-cog">+</i><span class="label"> agregar repuesto</span>', [
                                                        'class'       => 'btn btn-primary', 
                                                        'title'       => 'Nuevo Vehiculo', 
                                                        'data-toggle' => 'modal', 
                                                        'data-target' => '#modal2', 
                                                        'id'          => 'modalbutton'
                                                    ]);
                 ?>
            </th>
            </thead>
            <tbody>
            <?php if($model->repu!=null) {?>
            <?php 
                $c=1;$t=0;
                foreach ($model->repuestos as $repuesto) {
             ?>
             <tr id=<?= 'r'.$repuesto["id"] ?>>
             <td><?= $c ?></td>
             <td><?= $repuesto["fecha"] ?></td>
             <td><?= $repuesto["nombre"] ?></td>
             <td class="precio"><?= $repuesto["cantidad"] ?></td>
             <td class="precio"><?= $repuesto["precio"]*$repuesto["cantidad"] ?> Bs.</td>
             <td>
                <?= 
                    Html::button(
                        '<span class="glyphicon glyphicon-trash"></span>',
                        [
                            'class' => 'btn btn-xs btn-danger btrash',
                            'id'    => $repuesto["id"],
                            'name'  => $c
                        ]);
                  ?>               
             </td>
             </tr>
            <?php
                $c++;
                $t=$t+$repuesto["cantidad"]*$repuesto["precio"];
                }
             ?>
        </tbody>
        <tfoot>
            <td  class="precio" colspan="4">TOTAL</td><td class="precio"><?= $t ?> Bs.</td>
        </tfoot>
            <?php } ?>
    </table>
    <?php Pjax::end(); ?>

    <div class="form-group">
        <?= Html::submitButton('Registrar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
