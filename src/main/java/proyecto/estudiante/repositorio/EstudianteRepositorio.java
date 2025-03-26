package proyecto.estudiante.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import proyecto.estudiante.entidad.Estudiante;

@Repository //Anotación que indica que es un Repositorio
public interface EstudianteRepositorio extends JpaRepository<Estudiante,String> {
    //Especifico el nombre de la interfaz
    //JpaRepository nos ayuda a conectarnos a la base de datos de la entidad de Estudiante

}
