package core.dao.impl;

import core.dao.KlientasDao;
import core.dao.repository.KlientasRepository;
import core.model.Klientas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public class KlientasDaoImpl implements KlientasDao {

    @Autowired
    private KlientasRepository kliRepository;

    @Override
    public List<Klientas> findAll() {
        return kliRepository.findAll();
    }

    @Override
    public Klientas findByAsmensKodas(Integer AsmensKodas) {
        return kliRepository.findByAsmensKodas(AsmensKodas);
    }

    @Override
    public List<Klientas> findByTeorinioData(Date TeorinioData) {
        return kliRepository.findByTeorinioData(TeorinioData);
    }

    @Override
    public List<Klientas> findByPraktinioData(Date PraktinioData) {
        return kliRepository.findByPraktinioData(PraktinioData);
    }

    @Override
    public List<Klientas> findByTeorinioIslaikymoData(Date TeorinioIslaikymoData) {
        return kliRepository.findByTeorinioIslaikymoData(TeorinioIslaikymoData);
    }

}
