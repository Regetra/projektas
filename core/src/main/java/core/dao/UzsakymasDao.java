package core.dao;
import core.model.Uzsakymas;

import java.util.List;

/**
 * Created by SimphonX on 2016-04-23.
 */
public interface UzsakymasDao {

    List<Uzsakymas> findAll();

    Uzsakymas findByUsakymoDataAndPristatymoVieta(String UzsakymoData, String PristatymoVieta);

}
