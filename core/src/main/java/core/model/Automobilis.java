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
    private String Modelis;

    @Column(name = "Marke")
    private  String Marke;

    @Column(name = "Grupe")
    private String Grupe;

    public Integer getId(){return Id;}

    public void setId(Integer Id){this.Id = Id;}

    public String getMarke() {
        return Marke;
    }

    public void setMarke(String marke) {
        Marke = marke;
    }

    public String getModelis() {
        return Modelis;
    }

    public String getGrupe() {
        return Grupe;
    }

    public void setGrupe(String grupe) {
        Grupe = grupe;
    }

    public void setModelis(String modelis) {
        Modelis = modelis;
    }
}
