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
@Table (name = "jogos")

public class Jogo{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTIFY)
    private long id;
    @Column (unique = true, nullable = false)
    private String title;

public void setId(long id) {
    this.id = id;
}

public long getId(){
    return id;
}

public void setTitle(String title){
    this.title = title;
}

public String getTitle() {
    return title;
}

}
