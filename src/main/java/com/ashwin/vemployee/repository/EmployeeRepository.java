package com.ashwin.vemployee.repository;

import com.ashwin.vemployee.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface  EmployeeRepository  extends JpaRepository<Employee,Integer> {
}
