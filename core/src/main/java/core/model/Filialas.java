package core.model;

import javax.persistence.*;

@Entity
@Table(name = "filialas")

public class Filialas {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer Id;

    @Column(name = "Miestas")
    private String Miestas;

    @Column(name = "Adresas")
    private  String Adresas;


    public Integer getId(){return Id;}

    public void setId(Integer Id){this.Id = Id;}

    public String getAdresas() {
        return Adresas;
    }

    public String getMiestas() {
        return Miestas;
    }

    public void setAdresas(String adresas) {
        Adresas = adresas;
    }

    public void setMiestas(String miestas) {
        Miestas = miestas;
    }

}
