
package Test;

import com.nfs.model.NfsConnection;
import java.sql.Connection;//to test connection

public class Test {
    
    public static void main(String[] args) {
        
       try
       {
           Connection con = NfsConnection.connect();
           if(con != null)
           {
               System.out.println("Connection ok");
           }
       }//try ends
       catch(Exception ex)
        {
            System.out.println("DB Error"+ex);        
        }//catch ends
    
}
}
