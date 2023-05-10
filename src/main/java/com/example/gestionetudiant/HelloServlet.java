package com.foufa.demo0105;

import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.ServletException;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String nom = "iftikhar";
        String prenom = "chetoui";
        String [] students = {"iftikhar" , "salah" ,"ahmed"};

        request.setAttribute("prenom" , prenom);
        request.setAttribute("nom", nom);
        request.setAttribute("students", students);


        this.getServletContext().getRequestDispatcher("/hello.jsp").forward(request, response);//redirection vers hello.jsp
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pNom = req.getParameter("nom");

        HttpSession session = req.getSession();
        session.setAttribute("pNom" , pNom);

        this.getServletContext().getRequestDispatcher("/hello.jsp").forward(req, resp) ; //redirection vers hello.jsp

    }
}




