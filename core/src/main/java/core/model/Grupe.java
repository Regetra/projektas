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

    @ManyToMany(mappedBy="grupes")
    private List<Klientas> klien;

    @ManyToMany
    @JoinTable(
            name="egzaminuoja",
            joinColumns=@JoinColumn(name="fk_Grupeid_Grupe", referencedColumnName="id_Grupe"),
            inverseJoinColumns=@JoinColumn(name="fk_Instruktoriusid_Instruktorius", referencedColumnName="id_Instruktorius"))
    private List<Instruktorius> inst;

    @OneToMany(mappedBy="gr")
    private Set<Automobilis> auto;

    @ManyToMany
    @JoinTable(
            name="turi",
            joinColumns=@JoinColumn(name="fk_Grupeid_Grupe", referencedColumnName="id_Grupe"),
            inverseJoinColumns=@JoinColumn(name="fk_Filialasid_Filialas", referencedColumnName="id_Filialas"))
    private List<Filialas> fili;

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

    public Set<Automobilis> getAuto() {
        return auto;
    }

    public void setAuto(Set<Automobilis> auto) {
        this.auto = auto;
    }

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

    public List<Filialas> getFili() {
        return fili;
    }

    public void setFili(List<Filialas> fili) {
        this.fili = fili;
    }
}
