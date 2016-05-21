package core.dao;

import core.model.Klientas;

import java.util.Date;
import java.util.List;

/**
 * Created by SimphonX on 2016-04-23.
 */
public interface KlientasDao {

    List<Klientas> findAll();

    Klientas findByAsmensKodas(Integer AsmensKodas);

    /*List<Klientas> findByTeorinioDataAndFilialas(Date TeorinioData, int filialas);

    List<Klientas> findByPraktinioDataAndFilialas(Date PraktinioData, int filialas);

    List<Klientas> findByTeorinioIslaikymoData(Date TeorinioIslaikymoData);*/

}
