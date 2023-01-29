package com.construction;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.connection.*;

/**
 * Servlet implementation class NewProjects
 */

@WebServlet("/NewProjectsImg")
@MultipartConfig(maxFileSize = 16177216)
public class NewProjects extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NewProjects() {
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

		int i = 0;
		Connection con = DbConection.connect();
		Part part = request.getPart("img");

		if (part != null)
			try {

				PreparedStatement ps = con.prepareStatement("insert into project values(?,?,?,?,?)");
				ps.setInt(1, 0);
				ps.setString(2, request.getParameter("ProjName"));
				ps.setString(3, request.getParameter("addr"));
				ps.setString(4, request.getParameter("eid"));
				InputStream is = part.getInputStream();
				ps.setBlob(5, is);
				i = ps.executeUpdate();

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (con != null) {
					try {
						con.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}

		if (i > 0)
			response.sendRedirect("aViewproject.jsp");
	}

}
