package core.service.impl;

import core.dao.AutomobilisDao;
import core.dao.repository.AutomobilisRepository;
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
    @Autowired
    private AutomobilisRepository autoRep;

    @Override
    public List<Automobilis> findAllAuto() {
        return autoDao.findAll();
    }

    @Override
    public int automobiliuSkaicius() {
        List<Automobilis> autoSk = autoDao.findAll();
        return 0;
    }


}
