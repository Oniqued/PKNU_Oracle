package chapter06;

import java.sql.*;

public class JDBCExample {
    public static void main(String[] args) {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection conn = DriverManager.getConnection(
                    "jdbc:oracle:thin:@210.125.112.20:1521:xe",
                    "DB201911506",
                    "201911506"
            );
            Statement stmt = conn.createStatement(); //connection 생성

            ResultSet rs = stmt.executeQuery( //결과를 저장할 set
                    "select * from STUDENT" // Database에서 commit을 해야 결과가 반영된다.
            );

            while (rs.next()) { // set에서 튜플을 계속 받아옴
                int no = rs.getInt("sno"); //sno를 int로 읽을것
                String name = rs.getString("sname");
                int year = rs.getInt(3);
                String dept = rs.getString(4);
                System.out.printf("학번:%d 이름:%s 학년:%d 학과:%s \n", no, name, year, dept);
            }

            rs.close();
            stmt.close();
            conn.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
