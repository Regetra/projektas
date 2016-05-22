package core.model;

import javax.persistence.*;
import java.math.BigInteger;
import java.sql.Date;
import java.util.List;
import java.util.Set;

/**
 * Created by SimphonX on 2016-04-23.
 */
@Entity
@Table(name = "klientas")
public class Klientas {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_klientas")
    private Integer id;

    @Column(name = "VairavimoEgzaminas")
    private Integer vairavimoEgzaminas;

    @Column(name = "Vardas;")
    private String vardas;

    @Column(name = "Amzius")
    private Integer amzius;

    @Column(name = "Pavarde")
    private String pavarde;

    @Column(name = "AsmensKodas")
    private Long asmensKodas;

    @Column(name = "TeorinioData")
    private Date teorinioData;

    @Column(name = "PraktinioData")
    private Date praktinioData;

    @Column(name = "TeorinioIslaikymoData")
    private Date teorinioIslaikymoData;


    public Integer getVairavimoEgzaminas() {
        return vairavimoEgzaminas;
    }

    public Date getPraktinioData() {
        return praktinioData;
    }

    public Date getTeorinioData() {
        return teorinioData;
    }

    public Date getTeorinioIslaikymoData() {
        return teorinioIslaikymoData;
    }

    public Integer getAmzius() {
        return amzius;
    }

    public Long getAsmensKodas() {
        return asmensKodas;
    }

    public Integer getId() {
        return id;
    }

    public String getPavarde() {
        return pavarde;
    }

    public String getVardas() {
        return vardas;
    }

    public void setAmzius(Integer amzius) {
        this.amzius = amzius;
    }

    public void setAsmensKodas(Long asmensKodas) {
        this.asmensKodas = asmensKodas;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setPavarde(String pavarde) {
        this.pavarde = pavarde;
    }

    public void setPraktinioData(Date praktinioData) {
        this.praktinioData = praktinioData;
    }

    public void setTeorinioData(Date teorinioData) {
        this.teorinioData = teorinioData;
    }

    public void setTeorinioIslaikymoData(Date teorinioIslaikymoData) {
        this.teorinioIslaikymoData = teorinioIslaikymoData;
    }

    public void setVairavimoEgzaminas(Integer vairavimoEgzaminas) {
        this.vairavimoEgzaminas = vairavimoEgzaminas;
    }

    public void setVardas(String vardas) {
        this.vardas = vardas;
    }

    @OneToMany(mappedBy="klie")
    private List<Uzsakymas> uzsa;

    public List<Uzsakymas> getUzsa() {
        return (uzsa != null) ? uzsa : null;
    }

    public void setUzsa(List<Uzsakymas> uzsa) {
        this.uzsa = uzsa;
    }
    @ManyToMany
    @JoinTable(
            name="laiko",
            joinColumns=@JoinColumn(name="fk_klientasid_klientas", referencedColumnName="id_klientas"),
            inverseJoinColumns=@JoinColumn(name="fk_Grupeid_Grupe", referencedColumnName="id_Grupe"))

    private List<Grupe> grupes;

    public List<Grupe> getGrupes() {
        return grupes;
    }

    public void setGrupes(List<Grupe> grupes) {
        this.grupes = grupes;
    }

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="fk_filialasTeo", nullable=true)
    private Filialas filiTeo;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="fk_filialasPra", nullable=true)
    private Filialas filiPra;

    public Filialas getFiliPra() {
        return (filiPra != null) ? filiPra : null;
    }

    public Filialas getFiliTeo() {
        return (filiTeo != null) ? filiTeo : null;
    }

    public void setFiliPra(Filialas filiPra) {
        this.filiPra = filiPra;
    }

    public void setFiliTeo(Filialas filiTeo) {
        this.filiTeo = filiTeo;
    }
}
