package core.dao.impl;

import core.dao.GrupeDao;
import core.dao.repository.GrupeRepository;
import core.model.Grupe;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;
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
                System.out.println(gr.get(i).getFili());
            for(int j = 0; j < gr.get(i).getAuto().size(); j++)
                System.out.println(gr.get(i).getAuto());
            for(int j = 0; j < gr.get(i).getInst().size(); j++)
                System.out.println(gr.get(i).getInst());
            /*for(int j = 0; j < gr.get(i).getKlien().size(); j++)
                System.out.println(gr.get(i).getKlien());*/
        }
        return gr;

    }

    @Override
    public Grupe findByPavadinimas(String Pavadinimas) {
        return grupRepository.findByPavadinimas(Pavadinimas);
    }

}
