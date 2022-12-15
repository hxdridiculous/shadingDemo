package top.ridiculous.localdemo.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 *  * @desc BaseDao
    * @author hxd
    * @since 2022-12-14
 */
@SuppressWarnings("ALL")
public interface BaseDao<TEntity> extends BaseMapper<TEntity> {

    /**
     * 通用分页查询
     *
     * @param query
     * @param page
     * @param <TQuery>
     * @return
     */
    <TQuery, TData> List<TData> pageQuery(@Param("query") TQuery query, Page<TEntity> page);



    /**
     * 批量新增
     *
     * @param list
     * @return
     */
    void insertBatch(@Param("list") List<TEntity> list);
}
