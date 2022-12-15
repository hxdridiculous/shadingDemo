package top.ridiculous.service.prdproductintroduction.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeanUtils;
import top.ridiculous.service.prdproductintroduction.PrdProductIntroductionService;
import top.ridiculous.service.prdproductintroduction.bo.PrdProductIntroductionBO;
import top.ridiculous.dao.query.prdproductintroduction.PrdProductIntroductionQuery;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import top.ridiculous.dao.prdproductintroduction.PrdProductIntroductionDao;
import top.ridiculous.dao.entity.BaseEntity;
import top.ridiculous.dao.entity.prdproductintroduction.PrdProductIntroduction;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.yiqitong.baseproject.exception.BizException;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import java.util.ArrayList;
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

    @Override
    public PrdProductIntroductionBO queryById(Long id) {
        PrdProductIntroduction entity = prdProductIntroductionDao.selectById(id);
        if(entity==null){
            return new PrdProductIntroductionBO();
        }
        PrdProductIntroductionBO entityBO = new PrdProductIntroductionBO();
        BeanUtils.copyProperties(entity,entityBO);
        return entityBO;
    }

   @Override
    public PrdProductIntroductionBO selectOne(PrdProductIntroduction entity) {
        PrdProductIntroduction oneResult = prdProductIntroductionDao.selectOne(Wrappers.<PrdProductIntroduction>lambdaQuery(entity));
        if(entity==null){
            return new PrdProductIntroductionBO();
        }
        PrdProductIntroductionBO entityBO = new PrdProductIntroductionBO();
        BeanUtils.copyProperties(oneResult, entityBO);
        return entityBO;
    }


    @Override
    public void insertBatch(List list) {
        prdProductIntroductionDao.insertBatch(list);
    }

    /**
     * 总数:total 从入参page里取，框架会设置到page对象里的
     *
     */
    @Override
    public List<PrdProductIntroductionBO> pageQuery(PrdProductIntroductionQuery query, Page page) {
        List<PrdProductIntroduction> list = prdProductIntroductionDao.pageQuery(query, page);
        List<PrdProductIntroductionBO> resultList = new ArrayList();
        if(list==null || list.size()==0){
            return resultList;
        }
        for (PrdProductIntroduction item : list) {
            PrdProductIntroductionBO bo =new PrdProductIntroductionBO();
            BeanUtils.copyProperties(item,bo);
            resultList.add(bo);

            //接下来对bo赋业务相关的值，不需要则不用管
        }
        return resultList;
    }

    @Override
    public void deleteById(Long id){
        prdProductIntroductionDao.deleteById(id);
    }




}

