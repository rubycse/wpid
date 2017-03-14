package net.wpid.main.domain;

import net.wpid.auth.domain.User;

import javax.persistence.*;

/**
 * @author lutfun
 * @since 3/9/17
 */

@Entity
@Table(name = "project")
public class Project {

    @Id
    @GeneratedValue
    private long id;

    private String name;

    private String description;

    @ManyToOne
    @JoinColumn(name = "created_by_id")
    private User createdBy;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(User createdBy) {
        this.createdBy = createdBy;
    }
}
