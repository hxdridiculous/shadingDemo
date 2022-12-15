package top.ridiculous.localdemo.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import top.ridiculous.localdemo.service.PrdProductIntroductionService;
import top.ridiculous.localdemo.entity.PrdProductIntroductionQuery;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import top.ridiculous.localdemo.dao.PrdProductIntroductionDao;
import top.ridiculous.localdemo.entity.PrdProductIntroduction;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;

import java.util.List;

/**
 * @desc 产品详情介绍 serviceImpl
 * @author hxd
 * @since 2022-12-14
 */
@Service
@Slf4j
public class PrdProductIntroductionServiceImpl implements PrdProductIntroductionService<PrdProductIntroduction> {

    @Autowired
    PrdProductIntroductionDao prdProductIntroductionDao;



    @Override
    public List<PrdProductIntroduction> selectList(PrdProductIntroduction entity) {
        List<PrdProductIntroduction> prdProductIntroductions = prdProductIntroductionDao.selectList(Wrappers.query(entity));
        return prdProductIntroductions;
    }

    @Override
    public void save(PrdProductIntroduction entity) {
       prdProductIntroductionDao.insert(entity);
    }

    @Override
    public void update(PrdProductIntroduction entity) {
        prdProductIntroductionDao.update(entity,Wrappers.<PrdProductIntroduction>lambdaUpdate().eq(PrdProductIntroduction::getId,entity.getId()));
    }

    /**
     * @param query
     * @param page
     * @Description: pageQuery
     * @param: [query, page]
     * @return: java.util.List<top.ridiculous.localdemo.dao.entity.prdproductintroduction.PrdProductIntroductionQuery>
     * @see PrdProductIntroduction
     */
    @Override
    public List<PrdProductIntroductionQuery> pageQuery(PrdProductIntroductionQuery query, Page<PrdProductIntroduction> page) {
        return null;
    }

    /**
     * @param list
     * @Description: insertBatch
     * @param: [top.ridiculous.localdemo.entity.PrdProductIntroduction]
     * @return: void
     * @see PrdProductIntroduction
     */
    @Override
    public void insertBatch(List<PrdProductIntroduction> list) {

    }

    /**
     * @param id
     * @Description: queryById
     * @param: id
     * @return: T
     */
    @Override
    public PrdProductIntroduction queryById(Long id) {
        return null;
    }

    /**
     * @param entity
     * @Description: selectOne
     * @param: entity
     * @return: T
     */
    @Override
    public PrdProductIntroduction selectOne(PrdProductIntroduction entity) {
        return null;
    }

    /**
     * @param id
     * @Description: deleteById
     * @param: id
     * @return: void
     */
    @Override
    public void deleteById(Long id) {

    }


}

