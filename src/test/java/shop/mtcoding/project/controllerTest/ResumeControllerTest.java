package shop.mtcoding.project.controllerTest;

import static org.assertj.core.api.Assertions.assertThat;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.databind.ObjectMapper;

import shop.mtcoding.project.dto.resume.ResumeReq.ResumeWriteReqDto;
import shop.mtcoding.project.dto.resume.ResumeResp.ResumeManageRespDto;
import shop.mtcoding.project.model.Comp;
import shop.mtcoding.project.model.User;

@AutoConfigureMockMvc
@SpringBootTest(webEnvironment = WebEnvironment.MOCK)
public class ResumeControllerTest {

    @Autowired
    private ObjectMapper om;

    @Autowired
    private MockMvc mvc;

    private MockHttpSession mockSession;

    @BeforeEach
    private void mockUserSession() {
        User mockUser = new User(
                1,
                "ssar@nate.com",
                "1234",
                "ssar",
                "2000-01-01",
                "010-1234-1234",
                "/images/default_profile.png",
                "????????? ????????????",
                new Timestamp(System.currentTimeMillis()));
        mockSession = new MockHttpSession();
        mockSession.setAttribute("principal", mockUser);
    }


    private void mockCompSession() {
        Comp mockcomp = new Comp(
            1,
            "kakao@kakao.com",
            "1234",
            "?????????(???)",
            "?????????",
            "120-81-47521",
            "/images/kakao.png",
            "http://www.kakaocorp.com",
            new Timestamp(System.currentTimeMillis()));
            mockSession = new MockHttpSession();
            mockSession.setAttribute("compSession", mockcomp);
    }

    @Test
    @Transactional
    public void manageResume_test() throws Exception {
        // given

        // when
        ResultActions resultActions = mvc.perform(get("/user/resume").session(mockSession));

        Map<String, Object> map = resultActions.andReturn().getModelAndView().getModel();
        List<ResumeManageRespDto> rDtos = (List<ResumeManageRespDto>) map.get("rDtos");
        String model = om.writeValueAsString(rDtos);
        System.out.println("main_test : " + model);

        // then
        resultActions.andExpect(status().isOk());
        // assertThat(rDtos.size()).isEqualTo(1);
        assertThat(rDtos.get(0).getTitle()).isEqualTo("???????????? ??????????????? ?????????");
        assertThat(rDtos.get(0).getEducation()).isEqualTo("??????");
        assertThat(rDtos.get(0).getCareer()).isEqualTo("??????");

    }

    @Test
    @Transactional
    public void writeResume_test() throws Exception {
        // given
        ResumeWriteReqDto resumeWriteReqDto = new ResumeWriteReqDto();
        resumeWriteReqDto.setUserId(1);
        resumeWriteReqDto.setTitle("????????? ?????????");
        resumeWriteReqDto.setContent("????????? ???????????? ???????????????.");
        resumeWriteReqDto.setEducation("??????");
        resumeWriteReqDto.setCareer("??????");
        List<String> skillList = new ArrayList<>();
        skillList.add("??????");
        skillList.add("??????1");
        skillList.add("??????2");
        skillList.add("??????3");
        skillList.add("??????4");
        resumeWriteReqDto.setSkillList(skillList);
        resumeWriteReqDto.setLink("????????? ??????");
        resumeWriteReqDto.setState(1);
        String requestBody = om.writeValueAsString(resumeWriteReqDto);
        System.out.println("????????? : " + requestBody);
        // when
        ResultActions resultActions = mvc.perform(post("/user/resume/write")
                .content(requestBody).contentType(MediaType.APPLICATION_JSON_VALUE)
                .session(mockSession));

        // then
        resultActions.andExpect(status().isCreated());
    }

    @Test
    @Transactional
    public void saveTempResume_test() throws Exception {
        ObjectMapper om = new ObjectMapper();
        // given
        ResumeWriteReqDto resumeWriteReqDto = new ResumeWriteReqDto();
        resumeWriteReqDto.setResumeId(1);
        resumeWriteReqDto.setTitle("????????? ?????????");
        resumeWriteReqDto.setContent("????????? ???????????? ???????????????.");
        resumeWriteReqDto.setEducation("??????");
        resumeWriteReqDto.setCareer("??????");
        List<String> skillList = new ArrayList<>();
        skillList.add("??????");
        skillList.add("??????1");
        skillList.add("??????2");
        skillList.add("??????3");
        skillList.add("??????4");
        resumeWriteReqDto.setSkillList(skillList);
        resumeWriteReqDto.setLink("????????? ??????");
        resumeWriteReqDto.setState(1);
        String requestBody = om.writeValueAsString(resumeWriteReqDto);

        // when
        ResultActions resultActions = mvc.perform(put("/user/resume/update")
                .content(requestBody).contentType(MediaType.APPLICATION_JSON_VALUE)
                .session(mockSession));

        // then
        resultActions.andExpect(status().isCreated());
    }

    @Test
    @Transactional
    public void deleteResume_test() throws Exception {
        // given
        int id = 1;

        // when
        ResultActions resultActions = mvc.perform(
                delete("/resume/" + id + "/delete").session(mockSession));
        String responseBody = resultActions.andReturn().getResponse().getContentAsString();
        System.out.println("delete_test : " + responseBody);

        // then
        resultActions.andExpect(status().isOk());
        resultActions.andExpect(jsonPath("$.code").value(1));
    }


    // @Test
    // @Transactional
    // public void searchCheckbox_test() throws Exception {
    //     // given
    //     mockCompSession();
    //     String keyword = "address=??????,?????????,??????&career=??????";
        
    //     // when
    //     ResultActions rs = mvc.perform(get("/comp/resume/search?"+keyword).session(mockSession));
    
    //     // then
    //     String result = rs.andReturn().getResponse().getContentAsString();
    //     System.out.println("????????? : "+ result);
    
    // }
}
