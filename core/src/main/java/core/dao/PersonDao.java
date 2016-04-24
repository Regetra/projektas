package core.dao;

import core.model.Person;

import java.util.List;

public interface PersonDao {

    List<Person> findAll();

    Person findByIdAndName(Integer id, String name);

}
