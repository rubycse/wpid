package net.wpid.main.repository;

import net.wpid.main.domain.Project;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * @author lutfun
 * @since 3/9/17
 */

@Repository
public class WpidDao {

    @PersistenceContext
    private EntityManager em;

    public Project save(Project project) {

        if (project.getId() == 0) {
            em.persist(project);
            return project;
        }

        project = em.merge(project);
        return project;
    }
}
