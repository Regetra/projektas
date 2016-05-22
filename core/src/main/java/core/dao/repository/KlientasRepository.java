package core.dao.repository;

import core.model.Klientas;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.*;

public interface KlientasRepository extends JpaRepository<Klientas, Integer> {

    Klientas findByAsmensKodas(Integer AsmensKodas);

    /*List<Klientas> findByTeorinioDataAndFilialas(Date TeorinioData, int fk_filialasTeo);

    List<Klientas> findByPraktinioDataAndFilialas(Date PraktinioData, int fk_filialasPra);

    List<Klientas> findByTeorinioIslaikymoData(Date TeorinioIslaikymoData);*/

}
