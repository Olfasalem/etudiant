package com.foufa.demo0105.model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class StudentDao {
    private Connection conn ;



    public void ConnectPostGreSql() {
        try {
            Class.forName("org.postgresql.Driver"); // chargement du driver
//            String url = "jdbc:postgresql://localhost/postgres?userClass.forName(" org.postgresql.Driver")
            String url = "jdbc:postgresql://localhost:8080/postgres?user=postgres&password=admin";

            conn = DriverManager.getConnection(url);
        }
        catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        catch (SQLException e) {
            throw new RuntimeException (e) ;
        }

    }

    public List<student> listStudent()
    {
        List<student> Students = new ArrayList<student>();
        ConnectPostGreSql();

        Statement st = null ;
        try {
            st = conn.createStatement();
            ResultSet rs = st.executeQuery("select *  FROM students");
            while (rs.next()) {
                Students.add(new student(rs.getInt("id"), rs.getString("name"), rs.getInt("age")));
            }

            return Students;
        }
        catch  (SQLException e)
        {
            throw new RuntimeException(e);
        }
    }

    public void addStudent(student s) {
        try {
            ConnectPostGreSql();
            PreparedStatement preparedStatement =
                    conn.prepareStatement("INSERT INTO students(name, age) VALUES(?, ?);");
            preparedStatement.setString(1, s.getName());
            preparedStatement.setInt(2, s.getAge());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException();

        }


    }


}
