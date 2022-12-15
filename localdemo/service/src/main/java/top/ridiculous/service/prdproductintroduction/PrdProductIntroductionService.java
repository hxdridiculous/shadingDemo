package top.ridiculous.service.prdproductintroduction;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import top.ridiculous.dao.entity.prdproductintroduction.PrdProductIntroduction;
import top.ridiculous.dao.query.prdproductintroduction.PrdProductIntroductionQuery;
import java.util.List;

/**
 * @desc 产品详情介绍 service
 * @author hxd
 * @since 2022-12-14
 */
public interface PrdProductIntroductionService <T extends PrdProductIntroduction>  {

    /**
     * @Description: save
     * @param: entity
     *
     * @return: java.util.List<top.ridiculous.dao.entity.prdproductintroduction.PrdProductIntroduction>
     * @see top.ridiculous.dao.entity.prdproductintroduction.PrdProductIntroduction
     */
    List<PrdProductIntroduction> selectList(PrdProductIntroduction entity);

    /**
      * @Description: listByBatchIds
      * @param: entity
      * @see top.ridiculous.dao.entity.prdproductintroduction.PrdProductIntroduction
      */
     void save(PrdProductIntroduction entity);

   /**
     * @Description: update
     * @param: entity
     * @see top.ridiculous.dao.entity.prdproductintroduction.PrdProductIntroduction
     * @return: void
     */
    void update(PrdProductIntroduction entity);

   /**
     * @Description: pageQuery
     * @param: [query,page]
     *
     * @return: java.util.List<top.ridiculous.dao.entity.prdproductintroduction.PrdProductIntroductionQuery>
     * @see top.ridiculous.dao.entity.prdproductintroduction.PrdProductIntroduction
     */
    List<PrdProductIntroductionQuery> pageQuery(PrdProductIntroductionQuery query, Page<PrdProductIntroduction> page);

   /**
     * @Description: insertBatch
     * @param: [top.ridiculous.dao.entity.prdproductintroduction.PrdProductIntroduction]
     * @see top.ridiculous.dao.entity.prdproductintroduction.PrdProductIntroduction
     *
     * @return: void
     *
     */
    void insertBatch(@Param("list") List<PrdProductIntroduction> list);


   /**
     * @Description: queryById
     * @param: id
     *
     * @return: T
     *
     */
    T queryById(Long id);

   /**
     * @Description: selectOne
     * @param: entity
     *
     * @return: T
     *
     */
    T selectOne(PrdProductIntroduction entity);

   /**
     * @Description: deleteById
     * @param: id
     *
     * @return: void
     *
     */
    void deleteById(Long id);






}
