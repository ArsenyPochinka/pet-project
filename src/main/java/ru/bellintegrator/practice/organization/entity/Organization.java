package ru.bellintegrator.practice.organization.entity;

import ru.bellintegrator.practice.office.entity.Office;

import javax.persistence.*;
import java.util.Set;

@Entity(name = "Organization")
public class Organization {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Version
    private Integer version;

    @Column(name = "name", length = 50, nullable = false)
    private String name;

    @Column(name = "full_name", length = 50, nullable = false)
    private String fullName;

    @Column(name = "inn", length = 12, nullable = false)
    private String inn;

    @Column(name = "kpp", length = 9, nullable = false)
    private String kpp;

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
    @JoinColumn(name = "organization_id")
    private Set<Office> offices;
}
