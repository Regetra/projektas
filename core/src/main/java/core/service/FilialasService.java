package core.service;

import core.model.Filialas;
import core.model.Klientas;

import java.util.Date;
import java.util.List;

public interface FilialasService {

    List<Filialas> findAllFili();

    /*List<Klientas> findAllLaikanciusTeorija(Date laikas, int teorinis);

    List<Klientas> findAllLaikanciusPraktika(Date laikas, int praktinis);*/


}
