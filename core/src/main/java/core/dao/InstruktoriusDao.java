package core.dao;

import core.model.Instruktorius;

import java.util.List;

/**
 * Created by SimphonX on 2016-04-23.
 */
public interface InstruktoriusDao {

    List<Instruktorius> findAll();

    Instruktorius findByVardasAndPavarde(String Vardas, String Pavarde);

}
