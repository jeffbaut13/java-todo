package proyecto.estudiante.servicio;

import lombok.RequiredArgsConstructor;
import org.hibernate.sql.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import proyecto.estudiante.entidad.Estudiante;
import proyecto.estudiante.repositorio.EstudianteRepositorio;

import java.util.List;
import java.util.Optional;

@Service //Especifica que es un servicio
@RequiredArgsConstructor //Crea el metodo constructor  para las clases que importo
public class EstudianteServicio {
    @Autowired
    private EstudianteRepositorio estudianteRepositorio; //Importe el Repositorio
   //este metodo muestra todos los estudiantes
    public List<Estudiante> retornarEstudiantes(){
        return estudianteRepositorio.findAll();
    }
    //este metodo muestra un estudiante segun su numero de documento
    public Optional<Estudiante> mostrarEstudiante(String documento){
        return estudianteRepositorio.findById(documento);
    }
    //este metodo guarda un nuevo estudiante
    public Estudiante guardarEstudiante(Estudiante estudianteNuevo){
        return estudianteRepositorio.save(estudianteNuevo);
    }
    // Este metodo actualiza un estudiante
    public Optional<Estudiante> actualizarEstudiante(String documento, Estudiante nuevoEstudiante) {
        Optional<Estudiante> estudianteExistente = estudianteRepositorio.findById(documento);
        if (estudianteExistente.isPresent()) {
            Estudiante estudiante = estudianteExistente.get();
            estudiante.setNombreEstudiante(nuevoEstudiante.getNombreEstudiante());
            estudiante.setApellidoEstudiante(nuevoEstudiante.getApellidoEstudiante());
            estudiante.setEdadEstudiante(nuevoEstudiante.getEdadEstudiante());
            return Optional.of(estudianteRepositorio.save(estudiante));
        }
        return Optional.empty(); // Retorna vacío si el estudiante no existe
    }
    //este metodo elimina un estudiante
    public boolean borrarEstudiante(String documento){
        try{
            //Try es un manejador de errores. si no hay error muestra true
            estudianteRepositorio.deleteById(documento);
            return true;
        } catch (Exception exception) {
            //exception es una clase que maneja errores
            return false;
        }

    }
}
