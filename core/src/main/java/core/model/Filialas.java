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

    /*@OneToMany(mappedBy="fili")
    private Set<Darbuotojas> darb;

    public Set<Darbuotojas> getDarb() {
        return darb;
    }

    public void setDarb(Set<Darbuotojas> darb) {
        this.darb = darb;
    }

    @ManyToMany
    @JoinTable(
            name="turi",
            joinColumns=@JoinColumn(name="fk_Filialasid_Filialas", referencedColumnName="id_Filialas"),
            inverseJoinColumns=@JoinColumn(name="fk_Grupeid_Grupe", referencedColumnName="id_Grupe"))
    private Set<Grupe> grup;

    public Set<Grupe> getGrup() {
        return grup;
    }

    public void setGrup(Set<Grupe> grup) {
        this.grup = grup;
    }

    @OneToMany(mappedBy="filiTeo")
    private Set<Klientas> teorinis;

    @OneToMany(mappedBy="filiPra")
    private Set<Klientas> praktinis;

    public Set<Klientas> getPraktinis() {
        return praktinis;
    }

    public Set<Klientas> getTeorinis() {
        return teorinis;
    }

    public void setPraktinis(Set<Klientas> praktinis) {
        this.praktinis = praktinis;
    }

    public void setTeorinis(Set<Klientas> teorinis) {
        this.teorinis = teorinis;
    }*/
}
