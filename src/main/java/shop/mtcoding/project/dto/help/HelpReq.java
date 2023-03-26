package shop.mtcoding.project.dto.help;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

public class HelpReq {
    @Setter
    @Getter
    @AllArgsConstructor
    public static class HelpSaveReqDto {
        private Integer userId;
        private String email;
        private Integer tel;
        private String title;
        private String content;
        private Timestamp createdAt;
    }

    @Setter
    @Getter
    public static class HelpDetailRespDto {
        private Integer userId;
        private String email;
        private String title;
        private String content;
        private Timestamp createdAt;
    }
}
