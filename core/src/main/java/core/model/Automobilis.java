package core.model;

import javax.persistence.*;

@Entity
@Table(name = "garazas")

public class Automobilis {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_automobilis")
    private Integer Id;

    @Column(name = "Modelis")
    private String modelis;

    @Column(name = "Marke")
    private  String marke;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="fk_Grupeid_Grupe")
    private Grupe gr;

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

    public void setModelis(String modelis) {
        this.modelis = modelis;
    }

    public Grupe getGr() {
        return gr;
    }

    public void setGr(Grupe gr) {
        this.gr = gr;
    }
}
