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
@Table(name = "darbuotojas")

public class Darbuotojas {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer Id;

    @Column(name = "Vardas")
    private String vardas;

    @Column(name = "Pavarde")
    private String pavarde;

    public Integer getId() {
        return Id;
    }

    public String getPavarde() {
        return pavarde;
    }

    public String getVardas() {
        return vardas;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public void setPavarde(String pavarde) {
        this.pavarde = pavarde;
    }

    public void setVardas(String vardas) {
        this.vardas = vardas;
    }
}
