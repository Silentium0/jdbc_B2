package io.loopcamp.jdbctest.day01;

import java.sql.*;


public class p01_TestOracleConnection {
    public static void main(String[] args) throws SQLException {
        //CONNECTION STRING - to make connection
        String dbUrl ="jdbc:oracle:thin:@54.210.117.54:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";
        // from java.aql package
        // CONNECTION TO DATABASE
        Connection connection = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);

        // from java.sql , to execute Query
        Statement statement = connection.createStatement();
        // SAVE RESUL INTO resultSet
        ResultSet resultSet = statement.executeQuery("SELECT * FROM REGIONS");
        resultSet.next();
        // 1st row
        System.out.println(resultSet.getString("REGION_ID"));
        System.out.println(resultSet.getInt("REGION_ID"));
        // same  1st row
        String regionName = resultSet.getString("REGION_NAME");
        System.out.println(regionName);

        // Second row
        resultSet.next();
        System.out.println(resultSet.getString("REGION_NAME"));
        System.out.println(resultSet.getString(2));
        // so after 2nd row loop will check the rest row
        while (resultSet.next()){
            System.out.println("EACH REGION ID "+resultSet.getInt(1));
            System.out.println("EACH REGION NAME "+ resultSet.getString(2));
        }

//        resultSet.first();
//        System.out.println(resultSet.getString("REGION_NAME"));


    }


}
