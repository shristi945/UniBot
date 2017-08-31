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
public class feedback 
{  String response;
     public feedback()
     {
         
     }
    
    public feedback(String query,String answer)
    {    try
     {
             Statement stm1=Conn.con.createStatement();
            String squery=" INSERT INTO chatterbot.feedback (question, answer) VALUES ('"+query+"', '"+answer+" ')"; 
	
             //String squery="insert into chatterbot.feedback values('"+query+"','"+answer+"')";
             // String squery="insert into chatterbot.feedback values('hello','hhhh')";
             int i=stm1.executeUpdate(squery);
             String squery1="insert into chatterbot.temp values('"+query+"','"+answer+"')";
             
             int j=stm1.executeUpdate(squery1);
             
      }
    
    catch(Exception e)
    {
       System.out.println("error in feedback class");
       e.printStackTrace();
    }
}
    public void clear_table()
    { 
        try
        {
          Statement stm1=Conn.con.createStatement(); 
             String squery2="truncate table chatterbot.temp";
             int i=stm1.executeUpdate(squery2);
             
        
        }
        catch(Exception e)
        {
            System.out.println("error in delete temp class");
             e.printStackTrace();
        }
    }
    public String get_response(String input)
    {       try
       {
        Statement stm1=Conn.con.createStatement();
    
             String squery="select answer from chatterbot.temp where question='"+input+"'";
             ResultSet rs1=stm1.executeQuery(squery);
             if(rs1.next())
             { 
                  response=rs1.getString(1);
                  
             }
           else
                 response="false";
       }
    catch(Exception e)
    {
        System.out.println("Exception in feedback class");
        e.printStackTrace();
    }
        return response;
    }
}

