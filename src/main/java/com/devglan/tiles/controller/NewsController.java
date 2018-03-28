package com.devglan.tiles.controller;

import com.devglan.tiles.model.News;
import com.devglan.tiles.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.List;


@RestController
@RequestMapping(value = {"/news"})
public class NewsController {

    @Autowired
    private NewsService newsService;

    @RequestMapping()
    public ModelAndView main() {
        return new ModelAndView("newsList");
    }

    @RequestMapping("/list")
    public List<News> getListNews() {
        return newsService.listAll();
    }

    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public ModelAndView getOneNews(@PathVariable("id") Long id) {
        return new ModelAndView("viewNews", "news", newsService.getById(id));
    }

    @ExceptionHandler(Exception.class)
    @RequestMapping(value = "/save", method = RequestMethod.GET)
    public ModelAndView saveCustomerPage(ModelAndView model) throws IOException {
        model.addObject("news", new News());
        model.setViewName("addNews");
        return model;
    }



    @ExceptionHandler(Exception.class)
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView createNews(@Valid @ModelAttribute("news") News news, BindingResult bindingResult, HttpServletResponse response){
        ModelAndView model = new ModelAndView("viewNews");
        if (bindingResult.hasErrors()) {
            model.setViewName("addNews");
            return model;
        }
        newsService.saveOrUpdate(news);
        return model;
    }


    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView editNews(@PathVariable("id") Long id) {
        return new ModelAndView("addNews", "news", newsService.getById(id));
    }

    //    if you need to delete one
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteNews(@PathVariable("id") Long id, ModelAndView view){
        newsService.delete(id);
        view.setViewName("newsList");
        return view;
    }

    @RequestMapping(value = "/delete", method = RequestMethod.DELETE)
    public void deleteFewNews(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String[] delete = request.getParameterValues("delete");

        Long id;
        if (delete != null) {
            for (String str : delete) {
                id = Long.parseLong(str);
                newsService.delete(id);
            }
        }
        response.sendRedirect("/news");
    }

}