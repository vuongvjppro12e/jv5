package com.assignment.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import java.sql.Timestamp;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SkinModel {
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private Double price;
    private MultipartFile image;
    private Timestamp createDate;
    private String rare;
    private Integer buff;
    private Integer type;

}
