package core.service.impl;

import core.model.Darbuotojas;
import core.service.DarbuotojasService;
import core.dao.DarbuotojasDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class DarbuotojasServiceImpl implements DarbuotojasService {

    @Autowired
    private DarbuotojasDao autoDao;

    @Override
    public List<Darbuotojas> findAllDarb()
    {
        return autoDao.findAll();
    }
}
