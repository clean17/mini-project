package shop.mtcoding.project.repositoryTest;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;

import shop.mtcoding.project.dto.resume.ResumeReq.ResumeWriteReqDto;
import shop.mtcoding.project.model.ResumeRepository;

@MybatisTest
public class ResumeRepositoryTest {
    
    @Autowired
    private ResumeRepository resumeRepository;

    @Test
    public void insert_test() throws Exception {
        // given
        ResumeWriteReqDto resumeWriteReqDto = new ResumeWriteReqDto();
        resumeWriteReqDto.setUserId(1);
        resumeWriteReqDto.setTitle("벡엔드 이력서");
        resumeWriteReqDto.setContent("백엔드 이력서의 내용입니다.");
        resumeWriteReqDto.setEducation("고졸");
        resumeWriteReqDto.setCareer("신입");
        resumeWriteReqDto.setLink("블로그 주소");
        resumeWriteReqDto.setState(1);
    
        // when
        System.out.println("테스트 : "+resumeRepository.insert(resumeWriteReqDto));
    
        // then
    
    }
}