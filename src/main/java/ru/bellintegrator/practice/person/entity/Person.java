package ru.bellintegrator.practice.person.entity;

import ru.bellintegrator.practice.country.entity.Country;
import ru.bellintegrator.practice.doc.entity.Doc;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "Person")
public class Person {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Version
    private Integer version;

    @Column(name = "office_id", nullable = false)
    private Integer officeId;

    @Column(name = "first_name", length = 50, nullable = false)
    private String firstName;

    @Column(name = "second_name", length = 50)
    private String secondName;

    @Column(name = "third_name", length = 50)
    private String thirdName;

    @Column(name = "post", length = 50, nullable = false)
    private String post;

    @Column(name = "phone", length = 16)
    private String phone;

    @Column(name = "is_identified")
    private boolean isIdentified;

    @OneToOne(
            mappedBy = "person",
            fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            optional = false
    )
    private Doc doc;

    @ManyToMany(
            cascade = {
                    CascadeType.PERSIST,
                    CascadeType.MERGE
            }
    )
    @JoinTable(
            name = "Person_Country",
            joinColumns = @JoinColumn(name = "person_id"),
            inverseJoinColumns = @JoinColumn(name = "country_id")
    )
    private Set<Country> countries;

}
