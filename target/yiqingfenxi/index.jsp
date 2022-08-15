<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/3 0003
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <link rel="stylesheet" type="text/css" href="css/index_style.css"/>

    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.0.0-beta.2/echarts.min.js"></script>
    <script src="js/echarts.js"></script>

</head>
<body>

<!-- 页面头部区域 -->
<div id="head_content">
    <div class="head_logo">
        <img src="img/baidu_logo.png" height="25"/>
    </div>
    <div class="sub_title">
        新型冠状病毒肺炎
    </div>
    <div class="title">
        <h1>疫情实时大数据报告</h1>
    </div>
    <div class="readnum">
        共 8,173,099,278 人次已浏览
    </div>
    <div class="readnum">
        <a href="login.jsp" style="text-decoration:none; color: aliceblue" >登录</a>
    </div>
</div>

<!-- 页面主体区域 -->
<div id="body_content">
    <!-- lab页 -->
    <div id="yiqing_lab">
        <div id="yiqing_in">
            <span  class="active">国内疫情</span>
        </div>
        <div id="yinqing_out">
            <span>国外疫情</span>
        </div>
    </div>

    <!-- 国内疫情数据展示 -->
    <div id="yiqing_data_block">
        <div class="title">
            <h4>国内疫情</h4>
                <span></span>
            </h4>


        </div>
        <div id="box" class="content">
            <div class="info_block">
                <span class="lab">现有确诊</span>
                <span class="current_num" id="getcount"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">现有本土</span>
                <span class="current_num" id="getcount3"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">现有境外</span>
                <span class="current_num" id="getcount4"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">现有无症状</span>
                <span class="current_num" id="getcount2"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>


            <div class="info_block">
                <span class="lab">累计确诊</span>
                <span class="current_num" id="getcount5"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">累计境外</span>
                <span class="current_num" id="getcount6"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">累积治愈</span>
                <span class="current_num" id="getcount7"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">累计死亡</span>
                <span class="current_num" id="getcount8"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
        </div>
    </div>

    <!-- 地图区域 -->
    <div id="map_block">
        <!-- lab切换区 -->
        <div class="title">
            <div id="lab_left" class="lab_left active">
                现有确诊
            </div>
            <div id="lab_right" class="lab_right">
                累计确诊
            </div>
        </div>
        <!-- 地图区域 -->
        <div id="main" class="content">

        </div>

        <%--柱状图区域--%>
        <div id="Histogram" class="content" style="width: 800px;height:400px;">

        </div>
        <script type="text/javascript">
            var resultData1=[];
            $.ajax({
                type: "get",
                url: "${pageContext.request.contextPath}/getHistogramData",
                success: function(msg) {
                    resultData1=msg;

                    //分离数据
                    var provincelist=[];
                    var patientlist=[];

                    resultData1.forEach(function (element) {
                        // console.log(element);
                        provincelist.push({
                            name:element.name
                        })
                    })

                    var arr=new Array();
                    for(var i=0;i<provincelist.length;i++){
                        arr[i]=provincelist[i].name;
                    }
                    console.log(arr);

                    resultData1.forEach(function (element) {
                        // console.log(element);
                        patientlist.push({
                            value:element.value
                        })
                    })

                    // console.log(patientlist);
                    //基于准备好的dom，初始化echarts实例
                    var myChart = echarts.init(document.getElementById('Histogram'));

                    // 指定图表的配置项和数据
                    var option = {
                        title: {
                            text: '疫情患者人数柱状图'
                        },
                        xAxis: {
                            data:arr,
                            type: 'category'


                        },
                        yAxis: {

                            type: 'value'
                        },

                        series: [
                            {
                                data: patientlist,
                                type: 'bar'
                            }
                        ]
                    };

                    // 使用刚指定的配置项和数据显示图表。
                    myChart.setOption(option);

                }
            });

        </script>



        <script type="text/javascript">

            /*数据变量*/
            var resultData = [];
            // var lujing={b}+".jsp";

            function getData(state) {

                var abc="";
                if(state=='now') abc="getmapDataNow";
                else abc="getmapDataAll";

                $.ajax({
                    type: "get",
                    url: "${pageContext.request.contextPath}/"+abc,
                    success: function(msg){
                        resultData =msg;

                        // 基于准备好的dom，初始化echarts实例
                        var myChart = echarts.init(document.getElementById('main'));

                        myChart.showLoading();

                        $.get("json/full.json", function (geoJson) {

                            myChart.hideLoading();

                            echarts.registerMap('HK', geoJson);


                            myChart.setOption(option = {

                                //提示框
                                tooltip: {

                                    padding:3,
                                    borderColor: "#333",
                                    enterable:true,
                                    backgroundColor:"rgba(50,50,50,0.7)",
                                    textStyle:{
                                        color:"#fff"
                                    },
                                    triggerOn:'click',
                                    show:true,
                                    trigger: 'item',
                                    triggerOn: 'click',
                                    // formatter: '{b}<br/>{c} 人'
                                    formatter: `<div style="display:flex;align-items:center;
                                    position:relative;z-index:9999">
                                    <div style="padding: 0px 10px; font-size: 12px">地区：{b}<br/>确诊：{c} </div>
                                    <a style="display: flex;align-items: center;height: 30px; border-left: 1px solid #fff;padding-left: 8px;color: #fff;font-size: 12px" href="anhui.jsp"> 详情> </a>
                                </div>`,
                                    // formatter:function (msg){
                                    //     console.log(msg);
                                    //     return `<section style="display:flex;align-items:center;
                                    //     position:relative;z-index:9999">
                                    //                 <div style="padding: 0px 10px; font-size: 12px">{b}<br/>确诊：{c} 人</div>
                                    //                 <a style="display: flex;align-items: center;height: 30px; border-left: 1px solid #fff;padding-left: 8px;color: #fff;font-size: 12px" href="#">详情></a>
                                    //                </section> `
                                    // }
                                },
                                toolbox: {
                                    show: true,
                                    orient: 'vertical',
                                    left: 'right',
                                    top: 'center',
                                    feature: {
                                        dataView: {readOnly: false},
                                        restore: {},
                                        saveAsImage: {}
                                    }
                                },
                                visualMap: {
                                    min: 1,
                                    max: 20,
                                    text: ['High', 'Low'],
                                    realtime: false,
                                    calculable: true,
                                    inRange: {
                                        color: ['#ffe4da', '#ffe4da','#ff937f','#ffbc5e','#fe3335','#cd0000', 'orangered']
                                    }
                                },
                                series: [
                                    {
                                        zoom:1.2,
                                        itemStyle:{
                                            borderColor:"#666",
                                            borderwidth:"0.3",
                                            areaColor:"#fff",
                                        },
                                        name: '香港18区人口密度',
                                        type: 'map',
                                        mapType: 'HK', // 自定义扩展图表类型
                                        label: {
                                            show: true,
                                            fontSize:8
                                        },
                                        emphasis:{
                                            itemStyle:{
                                                areaColor:"#b4ffff",
                                            }
                                        },
                                        select:{
                                            itemStyle:{
                                                areaColor:"#b4ffff",
                                            }
                                        },
                                        data: resultData
                                    }
                                ]
                            });
// $("#map_block.title div").click(function (){
//     console.log("afasfsaf");
//     // $("#map_block .title div").toggleClass("active");
//     // option.series[0].data=$(this).index()==0 ? nowList:allList;
//     // myChart.setOption(option)
// })


                        });

                    }


                });
            }

            getData("now")

            $("#lab_left").click(function (){
                getData("now")
            })

            $("#lab_right").click(function (){
                getData("all")
            })

            // myChart.on('click', function (params) {//点击事件
            //     if (params.componentType === 'series') {
            //         var provinceName =params.name;
            //         $('#box').css('display','block');
            //         $("#box-title").html(provinceName);
            //
            //     }
            // });


        </script>
    </div>
</div>

<%--<!-- 开发环境版本，包含了有帮助的命令行警告 -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>--%>
<script>
    $(function () {
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount2",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount2").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount3",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount3").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount4",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount4").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount5",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount5").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount6",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount6").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount7",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount7").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount8",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount8").html(msg);
            }
        });
    })

</script>
<script type="text/javascript" src="js/index_js.js"></script>
<script type="text/javascript" src="js/getSinaData.js"></script>
</body>
</html>

