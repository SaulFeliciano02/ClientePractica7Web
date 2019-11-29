public class Estudiante {

    private String nombre;
    private String matricula;
    private String correo;
    private String carrera;


    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public Estudiante() {

    }

    public Estudiante(String nombre, String matricula, String correo, String carrera) {
        this.nombre = nombre;
        this.matricula = matricula;
        this.correo = correo;
        this.carrera = carrera;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }
}
