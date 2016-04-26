package core.model;

import javax.persistence.*;

@Entity
@Table(name = "filialas")

public class Filialas {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer Id;

    @Column(name = "Miestas")
    private String miestas;

    @Column(name = "Adresas")
    private  String adresas;


    public Integer getId(){return Id;}

    public void setId(Integer Id){this.Id = Id;}

    public String getAdresas() {
        return adresas;
    }

    public String getMiestas() {
        return miestas;
    }

    public void setAdresas(String adresas) {
        this.adresas = adresas;
    }

    public void setMiestas(String miestas) {
        this.miestas = miestas;
    }

}
