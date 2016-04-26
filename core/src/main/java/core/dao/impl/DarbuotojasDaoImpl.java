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
        return darRepository.findAll();
    }

    @Override
    public Darbuotojas findByVardasAndPavarde(String Vardas, String Pavarde) {
        return darRepository.findByVardasAndPavarde(Vardas, Pavarde);
    }

}
