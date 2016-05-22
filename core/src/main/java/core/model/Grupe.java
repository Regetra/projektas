package core.model;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

/**
 * Created by SimphonX on 2016-04-23.
 */
@Entity
@Table(name = "grupe")
public class Grupe {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_Grupe")
    private Integer id;

    @Column(name = "Amzius")
    private Integer amzius;

    @Column(name = "Pavadinimas")
    private String pavadinimas;

    @Column(name = "Komentaras")
    private String komentaras;

    public Integer getAmzius() {
        return amzius;
    }

    public Integer getId() {
        return id;
    }

    public String getPavadinimas() {
        return pavadinimas;
    }

    public void setAmzius(Integer amzius) {
        this.amzius = amzius;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setPavadinimas(String pavadinimas) {
        this.pavadinimas = pavadinimas;
    }

    public String getKomentaras() {
        return komentaras;
    }

    public void setKomentaras(String komentaras) {
        this.komentaras = komentaras;
    }


    @OneToMany(mappedBy="gr")
    private List<Automobilis> auto;

    public List<Automobilis> getAuto() {
        return auto;
    }

    public void setAuto(List<Automobilis> auto) {
        this.auto = auto;
    }

    @ManyToMany
    @JoinTable(
            name="laiko",
            joinColumns=@JoinColumn(name="fk_Grupeid_Grupe", referencedColumnName="id_Grupe"),
            inverseJoinColumns=@JoinColumn(name="fk_klientasid_klientas", referencedColumnName="id_klientas"))
    private List<Klientas> klien;

    @ManyToMany
    @JoinTable(
            name="egzaminuoja",
            joinColumns=@JoinColumn(name="fk_Grupeid_Grupe", referencedColumnName="id_Grupe"),
            inverseJoinColumns=@JoinColumn(name="fk_Instruktoriusid_Instruktorius", referencedColumnName="id_Instruktorius"))
    private List<Instruktorius> inst;

    public List<Instruktorius> getInst() {
        return inst;
    }

    public void setInst(List<Instruktorius> inst) {
        this.inst = inst;
    }

    public List<Klientas> getKlien() {
        return klien;
    }

    public void setKlien(List<Klientas> klien) {
        this.klien = klien;
    }

    @ManyToMany(mappedBy="grup")
    private List<Filialas> fili;

    public List<Filialas> getFili() {
        return fili;
    }

    public void setFili(List<Filialas> fili) {
        this.fili = fili;
    }
}
