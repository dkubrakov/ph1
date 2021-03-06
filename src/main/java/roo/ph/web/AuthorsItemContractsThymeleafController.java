package roo.ph.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooDetail;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import roo.ph.domain.Author;

/**
 * = AuthorsItemContractsThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Author.class, type = ControllerType.DETAIL)
@RooDetail(relationField = "contracts", views = { "list", "show" })
@RooThymeleaf
public class AuthorsItemContractsThymeleafController {
}
