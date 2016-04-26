package core.dao;
import core.model.Darbuotojas;

import java.util.List;

/**
 * Created by SimphonX on 2016-04-23.
 */
public interface DarbuotojasDao {
    List<Darbuotojas> findAll();

    Darbuotojas findByVardasAndPavarde(String Vardas, String Pavarde);
}
