// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.repository;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import roo.ph.domain.Author;
import roo.ph.domain.Book;
import roo.ph.domain.OrderBook;
import roo.ph.repository.BookRepositoryCustom;

privileged aspect BookRepositoryCustom_Roo_Jpa_Repository_Custom {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param author
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Book> BookRepositoryCustom.findByAuthor(Author author, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderBooks
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Book> BookRepositoryCustom.findByOrderBooksContains(OrderBook orderBooks, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Book> BookRepositoryCustom.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Book> BookRepositoryCustom.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
}