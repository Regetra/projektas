package core.dao.repository;

import core.model.Filialas;
import core.model.Klientas;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.*;

public interface KlientasRepository extends JpaRepository<Klientas, Integer> {

    Klientas findByAsmensKodas(Integer AsmensKodas);

    /*List<Klientas> findByTeorinioDataAndfk_filialasTeo(Date teorinioData, int fk_filialasTeo);

    @Query("SELECT klientas.*,  FROM Thing t WHERE t.fooIn = ?1 AND t.bar = ?2")
    List<Klientas> findByPraktinioDataAndfiliPra_(Date praktinioData, Filialas fk_filialasPra);

    List<Klientas> findByTeorinioIslaikymoData(Date TeorinioIslaikymoData);*/

}
