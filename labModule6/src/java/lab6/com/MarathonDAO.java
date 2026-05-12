/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class MarathonDAO {

    public int addMarathon(Marathon m) {

        int status = 0;

        try {

            Connection conn = Database.getConnection();

            String sql = "INSERT INTO marathon(fullname, icno, category) VALUES(?,?,?)";

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, m.getFullname());
            ps.setString(2, m.getIcno());
            ps.setString(3, m.getCategory());

            status = ps.executeUpdate();

            Database.closeConnection(conn);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}