package core.service.impl;

import core.dao.AutomobilisDao;
import core.model.Automobilis;
import core.service.AutomobilisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AutomobilisServiceImpl implements AutomobilisService {

    @Autowired
    private AutomobilisDao autoDao;

    @Override
    public List<Automobilis> findAllAuto() {
        return autoDao.findAll();
    }

}
