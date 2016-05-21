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

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="fk_Grupeid_Grupe")
    private Grupe grupe;

    public Grupe getGr() {
        return grupe;
    }

    public void setGr(Grupe gr) {
        this.grupe = gr;
    }
}
