package io.loopcamp.jdbctest.day01;

import java.sql.*;

public class p02_FlexibleNavigation {

    public static void main(String[] args) throws SQLException {
        //CONNECTION STRING - to make connection
        String dbUrl ="jdbc:oracle:thin:@54.210.117.54:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";
        // from java.aql package
        // CONNECTION TO DATABASE
        Connection connection = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);

        // from java.sql , to execute Query
        Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        // SAVE RESUL INTO resultSet
        ResultSet resultSet = statement.executeQuery("SELECT * FROM EMPLOYEES");

        resultSet.next();
        System.out.println("First Name: "+resultSet.getString("FIRST_NAME"));
        System.out.println("Phone Number: "+resultSet.getString(5)); // here we provide Row number

        while (resultSet.next()){
            System.out.print("First Name: "+resultSet.getString("FIRST_NAME"));
            System.out.println(": Salary: "+ resultSet.getDouble("SALARY")); // WILL GIVE ALL SALARY

        }

        System.out.println();
        resultSet.first();
        System.out.println("First Name: "+resultSet.getString("FIRST_NAME"));
        System.out.println();
        System.out.println("Info from row 9");
        resultSet.absolute(9);
        System.out.println("\tLast name : "+resultSet.getString("LAST_NAME"));
        System.out.println("\tfirst name: "+resultSet.getString("FIRST_NAME"));
        System.out.println("\tsalary : "+resultSet.getString("SALARY"));

        System.out.println("Info from row 23");
        resultSet.absolute(23);
        System.out.println("\tLast name : "+resultSet.getString("LAST_NAME"));
        System.out.println("\tfirst name: "+resultSet.getString("FIRST_NAME"));
        System.out.println("\tsalary : "+resultSet.getString("SALARY"));

        System.out.println("Previous ->  will give info from row 22");
        resultSet.previous();
        System.out.println("\tLast name : "+resultSet.getString("LAST_NAME"));
        System.out.println("\tfirst name: "+resultSet.getString("FIRST_NAME"));
        System.out.println("\tsalary : "+resultSet.getString("SALARY"));

        System.out.println("BEFORE FIRST START FROM BEGINNING   ");
        resultSet.beforeFirst();
        while (resultSet.next()){
            System.out.println("Phone numbers: "+resultSet.getString("PHONE_NUMBER"));
        }

    }

}
