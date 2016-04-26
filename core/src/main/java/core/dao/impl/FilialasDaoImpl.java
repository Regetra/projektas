package core.dao.impl;

import core.dao.FilialasDao;
import core.dao.repository.FilialasRepository;
import core.model.Filialas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FilialasDaoImpl implements FilialasDao {

    @Autowired
    private FilialasRepository filRepository;

    @Override
    public List<Filialas> findAll() {
        return filRepository.findAll();
    }

    @Override
    public Filialas findByMiestasAndAdresas(String Miestas, String Adresas) {
        return filRepository.findByMiestasAndAdresas(Miestas, Adresas);
    }

}
