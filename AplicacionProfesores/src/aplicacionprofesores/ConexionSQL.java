/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aplicacionprofesores;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author familia velasco
 */
public class ConexionSQL {
    Connection co;
    Statement stm;
    
    public ConexionSQL(){
    try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection co = DriverManager.getConnection("jdvc:mysql");
    Statement stm = co.createStatement();
    }
    
    catch (ClassNotFoundException exc) {
    exc.printStackTrace();
    }
    catch (SQLException ex){
    Logger.getLogger(ConexionSQL.class.getName()).log(Level.SEVERE,null,ex);
    }
    
    }
}
