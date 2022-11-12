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
public class Product {
//    IDSanPham int IDENTITY (1, 1) primary key,
//	Ten nvarchar (max) NOT NULL ,
//	IDLoaiSP "int" foreign key references LoaiSanPham(IDLoaiSP), 
//	SoLuong "smallint" NOT NULL,
//	DonViTinh nvarchar (max),
//	Gia money not null CHECK (Gia >= 0), 
//	Anh varchar(max),
//	NgayMoBan date CHECK (NgayMoBan <= getdate()),
//	MieuTa nvarchar(max
    private int id;
    private String name;
    private String title;
    private long price;
    private int quantity;
    private String unit;
    private String image;
    private Date releaseDate;
    private String desc;
    private int idlsp;

    public Product() {
    }

    public Product(int id, String name, String title, long price, int quantity, String unit, String image, Date releaseDate, String desc, int idlsp) {
        this.id = id;
        this.name = name;
        this.title = title;
        this.price = price;
        this.quantity = quantity;
        this.unit = unit;
        this.image = image;
        this.releaseDate = releaseDate;
        this.desc = desc;
        this.idlsp = idlsp;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getIdlsp() {
        return idlsp;
    }

    public void setIdlsp(int idlsp) {
        this.idlsp = idlsp;
    }

    
    
}
