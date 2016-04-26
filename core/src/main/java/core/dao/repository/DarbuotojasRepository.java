package core.dao.repository;

import core.model.Darbuotojas;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DarbuotojasRepository extends JpaRepository<Darbuotojas, Integer> {

    Darbuotojas findByVardasAndPavarde(String Vardas, String Pavarde);

}
