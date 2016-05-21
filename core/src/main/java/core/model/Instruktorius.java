package core.model;

import javax.persistence.*;

/**
 * Created by SimphonX on 2016-04-23.
 */
@Entity
@Table(name = "instruktorius")
public class Instruktorius {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "Vardas")
    private String vardas;

    @Column(name = "Pavarde")
    private String pavarde;

    @Column(name = "Darbo stazas")
    private  Integer stazas;

    @Column(name = "Kategorijos")
    private String kategorijos;

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

    public Grupe getGrupe() {
        return grupe;
    }

    public Integer getStazas() {
        return stazas;
    }

    public String getKategorijos() {
        return kategorijos;
    }

    public void setGrupe(Grupe grupe) {
        this.grupe = grupe;
    }

    public void setKategorijos(String kategorijos) {
        this.kategorijos = kategorijos;
    }

    public void setStazas(Integer stazas) {
        this.stazas = stazas;
    }

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="fk_Grupeid_Grupe")
    private Grupe grupe;
}
