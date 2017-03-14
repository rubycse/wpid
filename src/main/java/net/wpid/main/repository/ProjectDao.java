package net.wpid.main.repository;

import net.wpid.auth.domain.User;
import net.wpid.main.domain.Project;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * @author lutfun
 * @since 3/9/17
 */

@Repository
public class ProjectDao {

    @PersistenceContext
    private EntityManager em;

    @Transactional
    public Project save(Project project) {

        if (project.getId() == 0) {
            em.persist(project);
            return project;
        }

        return em.merge(project);
    }

    public Project getProject(long id) {
        return em.find(Project.class, id);
    }

    @Transactional
    public void deleteProject(long id) {
        em.remove(getProject(id));
    }

    public List<Project> getProjects(User user) {
        return em.createQuery("FROM Project p WHERE p.createdBy = :user", Project.class)
                .setParameter("user", user)
                .getResultList();
    }
}
