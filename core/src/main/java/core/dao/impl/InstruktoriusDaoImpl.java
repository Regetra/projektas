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
        List<Instruktorius> inst = insRepository.findAll();
        for(int i = 0; i < inst.size(); i++)
        {
            for(int j = 0; j < inst.get(i).getGrupe().size(); j++)
                System.out.println(inst.get(i).getGrupe().get(j));
        }
        return inst;
    }

    @Override
    public Instruktorius findByVardasAndPavarde(String Vardas, String Pavarde) {
        return insRepository.findByVardasAndPavarde(Vardas, Pavarde);
    }

}
