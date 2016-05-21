package core.service.impl;

import core.dao.repository.KlientasRepository;
import core.model.Klientas;
import core.service.FilialasService;
import core.dao.FilialasDao;
import core.model.Filialas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@Transactional
public class FilialasServiceImpl implements FilialasService {

    @Autowired
    private FilialasDao filiDao;

    /*@Autowired
    private KlientasRepository klientas;*/

    @Override
    public List<Filialas> findAllFili() {
        return filiDao.findAll();
    }
    /*@Override
    public List<Klientas> findAllLaikanciusTeorija(Date laikas, int teorinis)
    {
        return klientas.findByTeorinioDataAndFilialas(laikas, teorinis);
    }

    @Override
    public List<Klientas> findAllLaikanciusPraktika(Date laikas, int praktika) {
        return klientas.findByPraktinioDataAndFilialas(laikas, praktika);
    }*/
}
