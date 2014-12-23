/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Paquete;

import com.mysql.jdbc.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author (°_°)
 */
public class carga_lista {
    private ArrayList<Lista> lista=new ArrayList<Lista>();
    
    public ArrayList<Lista> carga() throws SQLException{
        COnexion con=new COnexion();
        Lista tup=new Lista();
        String sql="select * from INFO1";
        try{
            PreparedStatement ps=(PreparedStatement)con.cone().prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            tup=new Lista(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
            lista.add(tup);
        }catch(Exception e){
            System.out.println("ERROR: "+e);
        }
        return lista;
        
    }
    
    
    
    
}
