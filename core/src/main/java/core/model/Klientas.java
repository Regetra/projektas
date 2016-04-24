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
    private Boolean VairavimoEgzaminas;

    @Column(name = "Vardas;")
    private String Vardas;

    @Column(name = "Amzius")
    private Integer Amzius;

    @Column(name = "Pavarde")
    private String Pavarde;

    @Column(name = "AsmensKodas")
    private Integer AsmensKodas;

    @Column(name = "TeorijosEgzaminas")
    private Boolean	TeorijosEgzaminas;

    @Column(name = "TeorinioData")
    private Date TeorinioData;

    @Column(name = "PraktinioData")
    private Date PraktinioData;

    @Column(name = "TeorinioIslaikymoData")
    private Date TeorinioIslaikymoData;

    public Boolean getTeorijosEgzaminas() {
        return TeorijosEgzaminas;
    }

    public Boolean getVairavimoEgzaminas() {
        return VairavimoEgzaminas;
    }

    public Date getPraktinioData() {
        return PraktinioData;
    }

    public Date getTeorinioData() {
        return TeorinioData;
    }

    public Date getTeorinioIslaikymoData() {
        return TeorinioIslaikymoData;
    }

    public Integer getAmzius() {
        return Amzius;
    }

    public Integer getAsmensKodas() {
        return AsmensKodas;
    }

    public Integer getId() {
        return id;
    }

    public String getPavarde() {
        return Pavarde;
    }

    public String getVardas() {
        return Vardas;
    }

    public void setAmzius(Integer amzius) {
        Amzius = amzius;
    }

    public void setAsmensKodas(Integer asmensKodas) {
        AsmensKodas = asmensKodas;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setPavarde(String pavarde) {
        Pavarde = pavarde;
    }

    public void setPraktinioData(Date praktinioData) {
        PraktinioData = praktinioData;
    }

    public void setTeorijosEgzaminas(Boolean teorijosEgzaminas) {
        TeorijosEgzaminas = teorijosEgzaminas;
    }

    public void setTeorinioData(Date teorinioData) {
        TeorinioData = teorinioData;
    }

    public void setTeorinioIslaikymoData(Date teorinioIslaikymoData) {
        TeorinioIslaikymoData = teorinioIslaikymoData;
    }

    public void setVairavimoEgzaminas(Boolean vairavimoEgzaminas) {
        VairavimoEgzaminas = vairavimoEgzaminas;
    }

    public void setVardas(String vardas) {
        Vardas = vardas;
    }

}
