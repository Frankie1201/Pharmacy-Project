
package com.pharmacy.controller;

import com.nfs.model.MedicineQuery;
import com.nfs.model.Medicine;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CreateMed extends HttpServlet {

    String name;
    int supplierId;
    int quantity;
    double price;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
            //getting request parameters
            name = request.getParameter("name");
            supplierId = Integer.parseInt(request.getParameter("supplierId"));//String->Int
            quantity = Integer.parseInt(request.getParameter("quantity"));//String->Int
            price = Double.parseDouble(request.getParameter("price"));//String->Int
            
            //create student object
            Medicine m = new Medicine(name,supplierId,quantity,price);
            
            //insert student into DB
            int r = MedicineQuery.insert(m);
            
            if(r==1)
            {
                out.print("Medicine Record Saved"); 
                request.getRequestDispatcher("medicineDisplay.jsp").include(request, response);
            }//if ends
            else{
                out.print("Error......Can not save record");
                request.getRequestDispatcher("addMed.jsp").include(request, response);
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
