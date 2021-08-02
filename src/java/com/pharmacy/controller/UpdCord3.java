package com.pharmacy.controller;
/*
import com.nfs.model.CorderQuery;
import com.nfs.model.Corder;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdCord3 extends HttpServlet {

    int orderId;
    int quantity;
    
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
            //getting request parameters
            orderId = Integer.parseInt(request.getParameter("orderId")); //String->int
            quantity = Integer.parseInt(request.getParameter("quantity")); //String->int
            
            //Update Student in DB
            int r = CorderQuery.update3(orderId, quantity);
            
            if(r==1)
            {
                out.print("Customer order record updated");
                request.getRequestDispatcher("CorderDisplay.jsp").include(request, response);
            }
            else
            {
                out.print("Error......Can not Update record");
                request.getRequestDispatcher("UpdCord.jsp").include(request, response);
            }
        }
    }*/

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /*@Override
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
    /*@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    /*@Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>*/

//}
