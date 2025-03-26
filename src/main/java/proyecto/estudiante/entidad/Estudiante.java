package proyecto.estudiante.entidad;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Entity //Anotación para crear una entidad
@Table(name = "estudiante") //Anotación para especificar el nomnbre de la tabla
@Data //Anotación para crear metodos Getter y Setter
@AllArgsConstructor //Anotación para crear metodo constructor
@NoArgsConstructor
public class Estudiante { //creamos la clase Estudiante
    @Id //especifica que es un ID
    @Column(name = "doc_est") //especifica el nombre de columna doc_est
    private String documentoEstudiante;
    @Column(name = "nom_est") //especifica el nombre de columna nom_est
    private String nombreEstudiante;
    @Column(name = "ape_est") //especifica el nombre de columna ape_est
    private String apellidoEstudiante;
    @Column(name = "edad_est") //especifica el nombre de columna edad_est
    private Integer edadEstudiante;

    public String getDocumentoEstudiante() {
        return documentoEstudiante;
    }

    public void setDocumentoEstudiante(String documentoEstudiante) {
        this.documentoEstudiante = documentoEstudiante;
    }

    public String getNombreEstudiante() {
        return nombreEstudiante;
    }

    public void setNombreEstudiante(String nombreEstudiante) {
        this.nombreEstudiante = nombreEstudiante;
    }

    public String getApellidoEstudiante() {
        return apellidoEstudiante;
    }

    public void setApellidoEstudiante(String apellidoEstudiante) {
        this.apellidoEstudiante = apellidoEstudiante;
    }

    public Integer getEdadEstudiante() {
        return edadEstudiante;
    }

    public void setEdadEstudiante(Integer edadEstudiante) {
        this.edadEstudiante = edadEstudiante;
    }
}
