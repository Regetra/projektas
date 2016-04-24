package core.service.impl;

import core.dao.ValstybeDao;
import core.model.Valstybe;
import core.service.ValstybeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ValstybeServiceImpl implements ValstybeService {

    @Autowired
    private ValstybeDao carDao;

    @Override
    public List<Valstybe> findAllVals() {
        return carDao.findAll();
    }

}
