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
        List<Automobilis> auto = autoRepository.findAll();
        System.out.println(auto.size());
        for(int i = 0; i < auto.size(); i++)
        {
            Automobilis a = auto.get(i);
            System.out.println(a.getId() + " " + a.getMarke() + " " + a.getModelis() + " " + a.getGr().getPavadinimas());
        }
        return auto;
    }

    @Override
    public Automobilis findByModelisAndMarke(String Modelis, String Marke) {
        return autoRepository.findByModelisAndMarke(Modelis, Marke);
    }

}
