/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package org.kevingutierrez.webapp.service;

import java.util.List;
import org.kevingutierrez.webapp.model.Producto;
/**
 *
 * @author informatica
 */
public interface IProductoService {
     public List<Producto> listarProductos();
    
    public void agregarProducto(Producto producto);
    
    public void eliminarProducto(int productoId);
    
    public Producto buscarProducto(int productoId);
    
    public void editarProducto(Producto producto);
}
