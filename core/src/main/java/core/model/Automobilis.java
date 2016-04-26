package core.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "automobilis")

public class Automobilis {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer Id;

    @Column(name = "Modelis")
    private String modelis;

    @Column(name = "Marke")
    private  String marke;

    @Column(name = "Grupe")
    private String grupe;

    public Integer getId(){return Id;}

    public void setId(Integer Id){this.Id = Id;}

    public String getMarke() {
        return marke;
    }

    public void setMarke(String marke) {
        this.marke = marke;
    }

    public String getModelis() {
        return modelis;
    }

    public String getGrupe() {
        return grupe;
    }

    public void setGrupe(String grupe) {
        this.grupe = grupe;
    }

    public void setModelis(String modelis) {
        this.modelis = modelis;
    }
}
