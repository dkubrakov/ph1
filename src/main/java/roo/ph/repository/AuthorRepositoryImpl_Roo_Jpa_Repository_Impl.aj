// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import roo.ph.domain.Author;
import roo.ph.domain.QAuthor;
import roo.ph.repository.AuthorRepositoryImpl;

privileged aspect AuthorRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare @type: AuthorRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String AuthorRepositoryImpl.NAME = "name";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String AuthorRepositoryImpl.ADDRESS = "address";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String AuthorRepositoryImpl.PHONE = "phone";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Author> AuthorRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QAuthor author = QAuthor.author;
        
        JPQLQuery<Author> query = from(author);
        
        Path<?>[] paths = new Path<?>[] {author.name,author.address,author.phone};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, author.name)
			.map(ADDRESS, author.address)
			.map(PHONE, author.phone);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, author);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Author> AuthorRepositoryImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        
        QAuthor author = QAuthor.author;
        
        JPQLQuery<Author> query = from(author);
        
        Path<?>[] paths = new Path<?>[] {author.name,author.address,author.phone};        
        applyGlobalSearch(globalSearch, query, paths);
        
        // Also, filter by the provided ids
        query.where(author.id.in(ids));
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, author.name)
			.map(ADDRESS, author.address)
			.map(PHONE, author.phone);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, author);
    }
    
}
