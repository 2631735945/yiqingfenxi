<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022/6/15
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>安徽省</title>
    <link rel="stylesheet" type="text/css" href="css/index_style.css"/>

    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.0.0-beta.2/echarts.min.js"></script>
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
       <a href="index.jsp" style="text-decoration:none; color: aliceblue" >返回疫情首页</a>
    </div>
</div>

<!-- 页面主体区域 -->
<div id="body_content">
    <!-- lab页 -->
    <div id="yiqing_lab">
        <div id="yiqing_in">
            <span  class="active">疫情动态</span>
        </div>
        <div id="yinqing_out">
            <span>本地播报</span>
        </div>
    </div>

    <!-- 国内疫情数据展示 -->
    <div id="yiqing_data_block">
        <div class="title">
            <h4>安徽省</h4>
            <span>数据更新至 2020.11.26 14:26</span>
        </div>
        <div id="box" class="content">
            <div class="info_block">
                <span class="lab">现有确诊</span>
                <span class="current_num" id="getcount9"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">现有本土</span>
                <span class="current_num" id="getcount10"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">现有境外</span>
                <span class="current_num" id="getcount11"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">现有无症状</span>
                <span class="current_num" id="getcount12"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>

            <div class="info_block">
                <span class="lab">累计确诊</span>
                <span class="current_num" id="getcount13"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">累计境外</span>
                <span class="current_num" id="getcount14"></span>                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">累计治愈</span>
                <span class="current_num" id="getcount15"></span>
                <span class="yestoday_num">昨日<span class="data">+66</span></span>
            </div>
            <div class="info_block">
                <span class="lab">累计死亡</span>
                <span class="current_num" id="getcount16"></span>
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
        <div id="main" class="content"></div>
        <div id="box1" >
            <span id="box-title"></span>
        </div>

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


        </script>
    </div>
</div>

<%--<!-- 开发环境版本，包含了有帮助的命令行警告 -->--%>
<%--<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>--%>
<script>
    $(function () {
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount9",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount9").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount10",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount10").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount11",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount11").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount12",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount12").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount13",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount13").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount14",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount14").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount15",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount15").html(msg);
            }
        });
        $.ajax({
            type: "get",
            url: "${pageContext.request.contextPath}/getCount16",
            success: function(msg){
                /*alert( "Data Saved: " + msg );*/
                $("#getcount16").html(msg);
            }
        });
    })

</script>
<script type="text/javascript" src="js/index_js.js"></script>
</body>
</html>
