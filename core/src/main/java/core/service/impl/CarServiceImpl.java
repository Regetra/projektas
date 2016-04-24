package core.service.impl;

import core.dao.CarDao;
import core.model.Car;
import core.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CarServiceImpl implements CarService {

    @Autowired
    private CarDao carDao;

    @Override
    public List<Car> findAllcars() {
        return carDao.findAll();
    }

}
