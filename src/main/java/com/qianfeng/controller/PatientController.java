package com.qianfeng.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.qianfeng.pojo.*;
import com.qianfeng.service.PatientService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class PatientController {
//创建对象
    @Resource
    PatientService patientService;

    @RequestMapping("/getCount")
    @ResponseBody

    public String getCount(){
        ResNum resNum=patientService.queryCount();
        int num=resNum.getCountnum();
        return num+"";

    }

    @RequestMapping("/getCount2")
    @ResponseBody
    public String getCount2(){
        ResNum resNum=patientService.queryCount2();
        int num=resNum.getCountnum();
        return num+"";
    }

    @RequestMapping("/getCount3")
    @ResponseBody
    public  String getCount3(){
        ResNum resNum=patientService.queryCount3();
        int num=resNum.getCountnum();
        return num+"";
    }
    @RequestMapping("/getCount4")
    @ResponseBody
    public String getCount4(){
        ResNum resNum=patientService.queryCount4();
        int num=resNum.getCountnum();
        return num+"";
    }

    @RequestMapping("/getCount5")
    @ResponseBody
    public  String getCount5(){
        ResNum resNum=patientService.queryCount5();
        int num=resNum.getCountnum();
        return num+"";
    }
    @RequestMapping("/getCount6")
    @ResponseBody
    public String getCount6(){
        ResNum resNum=patientService.queryCount6();
        int num=resNum.getCountnum();
        return num+"";
    }

    @RequestMapping("/getCount7")
    @ResponseBody
    public  String getCount7(){
        ResNum resNum=patientService.queryCount7();
        int num=resNum.getCountnum();
        return num+"";
    }
    @RequestMapping("/getCount8")
    @ResponseBody
    public String getCount8(){
        ResNum resNum=patientService.queryCount8();
        int num=resNum.getCountnum();
        return num+"";
    }




    @ResponseBody
    @RequestMapping("/getmapDataNow")
    public List<MapValue> getmapDataNow(){
        List<MapValue> list=patientService.queryMapResNow();
        return list;
    }

    @RequestMapping("/getmapDataAll")
    @ResponseBody
    public List<MapValue> getmapDataAll(){
        List<MapValue> list=patientService.queryMapResALL();
        return list;
    }
    @ResponseBody
    @RequestMapping("/getHistogramData")
    public List<HistogramValue> getHistogramData(){
        List<HistogramValue> list1=patientService.queryHistogramRes();
        return list1;
    }



    @RequestMapping("/getCount9")
    @ResponseBody

    public String getCount9(){
        ResNum resNum=patientService.queryCount9();
        int num=resNum.getCountnum();
        return num+"";

    }

    @RequestMapping("/getCount10")
    @ResponseBody
    public String getCount10(){
        ResNum resNum=patientService.queryCount10();
        int num=resNum.getCountnum();
        return num+"";
    }

    @RequestMapping("/getCount11")
    @ResponseBody
    public  String getCount11(){
        ResNum resNum=patientService.queryCount11();
        int num=resNum.getCountnum();
        return num+"";
    }
    @RequestMapping("/getCount12")
    @ResponseBody
    public String getCount12(){
        ResNum resNum=patientService.queryCount12();
        int num=resNum.getCountnum();
        return num+"";
    }

    @RequestMapping("/getCount13")
    @ResponseBody
    public  String getCount13(){
        ResNum resNum=patientService.queryCount13();
        int num=resNum.getCountnum();
        return num+"";
    }
    @RequestMapping("/getCount14")
    @ResponseBody
    public String getCount14(){
        ResNum resNum=patientService.queryCount14();
        int num=resNum.getCountnum();
        return num+"";
    }

    @RequestMapping("/getCount15")
    @ResponseBody
    public  String getCount15(){
        ResNum resNum=patientService.queryCount15();
        int num=resNum.getCountnum();
        return num+"";
    }
    @RequestMapping("/getCount16")
    @ResponseBody
    public String getCount16(){
        ResNum resNum=patientService.queryCount16();
        int num=resNum.getCountnum();
        return num+"";
    }

//@RequestMapping("/queryPatientsAll")
//    public String queryPatientsAll(@RequestParam(value = "pn",defaultValue = "1")Integer pn, Model model){
//
//    //引入PageHelper分页插件
//    //在查询之前只需要调用,传入页码,以及每页的大小
//        PageHelper.startPage(pn,5);
//        List<patient> list=patientService.queryPatientsAll();
//    //使用pageinfo包装查询后的结果，只需要将pageInfo交给页面即可
//    //封装了详细的分页信息，包括查询出来的数据,传入连续显示的页数
//         PageInfo<patient> page=new PageInfo<patient>(list, 5);
//         model.addAttribute("pageInfo",page);
//        return "patientlist";
//    }
@RequestMapping("getPatientsWithJson1")
@ResponseBody
public PageInfo PatientsWithJson(@RequestParam(value = "pn",defaultValue = "1")Integer pn){

    //引入PageHelper分页插件
    //在查询之前只需要调用,传入页码,以及每页的大小
    PageHelper.startPage(pn,5);
    List<patient> list=patientService.queryPatientsAll();
    //使用pageinfo包装查询后的结果，只需要将pageInfo交给页面即可
    //封装了详细的分页信息，包括查询出来的数据,传入连续显示的页数
    PageInfo<patient> page=new PageInfo<patient>(list, 5);
    return page;
}

    @RequestMapping("getPatientsWithJson")
    @ResponseBody
    public Msg getPatientsWithJson(@RequestParam(value = "pn",defaultValue = "1")Integer pn){

        //引入PageHelper分页插件
        //在查询之前只需要调用,传入页码,以及每页的大小
        PageHelper.startPage(pn,5);
        List<patient> list=patientService.queryPatientsAll();
        //使用pageinfo包装查询后的结果，只需要将pageInfo交给页面即可
        //封装了详细的分页信息，包括查询出来的数据,传入连续显示的页数
        PageInfo<patient> page=new PageInfo<patient>(list, 5);
        return Msg.success().add("pageInfo",page);
    }



    //添加病例，病例数据保存方法
//    URI
//    员工保存

    @RequestMapping(value = "/patient",method = RequestMethod.POST)
//    @RequestMapping( "/addpatient")
    @ResponseBody
    public Msg savePatient(patient patient){
        patientService.savePatient(patient);
        return Msg.success();
    }

//    删除病例
    @RequestMapping(value = "/patient/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deletePatientById(@PathVariable("id") int id){
        patientService.deletePatientByid(id);
        return Msg.success() ;
    }

}


