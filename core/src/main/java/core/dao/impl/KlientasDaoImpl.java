package core.dao.impl;

import core.dao.KlientasDao;
import core.dao.repository.KlientasRepository;
import core.model.Klientas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class KlientasDaoImpl implements KlientasDao {

    @Autowired
    private KlientasRepository kliRepository;

    @Override
    public List<Klientas> findAll() {
        return kliRepository.findAll();
    }

}
