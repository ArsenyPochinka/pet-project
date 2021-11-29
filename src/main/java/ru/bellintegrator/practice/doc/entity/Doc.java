package ru.bellintegrator.practice.doc.entity;

import ru.bellintegrator.practice.person.entity.Person;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "Doc")
public class Doc {

    @Id
    @Column(name = "person_id")
    private Integer personId;

    @Version
    private Integer version;

//    @Column(name = "doc_type_id", nullable = false)
//    private Integer docTypeId;

    @Column(name = "doc_number", length = 12, nullable = false)
    private String docNumber;

    @Column(name = "doc_date", length = 10, nullable = false)
    private String docDate;

    @OneToOne(fetch = FetchType.LAZY)
    @MapsId
    private Person person;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "doc_type_id")
    private TypeDoc typeDoc;

}