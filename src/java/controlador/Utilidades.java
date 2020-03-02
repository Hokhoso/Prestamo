/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.util.ArrayList;

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
}
