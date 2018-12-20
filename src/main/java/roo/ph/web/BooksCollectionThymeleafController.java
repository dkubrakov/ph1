package roo.ph.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import roo.ph.domain.Book;

/**
 * = BooksCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Book.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class BooksCollectionThymeleafController {
}
