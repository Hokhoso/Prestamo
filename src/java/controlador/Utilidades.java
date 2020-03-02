/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.util.ArrayList;
import modelo.Cuota;

/**
 *
 * @author USUARIO1
 */
public class Utilidades {
    public static ArrayList<String> getMeses(){
        ArrayList<String> meses = new ArrayList();
        int pointer = 12;
        for (int i = 0; i<15; i++){
            meses.add(pointer+"");
            pointer = pointer + 12;
        }
        return meses;
    }
    
    public static ArrayList<Cuota> generaListaCuotas ( int meses, double total) {
        ArrayList<Cuota> cuotas = new ArrayList<Cuota>();
        for ( int i=1; i<=meses; i++) {
            Cuota cuota = new Cuota(
                    i,//numero de cuota
                    total/meses,//total de la cuota
                    total/meses - (total/meses - (total/meses * ( i - 1) / meses)),//capital
                    total/meses - (total/meses * ( i - 1) / meses)//interes
            );
            cuotas.add(cuota);
        }
        return cuotas;
    }
}
