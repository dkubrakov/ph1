// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import roo.ph.domain.Employer;
import roo.ph.repository.EmployerRepository;

privileged aspect EmployerRepository_Roo_Jpa_Repository {
    
    declare @type: EmployerRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param name
     * @param pageable
     * @return Page
     */
    public abstract Page<Employer> EmployerRepository.findByName(String name, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param name
     * @return Long
     */
    public abstract long EmployerRepository.countByName(String name);
    
}
