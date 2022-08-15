package com.qianfeng.service;


import com.qianfeng.pojo.HistogramValue;
import com.qianfeng.pojo.MapValue;
import com.qianfeng.pojo.ResNum;
import com.qianfeng.pojo.patient;

import java.util.List;

/*
* 处理数据的地方
* */
public interface PatientService {

/***********************全国范围******************/
    /**
     * 现有确诊
     * */
    ResNum queryCount();

    /**
     * 查询无症状患者人数的数字
     * 现有无症状
     * */
    ResNum queryCount2();


    /**
     * 查询本土患者人数的数字
     * 现有本土
     * */
    ResNum queryCount3();

    /**
     * 查询境外患者人数的数字
     * 现有境外
     * */
    ResNum queryCount4();

    /**
     *
     * 累计确诊
     * */
    ResNum queryCount5();

    /**
     *
     * 累计境外
     * */
    ResNum queryCount6();

    /**
     *
     * 累计治愈
     * */
    ResNum queryCount7();

    /**
     *
     * 累计死亡
     * */
    ResNum queryCount8();


    /**
     * 获取多条地图数据
     * 现有确诊的
     * */
    List<MapValue> queryMapResNow();

    /**
     * 获取多条地图数据
     * 累积确诊的
     * */
    List<MapValue> queryMapResALL();

    List<HistogramValue> queryHistogramRes();



    /***********************安徽省******************/
    /**
     * 现有确诊
     * */
    ResNum queryCount9();

    /**
     * 查询无症状患者人数的数字
     * 现有无症状
     * */
    ResNum queryCount10();


    /**
     * 查询本土患者人数的数字
     * 现有本土
     * */
    ResNum queryCount11();

    /**
     * 查询境外患者人数的数字
     * 现有境外
     * */
    ResNum queryCount12();

    /**
     *
     * 累计确诊
     * */
    ResNum queryCount13();

    /**
     *
     * 累计境外
     * */
    ResNum queryCount14();

    /**
     *
     * 累计治愈
     * */
    ResNum queryCount15();

    /**
     *
     * 累计死亡
     * */
    ResNum queryCount16();


    /**********CURD**********/
    List<patient> queryPatientsAll();

//    员工保存
    int savePatient(patient patient);

    int deletePatientByid(int id);
}
