package core.dao.impl;

import core.model.Person;
import core.dao.PersonDao;
import core.dao.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PersonDaoImpl implements PersonDao {

    @Autowired
    private PersonRepository personRepository;

    @Override
    @Cacheable("namesCache")
    public List<Person> findAll() {
        return personRepository.findAll();
    }

    @Override
    public Person findByIdAndName(Integer id, String name) {
        return personRepository.findByIdAndName(id, name);
    }

}
