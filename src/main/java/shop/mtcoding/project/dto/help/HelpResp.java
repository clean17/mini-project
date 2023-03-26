package shop.mtcoding.project.dto.help;

import lombok.Getter;
import lombok.Setter;

public class HelpResp {
    @Setter
    @Getter
    public static class HelpMainRespDto{
        private String title;
        private String helpName;
    }
}
