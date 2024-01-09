package io.loopcamp.jdbctest.day01;

import java.sql.*;
import java.util.*;

public class p03_MetaDataTest {

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


        /**
         * DataBase Meta Data - will give us information about dataBase
         */

        DatabaseMetaData databaseMetaData = connection.getMetaData();
        System.out.println("DB userName: "+databaseMetaData.getUserName());
        System.out.println("DataBase Product Name: "+databaseMetaData.getDatabaseProductName());
        System.out.println("DataBase Version Name: "+databaseMetaData.getDatabaseProductVersion());

        /**
         * ResulSet MetaData - will hej=lp us with upper side of the table
         * We use resultSet to make ResultSetMetaData reference
         */

        ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
        System.out.println("Total column count: "+resultSetMetaData.getColumnCount());
        System.out.println("First column : "+resultSetMetaData.getColumnName(1));


        System.out.println();
        for (int i = 1; i <= resultSetMetaData.getColumnCount(); i++) {
            System.out.println(resultSetMetaData.getColumnName(i));
        }
        System.out.println("__________________________");
        List <Map <String, Object> > list = new ArrayList<>();

        // With the while loop I am looping through the rows
        while (resultSet.next()) {

            Map <String, Object> eachPerson = new LinkedHashMap<>();

            // With fori loop I am looping through columns
            for (int i = 1; i <= resultSetMetaData.getColumnCount(); i++) {
                //System.out.println(  rsmd.getColumnName(i) + "\t\t\t\t\t" + rs.getString(i)  );
                eachPerson.put(resultSetMetaData.getColumnName(i),resultSet.getString(i) );
            }
            //System.out.println(eachPerson);
            list.add(eachPerson);
            //System.out.println();

        }

    }




}
