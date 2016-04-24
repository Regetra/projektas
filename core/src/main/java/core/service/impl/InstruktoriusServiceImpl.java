package core.service.impl;

import core.dao.InstruktoriusDao;
import core.model.Instruktorius;
import core.service.InstruktoriusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class InstruktoriusServiceImpl implements InstruktoriusService {

    @Autowired
    private InstruktoriusDao insDao;

    @Override
    public List<Instruktorius> findAllInst() {
        return insDao.findAll();
    }

}
