package shop.mtcoding.project.repositoryTest;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.mybatis.spring.boot.test.autoconfigure.MybatisTest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import shop.mtcoding.project.model.skill.SkillRepository;

@MybatisTest
public class SkillRepositoryTest {
    
    @Autowired
    private SkillRepository skillRepository;
    
    @Test
    @Transactional
    public void insertRequiredSkill_test() throws Exception {
        // given
        List<String> sList = new ArrayList<>();
        sList.add( "java");
        sList.add( "java");
        sList.add( "java");
        Integer test = 2;
    
        // when
        System.out.println("테스트 : "+ skillRepository.insertRequiredSkill(sList,test)); 
    
        // then
        
    }
    @Test
    @Transactional
    public void insertResumeSkill_test() throws Exception {
        // given
        List<String> sList = new ArrayList<>();
        sList.add( "java");
        sList.add( "java2");
        sList.add( "jav3a");
        Integer test = 2;
    
        // when
        System.out.println("테스트 : "+ skillRepository.insertResumeSkill(sList,test)); 
    
        // then
        
    }
}
