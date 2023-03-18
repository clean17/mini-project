package shop.mtcoding.project.model.scrap;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserScrap {
    private Integer userScrapId;
    private Integer userId;
    private Integer jobsId;
    private Timestamp createdAt;
}
