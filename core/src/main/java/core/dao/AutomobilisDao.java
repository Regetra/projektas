package core.dao;
import core.model.Automobilis;

import java.util.List;

/**
 * Created by SimphonX on 2016-04-23.
 */
public interface AutomobilisDao {
    List<Automobilis> findAll();

    Automobilis findByModelisAndMarke(String Modelis, String Marke);
}
