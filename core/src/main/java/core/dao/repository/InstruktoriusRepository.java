package core.dao.repository;

import core.model.Instruktorius;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InstruktoriusRepository extends JpaRepository<Instruktorius, Integer> {

    Instruktorius findByVardasAndPavarde(String Vardas, String Pavarde);

}
