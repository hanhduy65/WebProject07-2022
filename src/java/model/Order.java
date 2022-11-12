/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author hanh
 */
public class Order {
    private int id;
    private Date date;
    private int cusid;
    private long totalmoney;

    public Order() {
    }

    public Order(int id, Date date, int cusid, long totalmoney) {
        this.id = id;
        this.date = date;
        this.cusid = cusid;
        this.totalmoney = totalmoney;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getCusid() {
        return cusid;
    }

    public void setCusid(int cusid) {
        this.cusid = cusid;
    }

    public long getTotalmoney() {
        return totalmoney;
    }

    public void setTotalmoney(long totalmoney) {
        this.totalmoney = totalmoney;
    }
    
    
}
