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
    private Date usakymoData;

    @Column(name = "PristatymoVieta")
    private String pristatymoVieta;

    public Date getUsakymoData() {
        return usakymoData;
    }

    public Integer getId() {
        return id;
    }

    public String getPristatymoVieta() {
        return pristatymoVieta;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setPristatymoVieta(String pristatymoVieta) {
        this.pristatymoVieta = pristatymoVieta;
    }

    public void setUsakymoData(Date usakymoData) {
        this.usakymoData = usakymoData;
    }

}
