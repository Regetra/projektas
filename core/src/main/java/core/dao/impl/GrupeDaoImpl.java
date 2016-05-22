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
        List<Grupe> gr = grupRepository.findAll();
        for(int i = 0; i < gr.size(); i++)
        {
            for(int j = 0; j < gr.get(i).getFili().size(); j++)
            {
                System.out.println(gr.get(i).getFili().get(j).getMiestas() + " " + gr.get(i).getFili().get(j).getAdresas() + " " + gr.get(i).getPavadinimas());
            }
        }
        return gr;
    }

    @Override
    public Grupe findByPavadinimas(String Pavadinimas) {
        return grupRepository.findByPavadinimas(Pavadinimas);
    }

}
