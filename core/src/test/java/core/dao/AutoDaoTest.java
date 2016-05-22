package core.dao;

import core.builder.AutoBuilder;
import core.dao.repository.AutomobilisRepository;
import core.model.Automobilis;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

/**
 * Created by SimphonX on 2016-05-22.
 */
public class AutoDaoTest {
    private Automobilis john;
    private Automobilis jane;

    @Autowired
    private PersonDao personDao;
    private AutomobilisDao autDao;

    @Autowired
    private AutomobilisRepository autoRepository;

    @Before
    public void setUp() {
        john = AutoBuilder.init().withId(null).build();
        jane = AutoBuilder.init().withId(null).withName("Mazda", "String").build();

        autoRepository.save(john);
        autoRepository.save(jane);
    }

    @Test
    public void testFindAllEntries() {
        List<Automobilis> persons = autDao.findAll();

        assertEquals(2, persons.size());
    }

    @Test
    public void testFindByIdAndName() {
        Automobilis result = autDao.findByModelisAndMarke(jane.getModelis(), jane.getMarke());
        assertNotNull(result);
    }
}
