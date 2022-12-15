package top.ridiculous.localdemo.controller;
import java.time.LocalDateTime;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.*;
import lombok.extern.slf4j.Slf4j;

import org.springframework.web.bind.annotation.RestController;
import top.ridiculous.localdemo.controller.vo.PrdProductIntroductionReqAddVO;
import top.ridiculous.localdemo.dao.PrdProductIntroductionDao;
import top.ridiculous.localdemo.entity.PrdProductIntroduction;
import top.ridiculous.localdemo.service.PrdProductIntroductionService;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @desc 产品详情介绍
 * @author hxd
 * @since 2022-12-14
 */
@RestController
@RequestMapping("api")
@Slf4j
public class PrdProductIntroductionController {


    @Autowired
    private PrdProductIntroductionService prdProductIntroductionService;

    @Autowired
    PrdProductIntroductionDao prdProductIntroductionDao;
    /**
     * @desc 新增或更新,带id为修改，不带id为新增
     */
    @PostMapping("/saveOrUpdate")
    public Object saveOrUpdate( @RequestBody PrdProductIntroductionReqAddVO reqAddVO){
//        try {
//            //此处直接吧vo对象映射到entity对象
//            PrdProductIntroduction entity = new PrdProductIntroduction();
//            BeanUtils.copyProperties(reqAddVO,entity);
//            entity.setCreateTime(LocalDateTime.now());
//            if(reqAddVO.getId()==null){
//                prdProductIntroductionService.save(entity);
//            }else{
//                entity.setUpdateTime(LocalDateTime.now());
//                prdProductIntroductionService.update(entity);
//            }
//            return  ResEx.success();
//        }catch (Exception e){
//            return ResEx.error(500,e.getMessage());
//        }
        return null;
    }

    @GetMapping("/list")
    public List list(@RequestParam(name = "productId") String productId, @RequestParam(name = "productIds") String productIds){
        List<PrdProductIntroduction> strings = new ArrayList<>();
//        strings.add(productId);
//        strings.add(productIds);
//        for (int i = 0; i < 220; i++) {
//
//            PrdProductIntroduction prdProductIntroduction = new PrdProductIntroduction();
//            prdProductIntroduction.setProductId("P"+i);
//            prdProductIntroduction.setHasPcImg(false);
//            prdProductIntroduction.setHasMobileImg(false);
//            prdProductIntroduction.setMobileHtml("P"+i);
//            prdProductIntroduction.setPcHtml("P"+i);
//            prdProductIntroduction.setCreateTime(LocalDateTime.now());
//            prdProductIntroduction.setUpdateTime(LocalDateTime.now());
//            strings.add(prdProductIntroduction);
//        }
//
////        PrdProductIntroduction prdProductIntroduction = new PrdProductIntroduction();
////        prdProductIntroduction.setProductId("P"+32);
////        prdProductIntroduction.setHasPcImg(false);
////        prdProductIntroduction.setHasMobileImg(false);
////        prdProductIntroduction.setMobileHtml("P"+32);
////        prdProductIntroduction.setPcHtml("P"+32);
////        prdProductIntroduction.setCreateTime(LocalDateTime.now());
////        prdProductIntroduction.setUpdateTime(LocalDateTime.now());
//
//
////        return prdProductIntroductionDao.selectList(new LambdaQueryWrapper<PrdProductIntroduction>().in(PrdProductIntroduction::getId,strings));
//        prdProductIntroductionDao.insertBatch(strings);
        return prdProductIntroductionDao.listId(productIds);
//        return strings.stream().map(PrdProductIntroduction::getId).collect(Collectors.toList());
    }



}

