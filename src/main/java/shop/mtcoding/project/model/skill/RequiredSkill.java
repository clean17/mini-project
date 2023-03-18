package shop.mtcoding.project.model.skill;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RequiredSkill {
    private Integer requiredSkillId;
    private Integer jobsId;
    private List<String> skillList;
}
