<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/3 0003
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  pageEncoding="UTF-8" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8" />--%>
<%--    <title>病人列表</title>--%>
<%--    <%--%>
<%--        pageContext.setAttribute("APP_PATH",request.getContextPath());--%>
<%--    %>--%>
<%--    <link rel="stylesheet" type="text/css" href="css/index_style.css"/>--%>

<%--    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>--%>
<%--    <script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.0.0-beta.2/echarts.min.js"></script>--%>

<%--    &lt;%&ndash;    引入bootstrap样式&ndash;%&gt;--%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">--%>
<%--    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->--%>
<%--    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>--%>

<%--    <script type="text/javascript" src="${APP_PATH}/js/jquery-3.2.1.js"></script>--%>
<%--</head>--%>
<%--<body style="background: rgb(16,174,181);">--%>



<%--&lt;%&ndash;    搭建显示页面&ndash;%&gt;--%>
<%--    <div class="container" >--%>
<%--&lt;%&ndash;        标题行&ndash;%&gt;--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-6">--%>
<%--                <h1>CRUD</h1>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--&lt;%&ndash;    按钮&ndash;%&gt;--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-4 col-md-offset-8">--%>
<%--                <button class="btn btn-primary">新增</button>--%>
<%--                <button class="btn btn-danger">删除</button>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--&lt;%&ndash;    显示表格数据&ndash;%&gt;--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-12">--%>
<%--                <table class="table table-hover">--%>
<%--                    <tr>--%>
<%--                        <th>#</th>--%>
<%--                        <th>国家</th>--%>
<%--                        <th>所在省份</th>--%>
<%--                        <th>姓名</th>--%>
<%--                        <th>登记时间</th>--%>
<%--                        <th>操作</th>--%>
<%--                    </tr>--%>
<%--                    <c:forEach items="${pageInfo.list}" var="patient">--%>
<%--                        <tr>--%>
<%--                            <th>${patient.id}</th>--%>
<%--                            <th>${patient.country}</th>--%>
<%--                            <th>${patient.province}</th>--%>
<%--                            <th>${patient.patient_name}</th>--%>
<%--                            <th>${patient.create_datetime}</th>--%>
<%--                            <th>--%>
<%--                                <button class="btn btn-primary btn-sm">--%>
<%--                                    <span class="glyphicon glyphicon-pencil"></span>--%>
<%--                                    编辑--%>
<%--                                </button>--%>
<%--                                <button class="btn btn-danger btn-sm">--%>
<%--                                    <span class="glyphicon glyphicon-trash"> </span>--%>
<%--                                    删除--%>
<%--                                </button>--%>
<%--                            </th>--%>
<%--                        </tr>--%>
<%--                    </c:forEach>--%>


<%--                </table>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--&lt;%&ndash;    显示分页信息&ndash;%&gt;--%>
<%--        <div class="row">--%>
<%--&lt;%&ndash;            分页文字信息&ndash;%&gt;--%>
<%--            <div class="col-md-6">--%>
<%--                当前${pageInfo.pageNum}页,总${pageInfo.pages}页,总${pageInfo.total}条记录--%>

<%--            </div>--%>
<%--&lt;%&ndash;            分页条信息&ndash;%&gt;--%>
<%--             <div class="col-md-6">--%>

<%--                 <nav aria-label="Page navigation">--%>
<%--                     <ul class="pagination">--%>
<%--                         <li>--%>
<%--                             <a href="${APP_PATH}/patients?pn=1">首页</a>--%>
<%--                         </li>--%>

<%--                         <c:if test="${pageInfo.hasPreviousPage}">--%>
<%--                             <li>--%>
<%--                                 <a href="${APP_PATH}/patients?pn=${pageInfo.pageNum-1}" aria-label="Previous">--%>
<%--                                     <span aria-hidden="true">&laquo;</span>--%>
<%--                                 </a>--%>
<%--                             </li>--%>
<%--                         </c:if>--%>


<%--                         <c:forEach items="${pageInfo.list}" var="page_Num">--%>
<%--                             <c:if test="${page_Num==pageInfo.pageNum}">--%>
<%--                                 <li class="active"><a href="#">${page_Num}</a></li>--%>
<%--                             </c:if>--%>
<%--                             <c:if test="${page_Num!=pageInfo.pageNum}">--%>
<%--                                 <li><a href="${APP_PATH}/patients?pn=${page_Num}">${page_Num}</a></li>--%>
<%--                             </c:if>--%>
<%--                             <li><a href="#">${page_Num}</a></li>--%>

<%--                         </c:forEach>--%>

<%--                         <c:if test="${pageInfo.hasNextPage}">--%>
<%--                             <li>--%>
<%--                                 <a href="${APP_PATH}/patients?pn=${pageInfo.pageNum+1}" aria-label="Next">--%>
<%--                                     <span aria-hidden="true">&raquo;</span>--%>
<%--                                 </a>--%>
<%--                             </li>--%>
<%--                         </c:if>--%>

<%--                         <li>--%>
<%--                             <a href="${APP_PATH}/patients?pn=${pageInfo.pages}">末页</a>--%>

<%--                         </li>--%>
<%--                     </ul>--%>
<%--                 </nav>--%>
<%--             </div>--%>

<%--        </div>--%>

<%--    </div>--%>

<%--</div>--%>
<%--<script type="text/javascript" src="js/index_js.js"></script>--%>

<%--</body>--%>
<%--</html>--%>

