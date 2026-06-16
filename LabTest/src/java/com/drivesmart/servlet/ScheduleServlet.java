package com.drivesmart.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import com.drivesmart.bean.SessionBean;
import com.drivesmart.dao.SessionDAO;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ScheduleServlet")
public class ScheduleServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        SessionDAO dao = new SessionDAO();

        List<SessionBean> list =
                dao.getAllSessions();

        request.setAttribute("sessionList", list);

        request.getRequestDispatcher("schedule.jsp")
               .forward(request, response);
    }
}
