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
@Table(name = "valstybe")
public class Valstybe {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "Pavadinimas")
    private String Pavadinimas;

    @Column(name = "IkurimoData")
    private Date IkurimoData;

    public Date getIkurimoData() {
        return IkurimoData;
    }

    public Integer getId() {
        return id;
    }

    public String getPavadinimas() {
        return Pavadinimas;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setIkurimoData(Date ikurimoData) {
        IkurimoData = ikurimoData;
    }

    public void setPavadinimas(String pavadinimas) {
        Pavadinimas = pavadinimas;
    }
}
