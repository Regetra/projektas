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
@Table(name = "uzsakymas")

public class Uzsakymas {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "UsakymoData")
    private Date UsakymoData;

    @Column(name = "PristatymoVieta")
    private String PristatymoVieta;

    public Date getUsakymoData() {
        return UsakymoData;
    }

    public Integer getId() {
        return id;
    }

    public String getPristatymoVieta() {
        return PristatymoVieta;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setPristatymoVieta(String pristatymoVieta) {
        PristatymoVieta = pristatymoVieta;
    }

    public void setUsakymoData(Date usakymoData) {
        UsakymoData = usakymoData;
    }

}
