package io.loopcamp.jdbctest.day02;

import io.loopcamp.utility.DB_Utility;
import org.junit.Assert;
import org.junit.Test;


public class P01_Docuport_DB_Test {
    // connectons Strings
    String url = "jdbc:postgresql://34.135.178.209:5432/postgres";
    String username = "tstadmin";
    String password = "hoxBam-jaghuj-7cette";


    @Test
    public void test01(){
        DB_Utility.createConnection(url,username,password);
        DB_Utility.runQuery("SELECT * FROM document.users WHERE role_name = 'advisor'");
        String expectednumber = DB_Utility.getRowCount()+"";
        String actualNumber = "7";
        Assert.assertEquals(expectednumber,actualNumber);






    }

}
