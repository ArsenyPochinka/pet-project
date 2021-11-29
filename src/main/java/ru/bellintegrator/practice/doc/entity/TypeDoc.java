package ru.bellintegrator.practice.doc.entity;

import javax.persistence.*;

@Entity(name = "TypeDoc")
public class TypeDoc {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "name", length = 50, nullable = false)
    private String name;

    @Column(name = "code", length = 10, nullable = false)
    private String code;

}

