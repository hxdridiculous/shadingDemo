

package top.ridiculous.localdemo.config;
import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.extension.plugins.pagination.optimize.JsqlParserCountOptimize;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @Description:
 * @author: yangxingyao
 * @date: 2020/12/23 17:06
 */
@Configuration
public class MybatisPlusConfig {

    /**
     * @Desc 自定义分页拦截器
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        PaginationInterceptor paginationInterceptor = new PaginationInterceptor();

        // 设置请求的页面大于最大页后操作， true调回到首页，false 继续请求  默认false,特殊业务场景下设置为true
        // paginationInterceptor.setOverflow(false);

        // 设置最大单页限制数量，默认最大500 条，-1 不受限制,超过则此值为默认值，不报错
        paginationInterceptor.setLimit(100);
        // 开启 count 的 join 优化,只针对部分 left join
        paginationInterceptor.setCountSqlParser(new JsqlParserCountOptimize(true));
        return paginationInterceptor;
    }
}
