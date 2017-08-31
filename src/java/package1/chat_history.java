/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package package1;

import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Anuswee
 */
public class chat_history {
   public void create_table()
    { System.out.println("helloooo");
       try
       {  
        Statement stm=Conn.con.createStatement();
          ResultSet rs=stm.executeQuery("create table demo1(query varchar(255)");
          
        
    }
       catch(Exception e)
       {
           System.out.println("Chat_history error");
           e.printStackTrace();
       }
    }
  public  void print_chat(String chat)
     {   
            
     }
}
