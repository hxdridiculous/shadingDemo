package top.ridiculous.localdemo.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import lombok.*;
import lombok.experimental.Accessors;

/**
 * @desc 产品详情介绍 实体
 * @author hxd
 * @since 2022-12-14
 */
@Data
@Accessors(chain = true)
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class PrdProductIntroduction  {
    /**
     * ID
     */


    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    /**
     * 产品ID
     */
    private String productId;
    /**
     * 是否有PC详情图，0=没有；1=有
     */
    private Boolean hasPcImg;
    /**
     * 是否有移动端详情图，0=没有；1=有
     */
    private Boolean hasMobileImg;
    /**
     * 产品介绍内容（HTML） 移动版
     */
    private String mobileHtml;
    /**
     * 产品介绍内容（HTML） PC版
     */
    private String pcHtml;
    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;
    /**
     * 更新时间
     */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;
    /**
     * 删除时间
     */
    private LocalDateTime deleteTime;


}
