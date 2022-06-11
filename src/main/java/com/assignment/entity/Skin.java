package com.assignment.entity;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.Instant;


@Entity
@Data
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "skin")
public class Skin {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "create_date")
    private Instant createDate;

    @Column(name = "buff")
    private Integer buff;

    @Column(name = "name")
    private String name;

    @Column(name = "price", precision = 19, scale = 2)
    private BigDecimal price;

    @Column(name = "rare")
    private String rare;

    @Column(name = "type")
    private Integer type;

    @Column(name = "image", length = 45)
    private String image;

    public Skin(Integer buff, Timestamp createDate, String name, Integer type, Double price, String rare, Integer skinModelBuff, MultipartFile image) {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Instant getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Instant createDate) {
        this.createDate = createDate;
    }

    public Integer getBuff() {
        return buff;
    }

    public void setBuff(Integer buff) {
        this.buff = buff;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getRare() {
        return rare;
    }

    public void setRare(String rare) {
        this.rare = rare;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

}