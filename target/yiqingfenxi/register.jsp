
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="http://at.alicdn.com/t/font_1786038_m62pqneyrzf.css">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.0.0-beta.2/echarts.min.js"></script>

    <%--    引入bootstrap样式--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/login_style.css"/>
    <script type="text/javascript" src="${APP_PATH}/js/jquery-3.2.1.js"></script>
    <title>Document</title>

</head>

<body>
<div class="form-wrapper">
    <div class="header">
        Register
    </div>
    <form action="Register" method="post">

        <div class="input-wrapper">
            <div class="border-wrapper">
                <input type="text" name="account" placeholder="account" class="border-item" autocomplete="off">
            </div>
            <div class="border-wrapper">
                <input type="password" name="password" placeholder="password" class="border-item" autocomplete="off">
            </div>
        </div>
        <div class="action">
            <input class="btn btn-default" type="submit" value="Submit">
        </div>

    </form>

    <%--    <div class="icon-wrapper">--%>
    <%--        <i class="iconfont icon-weixin"></i>--%>
    <%--        <i class="iconfont icon-qq"></i>--%>
    <%--        <i class="iconfont icon-git"></i>--%>
    <%--    </div>--%>
</div>
</body>

</html>