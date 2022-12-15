package top.ridiculous.localdemo.basevo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PageResVO<T> {

    private long total;

    private List<T> records;



}

