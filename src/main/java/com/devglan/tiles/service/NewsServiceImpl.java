package com.devglan.tiles.service;

import com.devglan.tiles.model.News;
import com.devglan.tiles.repository.NewsRepository;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;


@Service
@Transactional
public class NewsServiceImpl implements NewsService {

    private static final Logger logger = LogManager.getLogger(NewsServiceImpl.class);
    private NewsRepository newsRepository;

    @Autowired
    public NewsServiceImpl(NewsRepository newsRepository) {
        this.newsRepository = newsRepository;
    }

    @Override
    public List<News> listAll() {
        List<News> newsList = new ArrayList<>();
        newsRepository.findAll().forEach(newsList::add);
        logger.info("List of All News "+newsList);
        return newsList;
    }

    @Override
    @Transactional
    public News getById(Long id) {
        logger.info("Get By Id "+id);
        return newsRepository.findOne(id);
    }

    @Override
    public News saveOrUpdate(News news) {
        logger.info("Save OR Update "+ news);
        newsRepository.save(news);
        return news;
    }

    @Override
    public void delete(Long id) {
        logger.info("Delete "+id);
        newsRepository.delete(id);
    }
}
