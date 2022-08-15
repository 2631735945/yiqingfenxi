package com.qianfeng.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class patient {
    private int id;
    private String country;
    private int country_num;
    private String province;
    private String patient_name;
    private String patient_type;
    private String patient_state;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date create_datetime;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date suretime;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date hardtime;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date curetime;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date dietime;


    public int getCountry_num() {
        return country_num;
    }

    public void setCountry_num(int country_num) {
        this.country_num = country_num;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getPatient_name() {
        return patient_name;
    }

    public void setPatient_name(String patient_name) {
        this.patient_name = patient_name;
    }

    public String getPatient_type() {
        return patient_type;
    }

    public void setPatient_type(String patient_type) {
        this.patient_type = patient_type;
    }

    public String getPatient_state() {
        return patient_state;
    }

    public void setPatient_state(String patient_state) {
        this.patient_state = patient_state;
    }

    public Date getCreate_datetime() {
        return create_datetime;
    }

    public void setCreate_datetime(Date create_datetime) {
        this.create_datetime = create_datetime;
    }

    public Date getSuretime() {
        return suretime;
    }

    public void setSuretime(Date suretime) {
        this.suretime = suretime;
    }

    public Date getHardtime() {
        return hardtime;
    }

    public void setHardtime(Date hardtime) {
        this.hardtime = hardtime;
    }

    public Date getCuretime() {
        return curetime;
    }

    public void setCuretime(Date curetime) {
        this.curetime = curetime;
    }

    public Date getDietime() {
        return dietime;
    }

    public void setDietime(Date dietime) {
        this.dietime = dietime;
    }

    @Override
    public String toString() {
        return "patient{" +
                "id=" + id +
                ", country='" + country + '\'' +
                ", province='" + province + '\'' +
                ", patient_name='" + patient_name + '\'' +
                ", patient_type='" + patient_type + '\'' +
                ", patient_state='" + patient_state + '\'' +
                ", create_datetime=" + create_datetime +
                ", suretime=" + suretime +
                ", hardtime=" + hardtime +
                ", curetime=" + curetime +
                ", dietime=" + dietime +
                '}';
    }
}
