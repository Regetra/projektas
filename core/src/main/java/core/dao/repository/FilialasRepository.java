package core.dao.repository;

import core.model.Filialas;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FilialasRepository extends JpaRepository<Filialas, Integer> {

    Filialas findByMiestasAndAdresas(String Miestas, String Adresas);

}
