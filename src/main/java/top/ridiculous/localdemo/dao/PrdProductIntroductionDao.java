package top.ridiculous.localdemo.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import top.ridiculous.localdemo.entity.PrdProductIntroduction;

import java.util.List;

/**
 * @desc 产品详情介绍 mapper接口
 * @author hxd
 * @since 2022-12-14
 */

@Mapper
public interface PrdProductIntroductionDao extends BaseDao<PrdProductIntroduction> {

    /**
     * 获取所有的秒杀id
     *
     * @param shopId
     * @return
     */
    List<PrdProductIntroduction> listId(@Param("name") String name);

}
