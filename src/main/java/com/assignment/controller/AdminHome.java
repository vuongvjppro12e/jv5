package com.assignment.controller;


import com.assignment.bean.SkinModel;
import com.assignment.entity.Skin;
import com.assignment.service.ISkinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/admin")
public class AdminHome {
//    @Autowired
//    HttpServletRequest;
    @Autowired
    ISkinService skinService;
    @GetMapping("/list")
    public String index(ModelMap model){
        List<Skin> ListSkin = skinService.findAll();
        model.addAttribute("LS",ListSkin);
        return "list";
    }
    @GetMapping("/add")
    public String add(ModelMap model){
        SkinModel skinModel = new SkinModel();
        model.addAttribute("skin",skinModel);
        return "add";
    }
    @PostMapping("/saveorupdate")
    public String save(Model model, @ModelAttribute("skin") SkinModel skinModel) {

        skinService.insert(skinModel);
        model.addAttribute("success","Thêm mới sản phẩm "+skinModel.getName()+" thành công");
        return "redirect:/admin/list";
    }


}

