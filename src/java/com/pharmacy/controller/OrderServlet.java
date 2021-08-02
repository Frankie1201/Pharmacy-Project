package com.pharmacy.controller;


import com.nfs.model.NfsConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;//session management


public class OrderServlet extends HttpServlet {


    
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        
            String medicine = request.getParameter("medicine");
            System.out.println(medicine);
            
            int medId = 0;
            String name = null;
            double price = 0;
            try
            {
                HttpSession se = request.getSession(); String user = se.getAttribute("user").toString();
                System.out.println(user);
                Connection con = NfsConnection.connect();
                Statement stmt = con.createStatement();
                
                 int customerId = 0;
                 
                 ResultSet rs1 = stmt.executeQuery("select * from customer where email='"+user+"'");
                 if(rs1.next())
                 {
                   customerId = rs1.getInt("customerId");
                   System.out.println(customerId);
                 }
                
                
                ResultSet rs = stmt.executeQuery("select * from medicine where name='"+medicine+"'");
                if(rs.next())
                {
                   medId = rs.getInt("medId");
                   name = rs.getString("name");
                   price = rs.getDouble("price");
                }
                
                int insertOrder = stmt.executeUpdate("insert into myorder(medId, name, price) values("+medId+",'"+name+"',"+price+")");
                
                stmt.executeUpdate("insert into Corder(medId, customerId, price) values("+medId+","+customerId+","+price+")");
               
                request.getRequestDispatcher("custMed.jsp").forward(request, response);
            }
            catch(Exception ex)
            {
                System.out.println("order error :"+ex);
            }   
            
        }
    }


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
