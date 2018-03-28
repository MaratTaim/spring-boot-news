package com.devglan.tiles.repository;

import com.devglan.tiles.model.News;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Marat_Taimagambetov on 3/15/2018.
 */
public interface NewsRepository extends CrudRepository<News, Long> {
}
