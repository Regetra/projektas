package core.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by SimphonX on 2016-04-23.
 */
@Entity
@Table(name = "klientas")
public class Klientas {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "VairavimoEgzaminas")
    private Boolean vairavimoEgzaminas;

    @Column(name = "Vardas;")
    private String vardas;

    @Column(name = "Amzius")
    private Integer amzius;

    @Column(name = "Pavarde")
    private String pavarde;

    @Column(name = "AsmensKodas")
    private Integer asmensKodas;

    @Column(name = "TeorijosEgzaminas")
    private Boolean	teorijosEgzaminas;

    @Column(name = "TeorinioData")
    private Date teorinioData;

    @Column(name = "PraktinioData")
    private Date praktinioData;

    @Column(name = "TeorinioIslaikymoData")
    private Date teorinioIslaikymoData;

    public Boolean getTeorijosEgzaminas() {
        return teorijosEgzaminas;
    }

    public Boolean getVairavimoEgzaminas() {
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

    public Integer getAsmensKodas() {
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

    public void setAsmensKodas(Integer asmensKodas) {
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

    public void setTeorijosEgzaminas(Boolean teorijosEgzaminas) {
        this.teorijosEgzaminas = teorijosEgzaminas;
    }

    public void setTeorinioData(Date teorinioData) {
        this.teorinioData = teorinioData;
    }

    public void setTeorinioIslaikymoData(Date teorinioIslaikymoData) {
        this.teorinioIslaikymoData = teorinioIslaikymoData;
    }

    public void setVairavimoEgzaminas(Boolean vairavimoEgzaminas) {
        this.vairavimoEgzaminas = vairavimoEgzaminas;
    }

    public void setVardas(String vardas) {
        this.vardas = vardas;
    }

}
