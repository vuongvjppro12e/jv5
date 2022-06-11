package com.assignment.service.impl;

import com.assignment.bean.SkinModel;
import com.assignment.entity.Skin;
import com.assignment.repository.SkinRepository;
import com.assignment.service.ISkinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;

@Service
public class SkinService implements ISkinService {
    @Autowired
    private SkinRepository SkinReposiroty;
    @Override
    public List<Skin> findAll(){
        return SkinReposiroty.findAll();
    }
    @Override
    public Optional<Skin> findById(Integer integer) {
        return SkinReposiroty.findById(integer);
    }
    @Override
    public Skin insert(SkinModel skinModel) {
        Optional<Skin> optionalSkin = findById(13);
        Skin skin = null;
        String image = "NoImage.png";
        Timestamp crDate = skinModel.getCreateDate();
        Path path = Paths.get("uploads/");
        if (optionalSkin.isPresent()) {
            //save
//            crDate = Timestamp.from(optionalSkin.get().getCreateDate());
            if (skinModel.getImage().isEmpty()) {
                image = optionalSkin.get().getImage();
            } else {
                try {
                    InputStream inputStream = skinModel.getImage().getInputStream();
                    Files.copy(inputStream, path.resolve(skinModel.getImage().getOriginalFilename()),
                            StandardCopyOption.REPLACE_EXISTING);
                    image = skinModel.getImage().getOriginalFilename().toString();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } else {
//            add
            if (!skinModel.getImage().isEmpty()) {
                System.out.println(skinModel.getImage().getOriginalFilename());
                File file = new File("uploads/", skinModel.getImage().getOriginalFilename());
                if (file.exists()) {
                    image = skinModel.getImage().getOriginalFilename();
                } else {
                    try {
                        InputStream inputStream = skinModel.getImage().getInputStream();
                        Files.copy(inputStream, path.resolve(skinModel.getImage().getOriginalFilename()),
                                StandardCopyOption.REPLACE_EXISTING);
                        image = skinModel.getImage().getOriginalFilename().toString();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        System.out.println(skinModel.getName());
        skin = new Skin(13,
                skinModel.getCreateDate(),
                skinModel.getName(),
                skinModel.getType(),
                skinModel.getPrice(),
                skinModel.getRare(),
                skinModel.getBuff(),
                skinModel.getImage()
        );
        return SkinReposiroty.save(skin);
    }
}
