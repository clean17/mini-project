package shop.mtcoding.project.repositoryTest;

import org.assertj.core.api.Assertions;

import java.sql.Timestamp;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import shop.mtcoding.project.dto.comp.CompReq.CompJoinReqDto;
import shop.mtcoding.project.dto.jobs.JobsReq.JobsUpdateReqDto;
import shop.mtcoding.project.model.comp.CompRepository;

@MybatisTest
public class CompRepositoryTest {

    @Autowired
    private CompRepository compRepository;

    @Test
    @Transactional
    public void insert_test() throws Exception {
    // given
    CompJoinReqDto uDto = new CompJoinReqDto(
    25,
    "ssar25@nate.com",
    "1234",
    "ssar",
    "대표자명",
    "123-123-123",
    new Timestamp(System.currentTimeMillis()));

    // when
    compRepository.insert(uDto);

    // then
    Assertions.assertThat(compRepository.findByCompEmail(uDto.getEmail()).getRepresentativeName()).isEqualTo("대표자명");
    Assertions.assertThat(compRepository.findByCompEmail(uDto.getEmail()).getCompName()).isEqualTo("ssar");
    }

    @Test
    @Transactional
    public void updateById_test() throws Exception {
        // given
        JobsUpdateReqDto jDto = new JobsUpdateReqDto();
        jDto.setCompId(1);
        jDto.setCompName("1234");
        jDto.setRepresentativeName("1234");
        jDto.setPhoto("213");
        jDto.setHomepage("124");
        // when
        System.out.println("테스트 : " + compRepository.updateById(jDto));

        // then
        Assertions.assertThat(compRepository.findByCompId(jDto.getCompId()).getRepresentativeName()).isEqualTo("1234");
        Assertions.assertThat(compRepository.findByCompId(jDto.getCompId()).getCompName()).isEqualTo("1234");
    }
}
