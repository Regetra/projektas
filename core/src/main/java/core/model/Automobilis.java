package core.model;

import javax.persistence.*;

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

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="fk_Grupeid_Grupe")
    private Grupe gr;

    public Grupe getGr() {
        return gr;
    }

    public void setGr(Grupe gr) {
        this.gr = gr;
    }
}
