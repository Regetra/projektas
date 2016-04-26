package core.dao.repository;

import core.model.Klientas;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.*;

public interface KlientasRepository extends JpaRepository<Klientas, Integer> {

    Klientas findByAsmensKodas(Integer AsmensKodas);

    List<Klientas> findByTeorinioData(Date TeorinioData);

    List<Klientas> findByPraktinioData(Date PraktinioData);

    List<Klientas> findByTeorinioIslaikymoData(Date TeorinioIslaikymoData);

}
