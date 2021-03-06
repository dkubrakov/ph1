// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.web;

import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.datatables.ConvertedDatatablesData;
import io.springlets.data.web.datatables.Datatables;
import io.springlets.data.web.datatables.DatatablesColumns;
import io.springlets.data.web.datatables.DatatablesPageable;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.convert.ConversionService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import roo.ph.domain.Author;
import roo.ph.domain.Book;
import roo.ph.service.api.AuthorService;
import roo.ph.service.api.BookService;
import roo.ph.web.AuthorsCollectionThymeleafController;
import roo.ph.web.AuthorsCollectionThymeleafLinkFactory;
import roo.ph.web.AuthorsItemBooksThymeleafController;

privileged aspect AuthorsItemBooksThymeleafController_Roo_Thymeleaf {
    
    declare @type: AuthorsItemBooksThymeleafController: @Controller;
    
    declare @type: AuthorsItemBooksThymeleafController: @RequestMapping(value = "/authors/{author}/books", name = "AuthorsItemBooksThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private AuthorService AuthorsItemBooksThymeleafController.authorService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private BookService AuthorsItemBooksThymeleafController.bookService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource AuthorsItemBooksThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<AuthorsCollectionThymeleafController> AuthorsItemBooksThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ConversionService AuthorsItemBooksThymeleafController.conversionService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param authorService
     * @param bookService
     * @param conversionService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public AuthorsItemBooksThymeleafController.new(AuthorService authorService, BookService bookService, ConversionService conversionService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setAuthorService(authorService);
        setBookService(bookService);
        setConversionService(conversionService);
        setMessageSource(messageSource);
        setCollectionLink(linkBuilder.of(AuthorsCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return AuthorService
     */
    public AuthorService AuthorsItemBooksThymeleafController.getAuthorService() {
        return authorService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param authorService
     */
    public void AuthorsItemBooksThymeleafController.setAuthorService(AuthorService authorService) {
        this.authorService = authorService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return BookService
     */
    public BookService AuthorsItemBooksThymeleafController.getBookService() {
        return bookService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param bookService
     */
    public void AuthorsItemBooksThymeleafController.setBookService(BookService bookService) {
        this.bookService = bookService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource AuthorsItemBooksThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void AuthorsItemBooksThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<AuthorsCollectionThymeleafController> AuthorsItemBooksThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void AuthorsItemBooksThymeleafController.setCollectionLink(MethodLinkBuilderFactory<AuthorsCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService AuthorsItemBooksThymeleafController.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void AuthorsItemBooksThymeleafController.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Author
     */
    @ModelAttribute
    public Author AuthorsItemBooksThymeleafController.getAuthor(@PathVariable("author") Long id, Locale locale, HttpMethod method) {
        Author author = null;
        if (HttpMethod.PUT.equals(method)) {
            author = authorService.findOneForUpdate(id);
        } else {
            author = authorService.findOne(id);
        }
        
        if (author == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Author", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return author;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void AuthorsItemBooksThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
        model.addAttribute("publication_date_format", "dd/MM/yyyy");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void AuthorsItemBooksThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param author
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatables", produces = Datatables.MEDIA_TYPE, value = "/dt")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Book>> AuthorsItemBooksThymeleafController.datatables(@ModelAttribute Author author, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<Book> books = getBookService().findByAuthor(author, search, pageable);
        long totalBooksCount = getBookService().countByAuthor(author);
        ConvertedDatatablesData<Book> data =  new ConvertedDatatablesData<Book>(books, totalBooksCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param datatablesColumns
     * @param search
     * @param pageable
     * @param draw
     * @return ResponseEntity
     */
    @GetMapping(name = "datatablesByIdsIn", produces = Datatables.MEDIA_TYPE, value = "/dtByIdsIn")
    @ResponseBody
    public ResponseEntity<ConvertedDatatablesData<Book>> AuthorsItemBooksThymeleafController.datatablesByIdsIn(@RequestParam("ids") List<Long> ids, DatatablesColumns datatablesColumns, GlobalSearch search, DatatablesPageable pageable, @RequestParam("draw") Integer draw) {
        
        Page<Book> books = getBookService().findAllByIdsIn(ids, search, pageable);
        long totalBooksCount = books.getTotalElements();
        ConvertedDatatablesData<Book> data =  new ConvertedDatatablesData<Book>(books, totalBooksCount, draw, getConversionService(), datatablesColumns);
        return ResponseEntity.ok(data);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param author
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/create-form", name = "createForm")
    public ModelAndView AuthorsItemBooksThymeleafController.createForm(@ModelAttribute Author author, Model model) {
        populateForm(model);
        model.addAttribute("book", new Book());
        return new ModelAndView("authors/books/create");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param author
     * @param booksToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromBooks", value = "/{booksToRemove}")
    @ResponseBody
    public ResponseEntity<?> AuthorsItemBooksThymeleafController.removeFromBooks(@ModelAttribute Author author, @PathVariable("booksToRemove") Long booksToRemove) {
        getAuthorService().removeFromBooks(author,Collections.singleton(booksToRemove));
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param author
     * @param booksToRemove
     * @return ResponseEntity
     */
    @DeleteMapping(name = "removeFromBooksBatch", value = "/batch/{booksToRemove}")
    @ResponseBody
    public ResponseEntity<?> AuthorsItemBooksThymeleafController.removeFromBooksBatch(@ModelAttribute Author author, @PathVariable("booksToRemove") Collection<Long> booksToRemove) {
        getAuthorService().removeFromBooks(author, booksToRemove);
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param author
     * @param books
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PostMapping(name = "create")
    public ModelAndView AuthorsItemBooksThymeleafController.create(@ModelAttribute Author author, @RequestParam(value = "booksIds", required = false) List<Long> books, @RequestParam("parentVersion") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Remove empty values
        if (books != null) {
            for (Iterator<Long> iterator = books.iterator(); iterator.hasNext();) {
                if (iterator.next() == null) {
                    iterator.remove();
                }
            }
        }
        // Concurrency control
        if(!Objects.equals(version, author.getVersion()) && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            // Obtain the selected books and include them in the author that will be 
            // included in the view
            if (books != null) {
                author.setBooks(new HashSet<Book>(getBookService().findAll(books)));
            }else{
                author.setBooks(new HashSet<Book>());
            }
            // Reset the version to prevent update
             author.setVersion(version);
            // Include the updated element in the model
            model.addAttribute("author", author);
            model.addAttribute("concurrency", true);
            return new ModelAndView("authors/books/create");
        }else if(!Objects.equals(version, author.getVersion()) && "discard".equals(concurrencyControl)){
            populateForm(model);
            // Provide the original element from the Database
            model.addAttribute("author", author);
            model.addAttribute("concurrency", false);
            return new ModelAndView("authors/books/create");
        }
        getAuthorService().setBooks(author,books);
        return new ModelAndView("redirect:" + getCollectionLink().to(AuthorsCollectionThymeleafLinkFactory.LIST).toUriString());
    }
    
}
