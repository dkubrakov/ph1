// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.web;

import io.springlets.web.NotFoundException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;
import roo.ph.domain.Book;
import roo.ph.service.api.BookService;
import roo.ph.web.BooksItemJsonController;

privileged aspect BooksItemJsonController_Roo_JSON {
    
    declare @type: BooksItemJsonController: @RestController;
    
    declare @type: BooksItemJsonController: @RequestMapping(value = "/books/{book}", name = "BooksItemJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private BookService BooksItemJsonController.bookService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param bookService
     */
    @Autowired
    public BooksItemJsonController.new(BookService bookService) {
        this.bookService = bookService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return BookService
     */
    public BookService BooksItemJsonController.getBookService() {
        return bookService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param bookService
     */
    public void BooksItemJsonController.setBookService(BookService bookService) {
        this.bookService = bookService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Book
     */
    @ModelAttribute
    public Book BooksItemJsonController.getBook(@PathVariable("book") Long id) {
        Book book = bookService.findOne(id);
        if (book == null) {
            throw new NotFoundException(String.format("Book with identifier '%s' not found",id));
        }
        return book;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param book
     * @return ResponseEntity
     */
    @GetMapping(name = "show")
    public ResponseEntity<?> BooksItemJsonController.show(@ModelAttribute Book book) {
        return ResponseEntity.ok(book);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param book
     * @return UriComponents
     */
    public static UriComponents BooksItemJsonController.showURI(Book book) {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(BooksItemJsonController.class).show(book))
            .buildAndExpand(book.getId()).encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storedBook
     * @param book
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(name = "update")
    public ResponseEntity<?> BooksItemJsonController.update(@ModelAttribute Book storedBook, @Valid @RequestBody Book book, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        book.setId(storedBook.getId());
        getBookService().save(book);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param book
     * @return ResponseEntity
     */
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> BooksItemJsonController.delete(@ModelAttribute Book book) {
        getBookService().delete(book);
        return ResponseEntity.ok().build();
    }
    
}
