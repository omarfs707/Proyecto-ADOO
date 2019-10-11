/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package delitos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Vreker
 */
public class Conexion {
    public String db = "delitos";
    public String url = "jdbc:mysql://localhost:3306/" +db;
    public String user = "root";
    public String pass = "02237";
   
     public Connection Conectar()
    {
        Connection link = null;
        try
        {
           link = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?serverTimezone=UTC&SSL=false", user, pass);
        }
        catch (Exception e)
        {
            JOptionPane.showMessageDialog(null, e);
        }
        return link;  
}
     
     public static ResultSet getTabla(String Consulta){
        Conexion mysql = new Conexion();
        Connection cn = mysql.Conectar();
        
        Statement st;
        ResultSet datos=null;
        try{
            st=cn.createStatement();
            datos=st.executeQuery(Consulta);            
        }
        catch(Exception e){ System.out.print(e.toString());}
        return datos;
    }    
     
}
