package com.kgc.servlce;

import com.kgc.pojo.Goods;

import java.util.List;

public interface GoodsServlce {
    List<Goods> sel(int dis);
    Goods selById(Integer id);
    int updGoods(Goods goods);
}
