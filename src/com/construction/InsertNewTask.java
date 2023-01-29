package com.construction;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.connection.DbConection;
import com.connection.Getset;

/**
 * Servlet implementation class InsertNewTask
 */
@WebServlet("/TaskImg")
@MultipartConfig(maxFileSize = 16177216)
public class InsertNewTask extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertNewTask() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		Connection con = DbConection.connect();
		Part part = request.getPart("img");

		if (part != null)
			try {
				PreparedStatement psts = con.prepareStatement(" insert into task values (?,?,?,?,?,?,?,?,?,?,?,?)");
				psts.setInt(1, 0);
				psts.setInt(2, Getset.getPid());
				psts.setString(3, request.getParameter("title"));
				psts.setString(4, request.getParameter("prior"));
				psts.setString(5, request.getParameter("loc"));
				psts.setString(6, request.getParameter("sdate"));
				psts.setString(7, request.getParameter("edate"));
				psts.setString(8, request.getParameter("mans"));
				psts.setString(11, request.getParameter("deptid"));
				psts.setInt(10, 0);
				psts.setString(9, Getset.getAssigner());
				InputStream is = part.getInputStream();
				psts.setBlob(12, is);

				int i = psts.executeUpdate();

				if (i > 0)
					if (Getset.getA() == 1)
						response.sendRedirect("aAdminDashboard.jsp");
					else
						response.sendRedirect("bEnggDashboard.jsp");

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
