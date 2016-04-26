package core.dao.repository;

import core.model.Automobilis;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AutomobilisRepository extends JpaRepository<Automobilis, Integer> {

    Automobilis findByModelisAndMarke(String Modelis, String Marke);

}
