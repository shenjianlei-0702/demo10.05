package com.kgc.controller;

import com.kgc.pojo.Goods;
import com.kgc.servlce.GoodsServlce;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class IndexController {
    @Resource
    GoodsServlce goodsServlce;

    @RequestMapping("index")
    public String s(){
        return "index";
    }

    @RequestMapping("/sel")
    public String sel(HttpServletRequest request, Model model){
        String district = request.getParameter("goodsdistrict");
        int dis = 0;
        if(district != "" || !district.equals("0")){
            dis = Integer.parseInt(district);
        }
        List<Goods> goods = goodsServlce.sel(dis);
        model.addAttribute("goods",goods);
        return "sel";
    }

    @RequestMapping("/selById/{id}")
    public String selById(@PathVariable Integer id, Model model){
        Goods goods = goodsServlce.selById(id);
        model.addAttribute("goodsById",goods);
        return "upd";
    }

    @RequestMapping("/upd")
    public String upd(Goods goods){
        goodsServlce.updGoods(goods);
        return "redirect:index";
    }
}
