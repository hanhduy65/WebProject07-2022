/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import dal.DAO;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hanh
 */
public class Cart {

    private List<Item> item;

    public Cart() {
         item = new ArrayList<>();
    }

    public List<Item> getItem() {
        return item;
    }

    public int getQuantityById(int id) {
        return getItemById(id).getQuantity();
    }

    private Item getItemById(int id) {
        for (Item i : item) {
            if (i.getProduct().getId() == id) {
                return i;
            }
        }
        return null;
    }

    public void addItem(Item t) {
        if (getItemById(t.getProduct().getId()) != null) {
            Item m = getItemById(t.getProduct().getId());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            item.add(t);
        }
    }

    public void removeItem(int id) {
        if (getItemById(id) != null) {
            item.remove(getItemById(id));
        }
    }

    public long getTotalMoney() {
        long t = 0;
        for (Item i : item) {
            t+=(i.getQuantity()*i.getPrice());
        }
        return t;
    }
    
    private Product getProductById(int id, List<Product> list) {
        for (Product i : list) {
            if (i.getId() == id) {
                return i;
            }
           
        }
        return null;
    }
    
    public Cart(String txt, List<Product> list) {
        item = new ArrayList<>();
        try {
        if (txt != null && txt.length() != 0) {
            String[] s = txt.split("/");
            for (String i : s) {
                String[] n=i.split(":");
                int id = Integer.parseInt(n[0]);
                int quantity = Integer.parseInt(n[1]);
                Product p = getProductById(id, list);
                Item t  = new Item(p, quantity, p.getPrice() *2);
                addItem(t);
            }
        }
        }catch (NumberFormatException e) {
            
        }
    }
    
    public static void main(String[] args) {
        DAO d = new DAO();
        
        List<Product> list = d.getAllProduct();
        System.out.println();
        Cart cart = new Cart("6:1/5:1", list);
        System.out.println(cart.getItem().size());
        
    }
    
}
