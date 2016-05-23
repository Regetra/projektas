package core.model;

import javax.persistence.*;

/**
 * Created by SimphonX on 2016-04-23.
 */

@Entity
@Table(name = "darbuotojas")

public class Darbuotojas {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_Darbuotojas")
    private Integer Id;

    @Column(name = "Vardas")
    private String vardas;

    @Column(name = "Pavarde")
    private String pavarde;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="fk_Filialasid_Filialas")
    private Filialas fili;

    public Integer getId() {
        return Id;
    }

    public String getPavarde() {
        return pavarde;
    }

    public String getVardas() {
        return vardas;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public void setPavarde(String pavarde) {
        this.pavarde = pavarde;
    }

    public void setVardas(String vardas) {
        this.vardas = vardas;
    }

    public Filialas getFili() {
        return fili;
    }

    public void setFili(Filialas fili) {
        this.fili = fili;
    }
}
