package proyecto.estudiante.jspControlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import proyecto.estudiante.entidad.Estudiante;
import proyecto.estudiante.servicio.EstudianteServicio;

import java.util.Optional;

@Controller
@RequestMapping("/estudiante")
public class EstudianteJspControlador {

  @Autowired
  private EstudianteServicio estudianteServicio;

  @GetMapping("/all")
  public String obtenerTodosLosEstudiantes(Model model, @RequestParam(required = false) String documento) {
    model.addAttribute("estudiantes", estudianteServicio.retornarEstudiantes());

    if (documento != null && !documento.isEmpty()) {
      Optional<Estudiante> estudiante = estudianteServicio.mostrarEstudiante(documento);
      estudiante.ifPresent(value -> model.addAttribute("estudianteSeleccionado", value));
    }

    return "estudiante"; // Thymeleaf buscará estudiante.html en src/main/resources/templates
  }

  @PostMapping("/save")
  public String guardarEstudiante(@ModelAttribute Estudiante estudiante) {
    try {
      estudianteServicio.guardarEstudiante(estudiante);
      return "redirect:/estudiante/all";
    } catch (Exception e) {
      return "redirect:/estudiante/all?message=error";
    }
  }

  @PostMapping("/delete")
  public String borrarEstudiante(@RequestParam String documento) {
    try {
      boolean eliminado = estudianteServicio.borrarEstudiante(documento);
      return eliminado ? "redirect:/estudiante/all" : "redirect:/estudiante/all?message=error";
    } catch (Exception e) {
      return "redirect:/estudiante/all?message=error";
    }
  }

  @PostMapping("/update")
  public String actualizarEstudiante(@ModelAttribute Estudiante estudiante, @RequestParam String documento) {
    try {
      Optional<Estudiante> actualizado = estudianteServicio.actualizarEstudiante(documento, estudiante);
      return actualizado.isPresent() ? "redirect:/estudiante/all" : "redirect:/estudiante/all?message=error";
    } catch (Exception e) {
      return "redirect:/estudiante/all?message=error";
    }
  }
}
