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
import roo.ph.domain.Author;
import roo.ph.service.api.AuthorService;
import roo.ph.web.AuthorDeserializer;

privileged aspect AuthorDeserializer_Roo_EntityDeserializer {
    
    declare @type: AuthorDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return AuthorService
     */
    public AuthorService AuthorDeserializer.getAuthorService() {
        return authorService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param authorService
     */
    public void AuthorDeserializer.setAuthorService(AuthorService authorService) {
        this.authorService = authorService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService AuthorDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void AuthorDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Author
     * @throws IOException
     */
    public Author AuthorDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Author author = authorService.findOne(id);
        if (author == null) {
            throw new NotFoundException("Author not found");
        }
        return author;
    }
    
}
