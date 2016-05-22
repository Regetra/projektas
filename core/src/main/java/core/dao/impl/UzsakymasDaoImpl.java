package core.dao.impl;

import core.dao.UzsakymasDao;
import core.dao.repository.UzsakymasRepository;
import core.model.Uzsakymas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UzsakymasDaoImpl implements UzsakymasDao {

    @Autowired
    private UzsakymasRepository uzsRepository;

    @Override
    public List<Uzsakymas> findAll() {

        List<Uzsakymas> uzs = uzsRepository.findAll();
        for(int i = 0; i < uzs.size(); i++)
        {
            //System.out.println(uzs.get(i).getKlie());
        }
        return uzs;
    }

    @Override
    public Uzsakymas findByUsakymoDataAndPristatymoVieta(String UzsakymoData, String PristatymoVieta) {
        return uzsRepository.findByUsakymoDataAndPristatymoVieta(UzsakymoData,PristatymoVieta);
    }

}
