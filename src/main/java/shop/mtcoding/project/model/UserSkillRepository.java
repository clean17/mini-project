package shop.mtcoding.project.model;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import shop.mtcoding.project.dto.resume.ResumeReq.ResumeUpdateReqDto;
import shop.mtcoding.project.dto.resume.ResumeReq.ResumeWriteReqDto;
import shop.mtcoding.project.dto.user.UserResp.UserSkillRespDto;

@Mapper
public interface UserSkillRepository {
    public void findAll();

    public UserSkillRespDto findById(Integer userId);

    public int insert(@Param("rDto") ResumeWriteReqDto rDto);

    public int updateById(@Param("rDto") ResumeUpdateReqDto rDto);

    public int deleteById();
}
