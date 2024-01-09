package io.loopcamp.jdbctest.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class p04_ListOfMap {
    // instants variables
    String dbUrl ="jdbc:oracle:thin:@54.210.117.54:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void test(){
        Map<String , Object> row1MapExpected = new HashMap<>();
        row1MapExpected.put("FIRST_NAME","Steven");
        row1MapExpected.put("LAST_NAME","King");
        row1MapExpected.put("SALARY",24000);
        System.out.println(row1MapExpected);

        Map<String , Object> row2MapExpected = new HashMap<>();
        row2MapExpected.put("FIRST_NAME","Nina");
        row2MapExpected.put("LAST_NAME","Moon");
        row2MapExpected.put("SALARY",14000);
        System.out.println(row2MapExpected);


        List<Map<String , Object>> list = new ArrayList<>();
        list.add(row2MapExpected);
        list.add(row1MapExpected);
        System.out.println(list);

    }
    @Test
    public void  test2 () throws SQLException {
        Connection connection = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);

        // from java.sql , to execute Query
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        // SAVE RESUL INTO resultSet
        ResultSet resultSet = statement.executeQuery("SELECT * FROM EMPLOYEES");
         ResultSetMetaData rsmd = resultSet.getMetaData();
         resultSet.next();


         Map<String , Object> rowActual = new HashMap<>();
         rowActual.put(rsmd.getColumnName(2),resultSet.getString(rsmd.getColumnName(2)));
         rowActual.put(rsmd.getColumnName(3),resultSet.getString(rsmd.getColumnName(3)));
         rowActual.put(rsmd.getColumnName(8),resultSet.getString("SALARY"));
        System.out.println(rowActual);


        resultSet.close();
        statement.close();
        connection.close();





    }



}
