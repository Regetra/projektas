package core.dao.impl;

import core.dao.DarbuotojasDao;
import core.dao.repository.DarbuotojasRepository;
import core.model.Darbuotojas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DarbuotojasDaoImpl implements DarbuotojasDao {

    @Autowired
    private DarbuotojasRepository darRepository;

    @Override
    public List<Darbuotojas> findAll() {
        List<Darbuotojas> darb = darRepository.findAll();
        for(int i = 0; i < darb.size(); i++)
        {
            Darbuotojas dar = darb.get(i);
            System.out.println(dar.getId() + " " + dar.getFili());
        }
        return darb;
    }

    @Override
    public Darbuotojas findByVardasAndPavarde(String Vardas, String Pavarde) {
        return darRepository.findByVardasAndPavarde(Vardas, Pavarde);
    }

}
