package core.dao;

import core.model.Grupe;

import java.util.List;

/**
 * Created by SimphonX on 2016-04-23.
 */
public interface GrupeDao {

    List<Grupe> findAll();

    Grupe findByPavadinimas(String Pavadinimas);
}
