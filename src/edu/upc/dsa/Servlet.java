package edu.upc.dsa;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import com.google.gson.Gson;

/**
 * Created by $uperuser on 16/11/2016.
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Gson mijson = new Gson();
        ServletOutputStream out = response.getOutputStream();
        User usuario = new User();
       try  {
            String jsonObjectReceived = new Gson().toJson(getJsonReceived(request));
            usuario = mijson.fromJson(jsonObjectReceived, User.class);
        } catch (NumberFormatException  e) {
            e.printStackTrace();
        }
        }
    private String getJsonReceived (HttpServletRequest request) {
        String recibido = "";
        try {
            BufferedReader in = new BufferedReader(new InputStreamReader(request.getInputStream()));
            recibido = in.readLine();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return recibido;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int ids;


    }

}
