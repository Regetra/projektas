package core.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

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
    private String Vardas;

    @Column(name = "Pavarde")
    private String Pavarde;

    public Integer getId() {
        return id;
    }

    public String getPavarde() {
        return Pavarde;
    }

    public String getVardas() {
        return Vardas;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setPavarde(String pavarde) {
        Pavarde = pavarde;
    }

    public void setVardas(String vardas) {
        Vardas = vardas;
    }
}
