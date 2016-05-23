package core.model;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by SimphonX on 2016-04-23.
 */
@Entity
@Table(name = "uzsakymas")

public class Uzsakymas {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_Uzsakymas")
    private Integer id;

    @Column(name = "UsakymoData")
    private Date usakymoData;

    @Column(name = "PristatymoVieta")
    private String pristatymoVieta;

    @ManyToOne
    @JoinColumn(name="fk_klientasid_klientas", nullable=true)
    private Klientas klie;

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

    public Klientas getKlie() {
        return klie;
    }

    public void setKlie(Klientas klie) {
        this.klie = klie;
    }
}
