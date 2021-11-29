package ru.bellintegrator.practice.country.entity;

import ru.bellintegrator.practice.doc.entity.TypeDoc;
import ru.bellintegrator.practice.person.entity.Person;

import javax.persistence.*;

@Entity(name = "Country")
public class Country {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Version
    private Integer version;

    @Column(name = "name", length = 50, nullable = false)
    private String name;

    @Column(name = "code", length = 10, nullable = false)
    private String code;





    }