package core.model;

import javax.persistence.*;
import java.util.List;
import java.util.Set;


/**
 * Created by SimphonX on 2016-04-23.
 */
@Entity
@Table(name = "instruktorius")
public class Instruktorius {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_Instruktorius")
    private Integer id;

    @Column(name = "Vardas")
    private String vardas;

    @Column(name = "Pavarde")
    private String pavarde;

    @Column(name = "Darbo_stazas")
    private  Integer stazas;

    @Column(name = "Kategorijos")
    private String kategorijos;

    @ManyToMany(mappedBy="inst")
    private List<Grupe> grupe;

    public Integer getId() {
        return id;
    }

    public String getPavarde() {
        return pavarde;
    }

    public String getVardas() {
        return vardas;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setPavarde(String pavarde) {
        this.pavarde = pavarde;
    }

    public void setVardas(String vardas) {
        this.vardas = vardas;
    }

    public Integer getStazas() {
        return stazas;
    }

    public String getKategorijos() {
        return kategorijos;
    }

    public void setKategorijos(String kategorijos) {
        this.kategorijos = kategorijos;
    }

    public void setStazas(Integer stazas) {
        this.stazas = stazas;
    }

    public List<Grupe> getGrupe() {
        return grupe;
    }

    public void setGrupe(List<Grupe> grupe) {
        this.grupe = grupe;
    }
}
