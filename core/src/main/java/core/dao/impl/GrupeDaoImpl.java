package core.dao.impl;

import core.dao.GrupeDao;
import core.dao.repository.GrupeRepository;
import core.model.Grupe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GrupeDaoImpl implements GrupeDao {

    @Autowired
    private GrupeRepository grupRepository;

    @Override
    public List<Grupe> findAll() {
        return grupRepository.findAll();
    }

}
