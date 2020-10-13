/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author PC
 */
@Embeddable
public class OrderdetailPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "ordercode")
    private String ordercode;
    @Basic(optional = false)
    @NotNull
    @Column(name = "book_id")
    private int bookId;

    public OrderdetailPK() {
    }

    public OrderdetailPK(String ordercode, int bookId) {
        this.ordercode = ordercode;
        this.bookId = bookId;
    }

    public String getOrdercode() {
        return ordercode;
    }

    public void setOrdercode(String ordercode) {
        this.ordercode = ordercode;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ordercode != null ? ordercode.hashCode() : 0);
        hash += (int) bookId;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof OrderdetailPK)) {
            return false;
        }
        OrderdetailPK other = (OrderdetailPK) object;
        if ((this.ordercode == null && other.ordercode != null) || (this.ordercode != null && !this.ordercode.equals(other.ordercode))) {
            return false;
        }
        if (this.bookId != other.bookId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.OrderdetailPK[ ordercode=" + ordercode + ", bookId=" + bookId + " ]";
    }
    
}
