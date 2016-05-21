package core.model;

import javax.persistence.*;
import java.util.List;

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

    @ManyToMany
    @JoinTable(
            name="turi",
            joinColumns=@JoinColumn(name="fk_Filialasid_Filialas", referencedColumnName="id_Filialas"),
            inverseJoinColumns=@JoinColumn(name="fk_Grupeid_Grupe", referencedColumnName="id_Grupe"))
    private List<Grupe> grup;

    public List<Grupe> getGrup() {
        return grup;
    }

    public void setGrup(List<Grupe> grup) {
        this.grup = grup;
    }

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="fk_filialasTeo")
    private Filialas filiTeo;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="fk_filialasPra")
    private Filialas filiPra;

    public Filialas getFiliPra() {
        return filiPra;
    }

    public Filialas getFiliTeo() {
        return filiTeo;
    }

    public void setFiliPra(Filialas filiPra) {
        this.filiPra = filiPra;
    }

    public void setFiliTeo(Filialas filiTeo) {
        this.filiTeo = filiTeo;
    }
}
