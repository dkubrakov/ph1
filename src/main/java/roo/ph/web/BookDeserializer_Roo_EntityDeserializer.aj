// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;
import roo.ph.domain.Book;
import roo.ph.service.api.BookService;
import roo.ph.web.BookDeserializer;

privileged aspect BookDeserializer_Roo_EntityDeserializer {
    
    declare @type: BookDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return BookService
     */
    public BookService BookDeserializer.getBookService() {
        return bookService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param bookService
     */
    public void BookDeserializer.setBookService(BookService bookService) {
        this.bookService = bookService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService BookDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void BookDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Book
     * @throws IOException
     */
    public Book BookDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Book book = bookService.findOne(id);
        if (book == null) {
            throw new NotFoundException("Book not found");
        }
        return book;
    }
    
}
