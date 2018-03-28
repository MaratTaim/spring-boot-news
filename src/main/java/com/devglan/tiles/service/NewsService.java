package com.devglan.tiles.service;

import com.devglan.tiles.model.News;

import java.util.List;

/**
 * Created by jt on 1/10/17.
 */
public interface NewsService {

    List<News> listAll();

    News getById(Long id);

    News saveOrUpdate(News news);

    void delete(Long id);
}
