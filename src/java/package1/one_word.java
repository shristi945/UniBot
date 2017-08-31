/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package package1;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Anuswee
 */
public class one_word 
{
    int input_length; //length of th input array
    String response; // selected answer
    public int flag=0;
    String small_talk(String input)
    {
        
    
     try 
       {    input_length=input.length();
             
           
           
            Statement stm1=Conn.con.createStatement(); 
             String squery="select answer from chatterbot.small_talk where question='"+input+"'";
             ResultSet rs1=stm1.executeQuery(squery);
             if(rs1.next())
             { 
                  response=rs1.getString(1);
                  
             }
           else
                 response="false";//it will check whether we get the answer here or we have to go to the main table.
         
   
       }
    catch(Exception e)
    {System.out.println("one_word class error");
      e.printStackTrace();
     }
    return response;
}  
}

