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
@Table(name = "grupe")
public class Grupe {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "Amzius")
    private Integer Amzius;

    @Column(name = "Pavadinimas")
    private String Pavadinimas;

    public Integer getAmzius() {
        return Amzius;
    }

    public Integer getId() {
        return id;
    }

    public String getPavadinimas() {
        return Pavadinimas;
    }

    public void setAmzius(Integer amzius) {
        Amzius = amzius;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setPavadinimas(String pavadinimas) {
        Pavadinimas = pavadinimas;
    }

}
