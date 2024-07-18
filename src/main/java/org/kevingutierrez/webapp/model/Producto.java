/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.kevingutierrez.webapp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Table(name = "Productos")
@Entity
/**
 *
 * @author informatica
 */
public class Producto {
     @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productoId;
    private String nombreProducto;
    private String descripcionProducto;
    private String marcaProducto;
    @Column(name = "precio")
    private double precioProducto;
    
    public Producto(){
    
    }

    public Producto(String nombreProducto, String descripcionProducto, String marcaProducto, double precioProducto) {
        this.nombreProducto = nombreProducto;
        this.descripcionProducto = descripcionProducto;
        this.marcaProducto = marcaProducto;
        this.precioProducto = precioProducto;
    }
    
    public Producto(int productoId, String nombreProducto, String descripcionProducto, String marcaProducto, double precioProducto) {
        this.productoId = productoId;
        this.nombreProducto = nombreProducto;
        this.descripcionProducto = descripcionProducto;
        this.marcaProducto = marcaProducto;
        this.precioProducto = precioProducto;
    }

    public int getProductoId() {
        return productoId;
    }

    public void setProductoId(int productoId) {
        this.productoId = productoId;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public String getDescripcionProducto() {
        return descripcionProducto;
    }

    public void setDescripcionProducto(String descripcionProducto) {
        this.descripcionProducto = descripcionProducto;
    }

    public String getMarcaProducto() {
        return marcaProducto;
    }

    public void setMarcaProducto(String marcaProducto) {
        this.marcaProducto = marcaProducto;
    }

    public double getPrecioProducto() {
        return precioProducto;
    }

    public void setPrecioProducto(double precioProducto) {
        this.precioProducto = precioProducto;
    }

    @Override
    public String toString() {
        return "Producto{" + "productoId=" + productoId + ", nombreProducto=" + nombreProducto + ", descripcionProducto=" + descripcionProducto + ", marcaProducto=" + marcaProducto + ", precioProducto=" + precioProducto + '}';
    }
}
