package ru.bellintegrator.practice.office.entity;

import ru.bellintegrator.practice.person.entity.Person;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "Office")
public class Office {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Version
    private Integer version;

    @Column(name = "organization_id", nullable = false)
    private Integer organizationId;

    @Column(name = "name", length = 50, nullable = false)
    private String name;

    @Column(name = "address", length = 50, nullable = false)
    private String address;

    @Column(name = "phone", length = 16)
    private String phone;

    @Column(name = "is_active")
    private boolean isActive;

    @OneToMany(
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    @JoinColumn(name = "office_id")
    Set<Person> persons;

}
