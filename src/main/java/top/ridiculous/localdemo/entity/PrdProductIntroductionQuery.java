package top.ridiculous.localdemo.entity;

import java.time.LocalDateTime;
import top.ridiculous.localdemo.entity.PrdProductIntroduction;
import lombok.*;

/**
 * @desc 产品详情介绍 列表分页查询对象
 * @author hxd
 * @since 2022-12-14
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PrdProductIntroductionQuery extends PrdProductIntroduction{
    /**
     * 创建时间开始
     */
    private LocalDateTime createTimeBegin;
    /**
     * 创建时间结束
     */
    private LocalDateTime createTimeEnd;
    /**
     * 更新时间开始
     */
    private LocalDateTime updateTimeBegin;
    /**
     * 更新时间结束
     */
    private LocalDateTime updateTimeEnd;
    /**
     * 删除时间开始
     */
    private LocalDateTime deleteTimeBegin;
    /**
     * 删除时间结束
     */
    private LocalDateTime deleteTimeEnd;
}
