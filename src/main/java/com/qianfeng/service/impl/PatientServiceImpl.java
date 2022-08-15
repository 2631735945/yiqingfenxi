package com.qianfeng.service.impl;

import com.qianfeng.dao.PatientDao;
import com.qianfeng.pojo.HistogramValue;
import com.qianfeng.pojo.MapValue;
import com.qianfeng.pojo.ResNum;
import com.qianfeng.pojo.patient;
import com.qianfeng.service.PatientService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/*
* 存放我们的逻辑代码
* */
@Service
public class PatientServiceImpl  implements PatientService {

    /*
    * 获取数据的工具
    * */
    @Resource
    PatientDao patientDao;


    @Override
    public ResNum queryCount() {
        return patientDao.queryCount();
    }

    @Override
    public ResNum queryCount2() {
        return patientDao.queryCount2();
    }

    @Override
    public ResNum queryCount3() {
        return patientDao.queryCount3();
    }

    @Override
    public ResNum queryCount4() {
        return patientDao.queryCount4();
    }

    @Override
    public ResNum queryCount5() {
        return patientDao.queryCount5();
    }

    @Override
    public ResNum queryCount6() {
        return patientDao.queryCount6();
    }

    @Override
    public ResNum queryCount7() {
        return patientDao.queryCount7();
    }

    @Override
    public ResNum queryCount8() {
        return patientDao.queryCount8();
    }

    @Override
    public List<MapValue> queryMapResNow() {
        return patientDao.queryMapResNow();
    }

    @Override
    public List<MapValue> queryMapResALL() {
        return patientDao.queryMapResALL();
    }


    @Override
    public List<HistogramValue> queryHistogramRes() {
        return patientDao.queryHistogramRes();
    }

    @Override
    public ResNum queryCount9() {
        return patientDao.queryCount9();
    }

    @Override
    public ResNum queryCount10() {
        return patientDao.queryCount10();
    }

    @Override
    public ResNum queryCount11() {
        return patientDao.queryCount11();
    }

    @Override
    public ResNum queryCount12() {
        return patientDao.queryCount12();
    }

    @Override
    public ResNum queryCount13() {
        return patientDao.queryCount13();
    }

    @Override
    public ResNum queryCount14() {
        return patientDao.queryCount14();
    }

    @Override
    public ResNum queryCount15() {
        return patientDao.queryCount15();
    }

    @Override
    public ResNum queryCount16() {
        return patientDao.queryCount16();
    }

    @Override
    public List<patient> queryPatientsAll() {
        return patientDao.queryPatientsAll();
    }

    @Override
    public int savePatient(patient patient) {

       return patientDao.insertPatient(patient);
    }

    @Override
    public int deletePatientByid(int id) {
        return patientDao.deletePatientByid(id);
    }


}
