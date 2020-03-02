/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author USUARIO1
 */
public class Cuota {
   public int num_cuota;
   public double total;
   public double capital;
   public double interes;

    public Cuota(int num_cuota, double total, double capital, double interes) {
        this.num_cuota = num_cuota;
        this.total = total;
        this.capital = capital;
        this.interes = interes;
    }

    public int getNum_cuota() {
        return num_cuota;
    }

    public void setNum_cuota(int num_cuota) {
        this.num_cuota = num_cuota;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public double getCapital() {
        return capital;
    }

    public void setCapital(double capital) {
        this.capital = capital;
    }

    public double getInteres() {
        return interes;
    }

    public void setInteres(double interes) {
        this.interes = interes;
    }

    
}
