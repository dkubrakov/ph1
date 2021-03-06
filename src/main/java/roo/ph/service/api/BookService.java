package roo.ph.service.api;
import io.springlets.data.web.validation.ValidatorService;
import io.springlets.format.EntityResolver;
import org.springframework.roo.addon.layers.service.annotations.RooService;
import roo.ph.domain.Book;

/**
 * = BookService
 TODO Auto-generated class documentation
 *
 */
@RooService(entity = Book.class)
public interface BookService extends EntityResolver<Book, Long>, ValidatorService<Book> {
}
