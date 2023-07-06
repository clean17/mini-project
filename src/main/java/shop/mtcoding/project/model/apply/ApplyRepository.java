package shop.mtcoding.project.model.apply;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import shop.mtcoding.project.dto.apply.ApplyReq.ApplyReqDto;
import shop.mtcoding.project.dto.apply.ApplyReq.ApplyUpdateReqDto;
import shop.mtcoding.project.dto.apply.ApplyResp.ApllyStatusCompRespDto;
import shop.mtcoding.project.dto.apply.ApplyResp.ApllyStatusUserRespDto;
import shop.mtcoding.project.dto.apply.ApplyResp.ApplyUserStatusDetailRespDto;
import shop.mtcoding.project.dto.apply.ApplyResp.ApplytoCompRespDto;

@Mapper
public interface ApplyRepository {
    public void findAll();

    public Apply findByApplyId(Integer applyId);

    public List<Apply> findByUserIdToNotice(Integer userId);

    public ApplyUserStatusDetailRespDto findApplyStateByUserIdAndJobsId(
        @Param("userId") Integer userId,
        @Param("jobsId") Integer jobsId
    );

    public List<ApllyStatusCompRespDto> findAllByCompIdtoApply(Integer compId);

    public List<ApllyStatusUserRespDto> findAllByUserIdtoApply(Integer userId);

    public ApplytoCompRespDto findByCompIdAndApplyId(
        @Param("compId") Integer compId,
        @Param("applyId") Integer applyId
    );

    public int insert(
        @Param("aDto")  ApplyReqDto aDto
    );
    public int updateByApplyId(
        @Param("aDto")  ApplyUpdateReqDto aDto
    );
    public int deleteById(
    );


}
