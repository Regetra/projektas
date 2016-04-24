package core.dao.impl;

import core.dao.ValstybeDao;
import core.dao.repository.ValstybeRepository;
import core.model.Valstybe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ValstybeDaoImpl implements ValstybeDao {

    @Autowired
    private ValstybeRepository valRepository;

    @Override
    public List<Valstybe> findAll() {
        return valRepository.findAll();
    }

}
