<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/3 0003
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>病人列表</title>
    <%
        pageContext.setAttribute("APP_PATH",request.getContextPath());
    %>
    <link rel="stylesheet" type="text/css" href="css/index_style.css"/>

    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.bootcdn.net/ajax/libs/echarts/5.0.0-beta.2/echarts.min.js"></script>

    <%--    引入bootstrap样式--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
   integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>

    <script type="text/javascript" src="${APP_PATH}/js/jquery-3.2.1.js"></script>
</head>
<body style="background: #1f4b4094;">
<%--**************病例修改模态框****************--%>

<!-- Modal -->
<div class="modal fade" id="patientUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" >修改病例信息</h4>
            </div>
            <div class="modal-body">

                <%--                水平排列的表单--%>
                <form class="form-horizontal">

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">id</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="id" id="id_update_input" placeholder="id">
                        </div>
                    </div>


                    <div class="form-group">
                        <label  class="col-sm-2 control-label">country</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="country" id="country_update_input" placeholder="country">
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">country_num</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="country_num" id="country_num_update_input" placeholder="country_num">
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">province</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="province" id="province_update_input" placeholder="province">
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">patient_name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="patient_name"  id="patient_name_update_input" placeholder="patient_name">
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">patient_type</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="patient_type" id="patient_type_update_input" placeholder="patient_type">
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">patient_state</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="patient_state" id="patient_state_update_input" placeholder="patient_state">
                        </div>
                    </div>

                    <%--                    <div class="form-group">--%>
                    <%--                        <label  class="col-sm-2 control-label">create_datetime</label>--%>
                    <%--                        <div class="col-sm-10">--%>
                    <%--                            <input type="date" class="form-control" name="create_datetime" id="create_datetime_add_input" placeholder="create_datetime">--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>


                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

                <%--                //点击保存按钮发送ajax请求--%>
                <button type="button" class="btn btn-primary" id="patient_update_btn">更新</button>
            </div>

        </div>
    </div>
</div>
<%--*****************************************--%>


<%--**************病例添加模态框****************--%>

<!-- Modal -->
<div class="modal fade" id="patientAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">添加病例信息</h4>
            </div>
            <div class="modal-body">

<%--                水平排列的表单--%>
                <form class="form-horizontal">

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">id</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="id" id="id_add_input" placeholder="id">
                        </div>
                    </div>


                    <div class="form-group">
                        <label  class="col-sm-2 control-label">country</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="country" id="country_add_input" placeholder="country">
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">country_num</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="country_num" id="country_num_add_input" placeholder="country_num">
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">province</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="province" id="province_add_input" placeholder="province">
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">patient_name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="patient_name"  id="patient_name_add_input" placeholder="patient_name">
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">patient_type</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="patient_type" id="patient_type_add_input" placeholder="patient_type">
                        </div>
                    </div>

                    <div class="form-group">
                        <label  class="col-sm-2 control-label">patient_state</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="patient_state" id="patient_state_add_input" placeholder="patient_state">
                        </div>
                    </div>

<%--                    <div class="form-group">--%>
<%--                        <label  class="col-sm-2 control-label">create_datetime</label>--%>
<%--                        <div class="col-sm-10">--%>
<%--                            <input type="date" class="form-control" name="create_datetime" id="create_datetime_add_input" placeholder="create_datetime">--%>
<%--                        </div>--%>
<%--                    </div>--%>


                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

<%--                //点击保存按钮发送ajax请求--%>
                <button type="button" class="btn btn-primary" id="patient_save_btn">保存</button>
            </div>

        </div>
    </div>
</div>
<%--*****************************************--%>



<%--    搭建显示页面--%>
<div class="container" >
    <%--        标题行--%>
    <div class="row">
        <div class="col-lg-6">
            <h1>CRUD</h1>
        </div>
    </div>
    <%--    按钮--%>
    <div class="row">
        <div class="col-md-4 col-md-offset-8">
            <button class="btn btn-primary" id="addpatient" data-toggle="modal" data-target="#patientAddModal">新增</button>
            <button class="btn btn-danger" id="patient_delete_all">删除</button>
        </div>

    </div>
    <%--    显示表格数据--%>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover" id="patients_table">
                <thead>
                <tr>
                    <th>
                        <input type="checkbox" id="check_all">
                    </th>
                    <th>#</th>
                    <th>国家</th>
                    <th>所在省份</th>
                    <th>姓名</th>
                    <th>登记时间</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>

                </tbody>

            </table>
        </div>
    </div>
    <%--    显示分页信息--%>
    <div class="row">
        <%--            分页文字信息--%>
        <div class="col-md-6" id="page_info_area">


        </div>
        <%--            分页条信息--%>
        <div class="col-md-6" id="page_nav_area">


        </div>

    </div>

</div>

</div>

<script type="text/javascript">
    // 1.页面加载完成后,直接去发送ajax请求,要到分页数据
    $(function (){
        //去首页
        to_page(1);
    });
    function  to_page(pn){
        $.ajax({
            url:"${APP_PATH}/getPatientsWithJson",
            data:"pn="+pn,
            type:"GET",
            success:function (result){
                // console.log(result);
                //1.解析并显示病人数据
                build_patient_table(result);
                //2.解析并显示分页信息
                build_page_info(result);
                //3.解析显示分页条
                build_oage_nav(result);
            }
        });

    }
    function  build_patient_table(result){
        //清空table表格
        $("#patients_table tbody").empty();
        //1.得到所有的病例数据
        var patient=result.extend.pageInfo.list;
    //2.用$.each遍历数据，传入数据patient，遍历的回调函数function(index,item){}
                                    //  index代表索引，item代表当前的对象
        $.each(patient,function (index,item){
            var checkBoxTd =$("<td><input type='checkbox' class='check_item' /></td>");
            //3.创建<td>元素：$("<td></td>")  给<td>元素添加 当前对象的值$("<td></td>").append(item.***)
            var id=$("<td></td>").append(item.id);
            var country=$("<td></td>").append(item.country);
            var province=$("<td></td>").append(item.province);
            var patient_name=$("<td></td>").append(item.patient_name);
            var create_datetime=$("<td></td>").append(item.create_datetime);
            //编辑按钮                                 edit_btn 和 detele_btn 做标记
            var editBtn=$("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                    .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
            //删除按钮
            var delBtn=$("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                    .append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");

            //为删除按钮添加一个自定义的属性来表示删除员工的id
            delBtn.attr("del-id",item.id);
            var btnTd=$("<td></td>").append(editBtn).append(" ").append(delBtn);
            //4. 执行append 方法，将<td>元素的值添加给<tr>  执行完成后还是返回原来的元素
            $("<tr></tr>")
                .append(checkBoxTd)
                .append(id)
                .append(country)
                .append(province)
                .append(patient_name)
                .append(create_datetime)
                .append(btnTd)
                //5.将<tr>添加到表格体中
                .appendTo("#patients_table tbody");
        });
    }

    //解释显示分页信息,点击分页要能去下一页。。。
    function  build_page_info(result){

        $("#page_info_area").empty();

        $("#page_info_area").append("当前"+result.extend.pageInfo.pageNum+" 页,总"+
            result.extend.pageInfo.pages+"页,总"+
            result.extend.pageInfo.total+"条记录");

    }

    //解析显示分页条
    function  build_oage_nav(result){
    //    page_nav_area
        $("#page_nav_area").empty();

        var ul=$("<ul></ul>").addClass("pagination");
   //1.构建元素
       // 构建首页元素    给超链接赋值用.attr("href","地址")，"#"是为了不让它点击跳转
       var firstPageLi=$("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
       //构建上一页元素
       var prePageLi=$("<li></li>").append($("<a></a>").append("&laquo;"));
        //pageInfo.hasPreviousPage是否有前一页
        if(result.extend.pageInfo.hasPreviousPage==false){
            firstPageLi.addClass("disabled");
            prePageLi.addClass("disabled");
        }else {
            //为元素添加点击翻页的时间
            firstPageLi.click(function (){
                to_page(1);
            });
            prePageLi.click(function (){
                to_page(result.extend.pageInfo.pageNum-1);
            });
        }
        //构建下一页元素
        var nextPageLi=$("<li></li>").append($("<a></a>").append("&raquo;"));
        // 构建最后一页元素
       var lastPageLi=$("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
        //pageInfo.hasNextPage 是否有下一页
        if(result.extend.pageInfo.hasNextPage==false){
            nextPageLi.addClass("disabled");
            lastPageLi.addClass("disabled");
        }else {
            nextPageLi.click(function (){
                to_page(result.extend.pageInfo.pageNum+1);
            });
            lastPageLi.click(function (){
                to_page(result.extend.pageInfo.pages);
            });
        }
               //添加首页和前一页的提示
       ul.append(firstPageLi).append(prePageLi);
    //2.遍历给ul中添加页码提示  pageInfo的数组属性 navigatepageNums 导航页码数
       $.each(result.extend.pageInfo.navigatepageNums,function (index,item){
            var numLi=$("<li></li>").append($("<a></a>").append(item));

           if(result.extend.pageInfo.pageNum==item){
               numLi.addClass("active");
           }
           numLi.click(function (){
               to_page(item);
           });
            ul.append(numLi);
       });
       //添加下一页和末页的提示
       ul.append(nextPageLi).append(lastPageLi);
       //把ul加入到nav
       var navEle=$("<nav></nav>").append(ul);
       //将nav添加到
       navEle.appendTo("#page_nav_area");
    }



    /****************添加******************/

    //点击新增按钮弹出模态框。

    $("#addpatient").click(function (){
        //
        //弹出模态框
          $("#patientAddModal").modal({

              backdrop:"static"
          });
    });


    $("#patient_save_btn").click(function (){
        //1.模态框中填写的表单数据提交给服务器进行保存

        //2.发送ajax请求保存员工

        $.ajax({
            url: "${APP_PATH}/patient",
            type:"POST",
            //Jquery 中 serialize() 序列化表格内容为字符串，字符串用于Ajax请求
            data: $("#patientAddModal form").serialize(),
            success:function (){
                // //员工保存成功
                // //1.关闭模态框
                // $("#patientAddModal ").modal('hide');
            }
        });
    });

    //1.按钮创建之前就绑定了click，所以会造成绑定不成功
    //1)、可以在创建按钮的时候绑定。2）绑定点击 .live()
    //jquery新版没有live，使用on进行替代
    // $(document).on("click",".edit_btn",function (){
    //     // alert("").
    //     //0、查出员工信息，显示员工信息
    //     //1、查出部门信息，并显示部门列表
    //     //弹出模态框
    //     $("#patientUpdateModal").modal({
    //
    //         backdrop:"static"
    //     });
    //
    // });

//    单个删除
    $(document).on("click",".delete_btn",function (){
        //1.弹出是否确认删除对话框
        var patientName=$(this).parents("tr").find("td:eq(4)").text();

       var patientId= $(this).attr("del-id");
        // alert($(this).parents("tr").find("td:eq(3)").text());
        if(confirm("确认删除【"+patientName+"】?")){
            //确认，发送ajax请求删除即可
            $.ajax({
                //这里先去写上面删除按钮的地方
                url:"${APP_PATH}/patient/"+patientId,
                type: "DELETE",
                success:function (result){
                    alert(result.msg);
                //    回到本页
                    to_page(currentPage);
                }
            });

        }

    });
    //完成全选/全部选功能
    $("#check_all").click(function (){
        //attr获取checked是undefined;
        //我们这些dom原生属性；attr获取自定义属性的值
        //使用prop修改和读取dom原生属性的值
        // $(this).prop("checked");
        $(".check_item").prop("checked", $(this).prop("checked"));
        $(document).on("click",".check_item",function (){
            //判断当前选择中的元素是否5个
           var flag= $(".check_item:checked").length==$(".check_item").length;
            $("#check_all").prop("checked",flag);
        });
    });


//点击全部删除
//     $("#patient_delete_all").click(function (){
//
//         var patientName="";
//        $.each($(".check_item:checked"),function (){
//            // this
//
//            patientName += $(this).parents("tr").find("td:eq(4)").text()+",";
//
//        }) ;
//        //去除patientName的多余的逗号
//         patientName= patientName.substring(0,patientName.length-1);
//        if(confirm("确认删除【"+patientName+"】?")){
//            //发送Ajax请求
//
//        }
//     });

</script>
<script type="text/javascript" src="js/index_js.js"></script>

</body>
</html>

