// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.domain;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Objects;
import java.util.Set;
import roo.ph.domain.Author;
import roo.ph.domain.Book;
import roo.ph.domain.OrderBook;

privileged aspect Book_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long Book.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return Book
     */
    public Book Book.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer Book.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return Book
     */
    public Book Book.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets name value
     * 
     * @return String
     */
    public String Book.getName() {
        return this.name;
    }
    
    /**
     * Sets name value
     * 
     * @param name
     * @return Book
     */
    public Book Book.setName(String name) {
        this.name = name;
        return this;
    }
    
    /**
     * Gets price value
     * 
     * @return BigDecimal
     */
    public BigDecimal Book.getPrice() {
        return this.price;
    }
    
    /**
     * Sets price value
     * 
     * @param price
     * @return Book
     */
    public Book Book.setPrice(BigDecimal price) {
        this.price = price;
        return this;
    }
    
    /**
     * Gets expenses value
     * 
     * @return BigDecimal
     */
    public BigDecimal Book.getExpenses() {
        return this.expenses;
    }
    
    /**
     * Sets expenses value
     * 
     * @param expenses
     * @return Book
     */
    public Book Book.setExpenses(BigDecimal expenses) {
        this.expenses = expenses;
        return this;
    }
    
    /**
     * Gets circul value
     * 
     * @return Integer
     */
    public int Book.getCircul() {
        return this.circul;
    }
    
    /**
     * Sets circul value
     * 
     * @param circul
     * @return Book
     */
    public Book Book.setCircul(int circul) {
        this.circul = circul;
        return this;
    }
    
    /**
     * Gets publication value
     * 
     * @return Date
     */
    public Date Book.getPublication() {
        return this.publication;
    }
    
    /**
     * Sets publication value
     * 
     * @param publication
     * @return Book
     */
    public Book Book.setPublication(Date publication) {
        this.publication = publication;
        return this;
    }
    
    /**
     * Gets author value
     * 
     * @return Author
     */
    public Author Book.getAuthor() {
        return this.author;
    }
    
    /**
     * Sets author value
     * 
     * @param author
     * @return Book
     */
    public Book Book.setAuthor(Author author) {
        this.author = author;
        return this;
    }
    
    /**
     * Gets orderBooks value
     * 
     * @return Set
     */
    public Set<OrderBook> Book.getOrderBooks() {
        return this.orderBooks;
    }
    
    /**
     * Sets orderBooks value
     * 
     * @param orderBooks
     * @return Book
     */
    public Book Book.setOrderBooks(Set<OrderBook> orderBooks) {
        this.orderBooks = orderBooks;
        return this;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean Book.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof Book)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((Book) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int Book.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Book.toString() {
        return "Book {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", name='" + name + '\'' + 
                ", price='" + price + '\'' + 
                ", expenses='" + expenses + '\'' + 
                ", circul='" + circul + '\'' + 
                ", publication='" + publication == null ? null : java.text.DateFormat.getDateTimeInstance().format(publication) + '\'' + "}" + super.toString();
    }
    
}
