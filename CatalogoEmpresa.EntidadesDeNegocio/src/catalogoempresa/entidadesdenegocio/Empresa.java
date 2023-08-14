package catalogoempresa.entidadesdenegocio;

import java.util.ArrayList;

public class Empresa {
    private int Id;
    private int IdContacto;
    private String Nombre;
    private String Rubro;
    private String Categoria;
    private String Departamento;
    private int Top_aux;
    private Contacto contacto;

    public Empresa() {
    }

    public Empresa(int Id, int IdContacto, String Nombre, String Rubro, String Categoria, String Departamento, int Top_aux, Contacto contacto) {
        this.Id = Id;
        this.IdContacto = IdContacto;
        this.Nombre = Nombre;
        this.Rubro = Rubro;
        this.Categoria = Categoria;
        this.Departamento = Departamento;
        this.Top_aux = Top_aux;
        this.contacto = contacto;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public int getIdContacto() {
        return IdContacto;
    }

    public void setIdContacto(int IdContacto) {
        this.IdContacto = IdContacto;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getRubro() {
        return Rubro;
    }

    public void setRubro(String Rubro) {
        this.Rubro = Rubro;
    }

    public String getCategoria() {
        return Categoria;
    }

    public void setCategoria(String Categoria) {
        this.Categoria = Categoria;
    }

    public String getDepartamento() {
        return Departamento;
    }

    public void setDepartamento(String Departamento) {
        this.Departamento = Departamento;
    }

    public int getTop_aux() {
        return Top_aux;
    }

    public void setTop_aux(int Top_aux) {
        this.Top_aux = Top_aux;
    }

    public Contacto getContacto() {
        return contacto;
    }

    public void setContacto(Contacto contacto) {
        this.contacto = contacto;
    }
    
    
}
