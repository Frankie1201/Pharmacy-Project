package com.pharmacy.controller;

import com.nfs.model.CorderQuery;
import com.nfs.model.Corder;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CreateCord extends HttpServlet {

    int medId;
    int customerId;
    double price;
    double totalPrice;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
            medId = Integer.parseInt(request.getParameter("medId")); //String->int
            customerId = Integer.parseInt(request.getParameter("customerId")); //String->int
            price = Double.parseDouble(request.getParameter("price")); //String->int
            totalPrice = Double.parseDouble(request.getParameter("totalPrice")); //String->int
            
            //create student object
            Corder o = new Corder(medId,customerId,price,totalPrice);
            
            //insert student into DB
            int r = CorderQuery.insert(o);
            
            if(r==1)
            {
                out.print("Customer Order Record Saved"); 
                request.getRequestDispatcher("CorderDisplay.jsp").include(request, response);
            }//if ends
            else{
                out.print("Error......Can not save record");
                request.getRequestDispatcher("addCord.jsp").include(request, response);
            }//else ends
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
