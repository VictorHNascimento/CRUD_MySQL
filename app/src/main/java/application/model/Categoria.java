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
import jakarta.persitence.OneToMany;
import jakarta.persitence.Table;

@Entity
@Table (name = "categorias")

public class Categoria{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTIFY)
    private long id;
    @Column (unique = true, nullable = false)
    private String name;

public void setId(long id) {
    this.id = id;
}

public long getId(){
    return id;
}

public void setName(String name){
    this.name = name;
}

public String getName() {
    return name;
}

}
