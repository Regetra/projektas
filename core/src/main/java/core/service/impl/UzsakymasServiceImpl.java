package core.service.impl;

import core.dao.UzsakymasDao;
import core.model.Uzsakymas;
import core.service.UzsakymasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UzsakymasServiceImpl implements UzsakymasService {

    @Autowired
    private UzsakymasDao carDao;

    @Override
    public List<Uzsakymas> findAllUzs() {
        return carDao.findAll();
    }

}
