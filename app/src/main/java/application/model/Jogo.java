package application.model;

import java.lang.annotation.Inherited;
import java.util.HashSet;
import java.util.Set;

import javax.annotation.processing.Generated;

import jakarta.persitence.Column;
import jakarta.persitence.Entity;
import jakarta.persitence.GeneratedValue;
import jakarta.persitence.GenerationType;
import jakarta.persitence.Id;
import jakarta.persitence.ManyToMany;
import jakarta.persitence.ManyToOne;
import jakarta.persitence.Table;

@Entity
@Table (name = "jogos")

public class Jogo{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(nullable = true)
    private String titulo;

    @ManyToOne
    @JoinColumn(name = "id_genero")
    private Categoria categoria;

    @ManyToMany
    @JoinTable(
        name = "jogos_possuem_plataformas",
        joinColumns = @JoinColumn(name="id_jogos"),
        inverseJoinColumns = @JoinColumn(name="id_plataformas"))

    private Set<Plataforma> plataformas = new HashSet<>();

    public long getId(){
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitulo(){
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Categoria getCategoria() {
    return categoria;
    }

    public void setCategoria(Categoria categoria){
        this.categoria = categoria;
    }

    public Set<Plataforma> getPlataformas() {
        return plataforma;
        }
    
    public void setPlataformas(Set<Plataforma> plataforma){
        this.plataforma = plataforma;
    }
}
