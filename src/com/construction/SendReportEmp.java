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
import com.connection.TimeDate;

/**
 * Servlet implementation class SendReportEmp
 */

@WebServlet("/SendReportEmpImg")
@MultipartConfig(maxFileSize = 16177216)

public class SendReportEmp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SendReportEmp() {
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

		try {
			Connection con = DbConection.connect();
			Part part = request.getPart("image");

			if (part != null) {
				PreparedStatement psts = con
						.prepareStatement(" insert into reports  values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				psts.setInt(1, 0);
				psts.setInt(2, Getset.getPid());
				psts.setInt(3, Getset.getEmpId());
				psts.setInt(4, 0);
				psts.setString(5, request.getParameter("weather"));
				psts.setString(6, request.getParameter("wimp"));
				psts.setString(7, request.getParameter("acci"));
				psts.setString(8, request.getParameter("inj"));
				psts.setString(9, request.getParameter("wd"));
				psts.setString(10, request.getParameter("descr"));
				psts.setString(11, request.getParameter("eqiuse"));
				psts.setString(12, request.getParameter("matdel"));
				psts.setString(13, request.getParameter("matquan"));
				psts.setTimestamp(14, TimeDate.getTime());

				InputStream is = part.getInputStream();
				psts.setBlob(15, is);

				int i = psts.executeUpdate();

				if (i > 0)
					response.sendRedirect("dEmpDashboard.jsp");
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
