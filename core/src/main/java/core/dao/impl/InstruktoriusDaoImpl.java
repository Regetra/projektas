package core.dao.impl;

import core.dao.InstruktoriusDao;
import core.dao.repository.InstruktoriusRepository;
import core.model.Instruktorius;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class InstruktoriusDaoImpl implements InstruktoriusDao {

    @Autowired
    private InstruktoriusRepository insRepository;

    @Override
    public List<Instruktorius> findAll() {
        return insRepository.findAll();
    }

    @Override
    public Instruktorius findByVardasAndPavarde(String Vardas, String Pavarde) {
        return insRepository.findByVardasAndPavarde(Vardas, Pavarde);
    }

}
