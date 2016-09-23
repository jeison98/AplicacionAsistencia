/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacionprofesores;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;

/**
 *
 * @author familia velasco
 */
public class ConexionSQL {
    Connection co;
    
    public  ConexionSQL()
    {
       
    }

    public Connection getCo() {
        
        Statement stm;
        try 
        {   
            String[] datosn=new String[70];
            Class.forName("com.mysql.jdbc.Driver");
            Connection co = DriverManager.getConnection("jdbc:mysql://localHost/gestiondefallas?user=root&password=1234");
            System.out.println("conectado");
            stm=co.createStatement();
            System.out.println("conectado 1");
            ResultSet rs=stm.executeQuery("select * from Profesores");
            System.out.println("conectado 2");
            int c=0;
            while (rs.next())
            {   
               
                System.out.println(rs.getString("nombres"));
                
            }
            

        }

        catch (Exception e)
        {
        System.out.println(e.getMessage());
        JOptionPane.showMessageDialog(null,"no conectado");
        }
        return co;
        
    }

    public void setCo(Connection co) {
        this.co = co;
    }

    public void goku(String sql) throws SQLException
    {
           
            String[] datos=new String[70];    
           /*
           
            System.out.println(rs.next());
            int contador=0;
           while(rs.next())
            {   
                datos[contador]=rs.getString(contador+1);
                System.out.println(datos[contador]);
                contador+=1;
                
            }*/
    }
    public JTable tabla (String[] d)
    {   
        JTable x=new JTable();
        
        
        
        return x;
    }
    
}
