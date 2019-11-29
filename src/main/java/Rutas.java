import com.google.gson.Gson;
import kong.unirest.HttpResponse;
import kong.unirest.JsonNode;
import kong.unirest.Unirest;
import spark.ModelAndView;
import spark.Spark;
import spark.template.freemarker.FreeMarkerEngine;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Rutas {

    public void manejoRutas()
    {
        Spark.get("/", (request, response)-> {
            HttpResponse<String> respuesta = Unirest.get("http://localhost:4567/rest/estudiantes/")
                    .header("accept", "application/json")
                    .queryString("apiKey", "123")
                    .asString();

            Estudiante[] estudiantes = new Gson().fromJson(respuesta.getBody(), (Type) Estudiante[].class) ;
            Map<String, Object> attributes = new HashMap<>();

            attributes.put("listaEstudiantes", estudiantes);
            return new FreeMarkerEngine().render(new ModelAndView(attributes,"index.ftl"));

        });

        Spark.get("/estudiante", (request, response)->{
            HttpResponse<String> respuesta = Unirest.get("http://localhost:4567/rest/estudiantes/{matricula}")
                    .header("accept", "application/json")
                    .queryString("apiKey", "123")
                    .routeParam("matricula", request.queryParams("matricula"))
                    .asString();

            Estudiante estudiantes = new Gson().fromJson(respuesta.getBody(), (Type) Estudiante.class) ;
            System.out.println(estudiantes.getMatricula() + "" + estudiantes.getNombre());
            Map<String, Object> attributes = new HashMap<>();

            attributes.put("estudiantebuscado", estudiantes);
            return new FreeMarkerEngine().render(new ModelAndView(attributes,"index.ftl"));
        });

        Spark.get("/form", (request, response)->{

            return new FreeMarkerEngine().render(new ModelAndView(null,"register.ftl"));
        });

        Spark.post("/crear", (request, response)->{
            Estudiante est = new Estudiante();

            est.setNombre(request.queryParams("nombre"));

            if(request.params("correo") != null)
            {
                est.setCorreo(request.queryParams("correo"));
            }

            if(request.params("carrera") != null)
            {
                est.setCarrera(request.queryParams("carrera"));
            }

            System.out.println(est.getNombre() + " " + est.getCorreo() + " " + est.getCarrera());

            HttpResponse<String> respuesta = Unirest.post("http://localhost:4567/rest/estudiantes/")
                    .header("Content-Type", "application/json")
                    .body(est)
                    .asEmpty();

            System.out.println("Satisfactorio");

            response.redirect("/");

            return "";
        });
    }
}
