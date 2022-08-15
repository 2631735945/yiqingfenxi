//获取疫情数据
$.ajax({
    url:"https://interface.sina.cn/news/wap/fymap2020_data.d.json",
    dataType:"jsonp",
    jsonpCallback:"demo",
    success:function (res) {

        //获取疫情数据
       var allData=res.data;
       //设置更新时间
        $(".title span").html(allData.cachetime);

    }
})