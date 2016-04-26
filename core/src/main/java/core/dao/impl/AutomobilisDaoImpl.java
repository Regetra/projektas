package core.dao.impl;

import core.dao.AutomobilisDao;
import core.dao.repository.AutomobilisRepository;
import core.model.Automobilis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AutomobilisDaoImpl implements AutomobilisDao {

    @Autowired
    private AutomobilisRepository autoRepository;

    @Override
    public List<Automobilis> findAll() {
        return autoRepository.findAll();
    }

    @Override
    public Automobilis findByModelisAndMarke(String Modelis, String Marke) {
        return autoRepository.findByModelisAndMarke(Modelis, Marke);
    }

}
