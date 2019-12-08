package com.ashwin.vemployee.service;

import com.ashwin.vemployee.model.Employee;
import com.ashwin.vemployee.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository empRepository;

    public Employee saveEmployee(HttpServletRequest request, Employee employee){
        // Root Directory.
        String uploadRootPath = request.getServletContext().getRealPath("/WEB-INF/images");
        System.out.println("uploadRootPath=" + uploadRootPath);

        File uploadRootDir = new File(uploadRootPath);
        // Create directory if it not exists.
        if (!uploadRootDir.exists()) {
            uploadRootDir.mkdirs();
        }

        MultipartFile fileData = employee.getFileData();
        String name = fileData.getOriginalFilename();
        System.out.println("Client File Name = " + name);

        if (name != null && name.length() > 0) {
            try {
                // Create the file at server
                File serverFile = new File(uploadRootDir.getAbsolutePath() + File.separator + employee.getiNumber()+".jpg");

                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
                stream.write(fileData.getBytes());
                stream.close();
                //

                System.out.println("Write file: " + serverFile);
            } catch (Exception e) {
                System.out.println("Error Write file: " + name);

            }
        }


        if(employee.getiNumber()==null){
        empRepository.save(employee);
        }
        else{
          empRepository.save(employee);
        }
        return  employee;
    }

    public List<Employee> getAll() {
        return  empRepository.findAll();
    }
}
