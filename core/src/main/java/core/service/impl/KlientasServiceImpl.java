package core.service.impl;

import core.dao.KlientasDao;
import core.model.Klientas;
import core.service.KlientasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class KlientasServiceImpl implements KlientasService {

    @Autowired
    private KlientasDao kliDao;

    @Override
    public List<Klientas> findAllKli() {
        return kliDao.findAll();
    }

}
