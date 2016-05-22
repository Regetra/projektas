package core.dao.impl;

import core.dao.KlientasDao;
import core.dao.repository.KlientasRepository;
import core.model.Filialas;
import core.model.Klientas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public class KlientasDaoImpl implements KlientasDao {

    @Autowired
    private KlientasRepository kliRepository;

    @Override
    public List<Klientas> findAll() {
        List<Klientas> klie = kliRepository.findAll();
        for(int i = 0; i < klie.size(); i++)
        {
            //System.out.println(klie.get(i).getFiliPra());
            //System.out.println(klie.get(i).getFiliTeo());
            /*for(int j = 0; j < klie.get(i).getGrupes().size(); j++)
                System.out.println(klie.get(i).getGrupes().get(j));*/
            /*for(int j = 0; j < klie.get(i).getUzsa().size(); j++)
                System.out.println(klie.get(i).getUzsa());*/
        }
        return klie;
    }

    @Override
    public Klientas findByAsmensKodas(Integer AsmensKodas) {
        return kliRepository.findByAsmensKodas(AsmensKodas);
    }

    /*@Override
    public List<Klientas> findByTeorinioDataAndFilialas(Date TeorinioData, int fk_filialasTeo){
        return kliRepository.findByTeorinioDataAndfk_filialasTeo(TeorinioData, fk_filialasTeo);
    }

    @Override
    public List<Klientas> findByPraktinioDataAndFilialas(Date praktinioData, Filialas fk_filialasPra) {
        return kliRepository.findByPraktinioDataAndfiliPra(praktinioData, fk_filialasPra);
    }

    @Override
    public List<Klientas> findByTeorinioIslaikymoData(Date TeorinioIslaikymoData) {
        return kliRepository.findByTeorinioIslaikymoData(TeorinioIslaikymoData);
    }*/
}
