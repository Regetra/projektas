package core.service.impl;

import core.service.FilialasService;
import core.dao.FilialasDao;
import core.model.Filialas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class FilialasServiceImpl implements FilialasService {

    @Autowired
    private FilialasDao filiDao;

    @Override
    public List<Filialas> findAllFili() {
        return filiDao.findAll();
    }

}
