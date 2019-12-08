package com.ashwin.vemployee.restcontroller;

import com.ashwin.vemployee.model.Employee;
import com.ashwin.vemployee.response.ResponseMessage;
import com.ashwin.vemployee.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import java.io.UnsupportedEncodingException;
import java.util.Base64;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;


import javax.validation.Valid;
import java.net.URI;

@RestController
public class EmployeeController {

    @Autowired
    private EmployeeService empService;


    //Save the uploaded file to this folder
    private static String UPLOADED_FOLDER = "F://temp//";

    //yesma user ko id pataera post matra tanne function
    @GetMapping("/getAllEmployees")
    public List<Employee> retrieveEmployee(){
        List<Employee> userOptional=empService.getAll();
        if(userOptional==null){
            return null;
        }
        return userOptional;
    }


//    @PostMapping("/insert-emp")
//    @ResponseBody
//    public ResponseEntity<?> createEmployee(@Valid @RequestBody Employee employee) {
//        MultipartFile uploadfile=employee.getFiles();
//        System.out.println("entered here");
//        if (uploadfile.isEmpty()) {
//            return new ResponseEntity("please select a file!", HttpStatus.OK);
//        }
//
//        try {
//
//            saveUploadedFiles(Arrays.asList(uploadfile));
//
//        } catch (IOException e) {
//            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
//        }
//        return new ResponseEntity("Successfully uploaded - " +
//                uploadfile.getOriginalFilename(), new HttpHeaders(), HttpStatus.OK);
//    }

    //save file
    private void saveUploadedFiles(List<MultipartFile> files) throws IOException {

        for (MultipartFile file : files) {

            if (file.isEmpty()) {
                continue; //next pls
            }

            byte[] bytes = file.getBytes();
            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);

        }

    }
}