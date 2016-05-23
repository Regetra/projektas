package core.dao.impl;

import core.dao.FilialasDao;
import core.dao.repository.FilialasRepository;
import core.model.Filialas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FilialasDaoImpl implements FilialasDao {

    @Autowired
    private FilialasRepository filRepository;

    @Override
    public List<Filialas> findAll() {
        List<Filialas> fili = filRepository.findAll();
        for(int i = 0; i < fili.size(); i++)
        {
                for(int j = 0; j < fili.get(i).getDarb().size(); j++)
                    System.out.println(fili.get(i).getDarb());

                for(int j = 0; j < fili.get(i).getGrup().size(); j++)
                    System.out.println(fili.get(i).getGrup());
        }
        return fili;
    }

    @Override
    public Filialas findByMiestasAndAdresas(String Miestas, String Adresas) {
        return filRepository.findByMiestasAndAdresas(Miestas, Adresas);
    }

}
