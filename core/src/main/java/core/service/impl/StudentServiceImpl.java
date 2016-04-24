package core.service.impl;

import core.dao.StudentDao;
import core.service.StudentService;
import core.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDao studentDao;

    @Override
    public List<Student> getStudents() {
        return studentDao.findAllStudents();
    }

}
