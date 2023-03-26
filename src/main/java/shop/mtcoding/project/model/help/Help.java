package shop.mtcoding.project.model.help;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
public class Help {
    private Integer helpId;
    private String title;
    private String email;
    private String password;
    private int tel;
    private Timestamp createdAt;
}
