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
        System.out.println("-----------------------------------" + fili.size());
        for(int i = 0; i < fili.size(); i++)
        {
            Filialas a = fili.get(i);
            if(a.getDarb() != null)
                for(int j = 0; j < a.getDarb().size(); j++)
                    System.out.println(a.getDarb().get(j));
            /*if(a.getGrup() != null)
                for(int j = 0; j < a.getGrup().size(); j++)
                    System.out.println(a.getGrup().get(j));
            if(a.getPraktinis() != null)
                for(int j = 0; j < a.getPraktinis().size(); j++)
                    System.out.println(a.getPraktinis().get(j));
            if(a.getTeorinis() != null)
                for(int j = 0; j < a.getTeorinis().size(); j++)
                    System.out.println(a.getTeorinis().get(j));*/
        }
        return fili;
    }

    @Override
    public Filialas findByMiestasAndAdresas(String Miestas, String Adresas) {
        return filRepository.findByMiestasAndAdresas(Miestas, Adresas);
    }

}
