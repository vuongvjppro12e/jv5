package com.assignment.service;

import com.assignment.bean.SkinModel;
import com.assignment.entity.Skin;

import java.util.List;
import java.util.Optional;

public interface ISkinService {
    List<Skin> findAll();

    Optional<Skin> findById(Integer integer);

    Skin insert(SkinModel skinModel);

}
