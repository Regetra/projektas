package core.service.impl;

import core.dao.GrupeDao;
import core.model.Grupe;
import core.service.GrupeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class GrupeServiceImpl implements GrupeService {

    @Autowired
    private GrupeDao grupDao;

    @Override
    public List<Grupe> findAllGrupe() {
        return grupDao.findAll();
    }

}
