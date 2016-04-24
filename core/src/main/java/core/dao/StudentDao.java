package core.dao;

import core.model.Student;

import java.util.List;

public interface StudentDao {

    List<Student> findAllStudents();

}
