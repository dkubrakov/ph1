// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.web;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import roo.ph.domain.Author;
import roo.ph.web.AuthorDeserializer;
import roo.ph.web.BookJsonMixin;

privileged aspect BookJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = AuthorDeserializer.class)
    private Author BookJsonMixin.author;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Author
     */
    public Author BookJsonMixin.getAuthor() {
        return author;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param author
     */
    public void BookJsonMixin.setAuthor(Author author) {
        this.author = author;
    }
    
}
