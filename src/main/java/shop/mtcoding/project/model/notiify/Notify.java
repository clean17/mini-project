package shop.mtcoding.project.model.notiify;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Notify {
    private Integer notifyId;
    private Integer applyId;
    private Integer suggestId;
    private Integer state;
    private Timestamp createdAt;
}