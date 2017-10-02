
<!-- 
<div class="row">
<div class="col-lg-6 col-sm-12 ">
<div class="panel panel-default">
<div class="panel-heading">Bar chart </div>
<div class="panel-body"> 
<canvas id="bar" class="chart chart-bar"  chart-data="trController.data" chart-labels="trController.labels" 
chart-series="trController.series"  style="display: block; width: 523px; height: 261px" chart-options="trController.options">
</canvas>
</div>
</div>
</div>
</div> -->
<fusioncharts 
    width="100%" 
    height="400"
    type="column2d"
    datasource="{{trController.myDataSource}}"
></fusioncharts>

<div style="width:100%;border:1px solid #c2c2c2;margin-top:10px">
<div style="float:left;width:30%;height:100px;border:1px solid #ebebeb;margin-left:3px"><fusioncharts 
    width="100%" 
    height="300"
    type="pie3d"
    datasource="{{trController.myDataSource}}"
></fusioncharts></div>
<div style="float:left;width:30%;height:100px;border:1px solid #ebebeb;margin-left:3px"><fusioncharts 
    width="100%" 
    height="300"
    type="pie3d"
    datasource="{{trController.myDataSource}}"
></fusioncharts></div>
<div style="float:left;width:30%;height:100px;border:1px solid #ebebeb;margin-left:3px"><fusioncharts 
    width="100%" 
    height="300"
    type="pie3d"
    datasource="{{trController.myDataSource}}"
></fusioncharts></div>

</div>
<!-- 
<fusioncharts 
    width="100%" 
    height="400"
    type="pie3d"
    datasource="{{trController.myDataSource}}"
></fusioncharts> -->