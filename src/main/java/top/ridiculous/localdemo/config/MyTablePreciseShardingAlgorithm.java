package top.ridiculous.localdemo.config;

import org.apache.shardingsphere.api.sharding.standard.PreciseShardingAlgorithm;
import org.apache.shardingsphere.api.sharding.standard.PreciseShardingValue;

import java.util.Collection;

public class MyTablePreciseShardingAlgorithm implements PreciseShardingAlgorithm<String> {

    /**
     *
     * @param tableNames 对应分片库中所有分片表的集合
     * @param preciseShardingValue 为分片属性，其中 logicTableName 为逻辑表，columnName 分片健（字段），value 为从 SQL 中解析出的分片健的值
     * @return 分片表
     */
    @Override
    public String doSharding(Collection<String> tableNames, PreciseShardingValue<String> preciseShardingValue) {
        String logicTableName = preciseShardingValue.getLogicTableName();
        String value = preciseShardingValue.getValue();
        String columnName = preciseShardingValue.getColumnName();
        for (String tableName : tableNames) {
            String num = Integer.valueOf(value.substring(1)) % tableNames.size()+"";
            if (tableName.endsWith(num)){
                return tableName;
            }
        }
        throw  new IllegalArgumentException();
    }

    public static void main(String[] args) {
        String value ="P11212399";
        System.out.println( Integer.valueOf(value.substring(1)) % 16+"");
    }
}
