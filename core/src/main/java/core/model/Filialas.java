package core.model;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "filialas")

public class Filialas {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_Filialas")
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

    @OneToMany(mappedBy="fili")
    private List<Darbuotojas> darb;

    public List<Darbuotojas> getDarb() {
        return darb;
    }

    public void setDarb(List<Darbuotojas> darb) {
        this.darb = darb;
    }

    @ManyToMany(mappedBy="fili")

    private List<Grupe> grup;

    public List<Grupe> getGrup() {
        return grup;
    }

    public void setGrup(List<Grupe> grup) {
        this.grup = grup;
    }

    @OneToMany(mappedBy="filiTeo")
    private List<Klientas> teorinis;

    @OneToMany(mappedBy="filiPra")
    private List<Klientas> praktinis;

    public List<Klientas> getPraktinis() {
        return (praktinis != null) ? praktinis : null;
    }

    public List<Klientas> getTeorinis() {
        return (teorinis != null) ? teorinis : null;
    }

    public void setPraktinis(List<Klientas> praktinis) {
        this.praktinis = praktinis;
    }

    public void setTeorinis(List<Klientas> teorinis) {
        this.teorinis = teorinis;
    }

}
