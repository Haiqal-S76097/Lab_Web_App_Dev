package com.drivesmart.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.drivesmart.bean.SessionBean;

public class SessionDAO {

    private String jdbcURL =
            "jdbc:mysql://localhost:3306/drivesmart_db";

    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private Connection getConnection() {

        Connection conn = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection(
                    jdbcURL,
                    jdbcUsername,
                    jdbcPassword);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return conn;
    }

    public void bookSession(SessionBean session) {

        String sql =
        "INSERT INTO Training_Sessions(student_name,branch_location,lesson_type,status) VALUES(?,?,?,?)";

        try {

            Connection conn = getConnection();
            PreparedStatement ps =
                    conn.prepareStatement(sql);

            ps.setString(1, session.getStudentName());
            ps.setString(2, session.getBranchLocation());
            ps.setString(3, session.getLessonType());
            ps.setString(4, session.getStatus());

            ps.executeUpdate();

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<SessionBean> getAllSessions() {

        List<SessionBean> list = new ArrayList<>();

        String sql =
        "SELECT * FROM Training_Sessions ORDER BY branch_location ASC";

        try {

            Connection conn = getConnection();

            PreparedStatement ps =
                    conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                SessionBean session = new SessionBean();

                session.setSessionId(rs.getInt("session_id"));
                session.setStudentName(rs.getString("student_name"));
                session.setBranchLocation(rs.getString("branch_location"));
                session.setLessonType(rs.getString("lesson_type"));
                session.setStatus(rs.getString("status"));

                list.add(session);
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}