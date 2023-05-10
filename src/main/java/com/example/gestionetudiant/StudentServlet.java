package com.foufa.demo0105;

import com.foufa.demo0105.model.StudentDao;
import com.foufa.demo0105.model.student;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet(name = "StudentServlet", value = "/student")
public class StudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //stdDAO est un objet de classe StudentDao
        StudentDao stdDao = new StudentDao();
        List<student> students = stdDao.listStudent();

        request.setAttribute("students", students);
        this.getServletContext().getRequestDispatcher("/studentList.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        int age = Integer.parseInt(req.getParameter("age"));

        StudentDao stdDao =new StudentDao();
        stdDao.addStudent(new student(-1, nom, age));

        doGet(req , res);


    }
}