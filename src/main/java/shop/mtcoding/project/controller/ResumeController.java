package shop.mtcoding.project.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import shop.mtcoding.project.dto.apply.ApplyResp.ApplytoCompRespDto;
import shop.mtcoding.project.dto.common.ResponseDto;
import shop.mtcoding.project.dto.resume.ResumeReq.ResumeCheckboxReqDto;
import shop.mtcoding.project.dto.resume.ResumeReq.ResumeUpdateReqDto;
import shop.mtcoding.project.dto.resume.ResumeReq.ResumeWriteReqDto;
import shop.mtcoding.project.dto.resume.ResumeResp.ResumeDetailRespDto;
import shop.mtcoding.project.dto.resume.ResumeResp.ResumeManageRespDto;
import shop.mtcoding.project.dto.resume.ResumeResp.ResumeSaveRespDto;
import shop.mtcoding.project.dto.resume.ResumeResp.ResumeSearchRespDto;
import shop.mtcoding.project.dto.skill.ResumeSkillResp.ResumeSkillRespDto;
import shop.mtcoding.project.dto.suggest.SuggestResp.SuggestToCompRespIdDto;
import shop.mtcoding.project.dto.user.UserResp.UserDataRespDto;
import shop.mtcoding.project.exception.CustomApiException;
import shop.mtcoding.project.exception.CustomException;
import shop.mtcoding.project.model.Apply;
import shop.mtcoding.project.model.ApplyRepository;
import shop.mtcoding.project.model.Comp;
import shop.mtcoding.project.model.ResumeRepository;
import shop.mtcoding.project.model.SkillRepository;
import shop.mtcoding.project.model.SuggestRepository;
import shop.mtcoding.project.model.User;
import shop.mtcoding.project.model.UserRepository;
import shop.mtcoding.project.service.ResumeService;

@Controller
public class ResumeController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ResumeService resumeService;

    @Autowired
    private ResumeRepository resumeRepository;

    @Autowired
    private SkillRepository skillRepository;

    @Autowired
    private SuggestRepository suggestRepository;

    @Autowired
    private ApplyRepository applyRepository;

    @Autowired
    private HttpSession session;

    @DeleteMapping("/resume/{id}/delete")
    public ResponseEntity<?> deleteResume(@PathVariable int id) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            throw new CustomApiException("????????? ?????? ???????????????", HttpStatus.UNAUTHORIZED);
        }
        resumeService.???????????????(id, principal.getUserId());
        return new ResponseEntity<>(new ResponseDto<>(1, "????????????", null), HttpStatus.OK);
    }

    @GetMapping("/user/resume") // ???????????????
    public String manageResume(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            throw new CustomException("????????? ?????? ???????????????", HttpStatus.UNAUTHORIZED);
        }
        List<ResumeManageRespDto> rLists = resumeRepository.findAllByUserId(principal.getUserId());
        for (ResumeManageRespDto rList : rLists) {
            List<String> insertList = new ArrayList<>();
            for (ResumeSkillRespDto skill : skillRepository.findByResumeSkill(rList.getResumeId())) {
                insertList.add(skill.getSkill());
                rList.setSkillList(insertList);
            }
        }
        model.addAttribute("rDtos", rLists);
        User userPS = userRepository.findById(principal.getUserId());
        model.addAttribute("user", userPS);
        // rList.forEach((s)->{System.out.println("????????? : "+ s.toString());});
        return "resume/manageResume";
    }

    @GetMapping("/user/request/resume") // ????????? ????????? ????????? ????????????
    public ResponseEntity<?> requestResume(Model model) {
        User principal = (User) session.getAttribute("principal");
        List<ResumeManageRespDto> rDtos = resumeRepository.findAllByUserId(principal.getUserId());
        return new ResponseEntity<>(new ResponseDto<>(1, "????????? ???????????? ??????", rDtos), HttpStatus.OK);
    }

    @PostMapping("/user/resume/write")
    public ResponseEntity<?> writeResume(@RequestBody ResumeWriteReqDto resumeWriteReqDto) {
        // System.out.println("????????? : "+ resumeWriteReqDto.toString());
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            throw new CustomApiException("????????? ?????? ???????????????", HttpStatus.UNAUTHORIZED);
        }
        if (resumeWriteReqDto.getEducation() == null || resumeWriteReqDto.getEducation().isEmpty()) {
            throw new CustomApiException("????????? ??????????????????");
        }
        if (resumeWriteReqDto.getCareer() == null || resumeWriteReqDto.getCareer().isEmpty()) {
            throw new CustomApiException("????????? ??????????????????");
        }
        if (resumeWriteReqDto.getTitle() == null || resumeWriteReqDto.getTitle().isEmpty()) {
            throw new CustomApiException("????????? ??????????????????");
        }
        if (!(resumeWriteReqDto.getState() == 0 || resumeWriteReqDto.getState() == 1)) {
            throw new CustomApiException("??????????????? ??????????????????");
        }
        if (ObjectUtils.isEmpty(resumeWriteReqDto.getSkillList())) {
            throw new CustomApiException("????????? ??????????????????");
        }

        Integer resumeId = resumeService.???????????????(resumeWriteReqDto, principal.getUserId());

        return new ResponseEntity<>(new ResponseDto<>(1, "?????? ??????!", resumeId), HttpStatus.CREATED);
    }

    @PutMapping("/user/resume/update")
    public ResponseEntity<?> saveTempResume(@RequestBody ResumeUpdateReqDto resumeWriteReqDto) {

        // System.out.println("????????? : "+ resumeWriteReqDto.toString());

        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            throw new CustomApiException("????????? ?????? ???????????????", HttpStatus.UNAUTHORIZED);
        }
        if (resumeWriteReqDto.getEducation() == null || resumeWriteReqDto.getEducation().isEmpty()) {
            throw new CustomApiException("????????? ??????????????????");
        }
        if (resumeWriteReqDto.getCareer() == null || resumeWriteReqDto.getCareer().isEmpty()) {
            throw new CustomApiException("????????? ??????????????????");
        }
        if (resumeWriteReqDto.getTitle() == null || resumeWriteReqDto.getTitle().isEmpty()) {
            throw new CustomApiException("????????? ??????????????????");
        }
        if (!(resumeWriteReqDto.getState() == 0 || resumeWriteReqDto.getState() == 1)) {
            throw new CustomApiException("??????????????? ??????????????????");
        }
        if (ObjectUtils.isEmpty(resumeWriteReqDto.getSkillList())) {
            throw new CustomApiException("????????? ??????????????????");
        }

        resumeService.???????????????(resumeWriteReqDto, principal.getUserId());

        return new ResponseEntity<>(new ResponseDto<>(1, "?????? ??????!", null), HttpStatus.CREATED);
    }

    @GetMapping("/user/resume/write")
    public String writeResumeForm(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            throw new CustomException("????????? ?????? ???????????????", HttpStatus.UNAUTHORIZED);
        }
        UserDataRespDto userPS = userRepository.findByUserId(principal.getUserId());
        model.addAttribute("rDto", userPS);
        User userPS1 = userRepository.findById(principal.getUserId());
        model.addAttribute("user", userPS1);
        return "resume/writeResumeForm";
    }

    @GetMapping("/user/resume/{id}/update")
    public String updateResumeForm(@PathVariable Integer id, Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            throw new CustomException("????????? ?????? ???????????????", HttpStatus.UNAUTHORIZED);
        }

        ResumeSaveRespDto rDto = resumeRepository.findById(id);
        List<String> insertList = new ArrayList<>();
        for (ResumeSkillRespDto skill : skillRepository.findByResumeSkill(rDto.getResumeId())) {
            insertList.add(skill.getSkill());
            rDto.setSkillList(insertList);
        }
        model.addAttribute("rDto", rDto);

        return "resume/updateResumeForm";
    }

    @GetMapping("/resume/{id}")
    public String resumeDetail(@PathVariable Integer id, Model model) {
        if (ObjectUtils.isEmpty(resumeRepository.findByResumeId(id))) {
            throw new CustomException("???????????? ?????? ????????? ?????????.");
        }

        Comp compSession = (Comp) session.getAttribute("compSession");
        ResumeDetailRespDto rDto ; 
        if (compSession != null) {
             rDto = resumeRepository.findDetailPublicResumebyById(id, compSession.getCompId());
        }else{
             rDto = resumeRepository.findDetailPublicResumebyById(id, null);
        }
        List<String> insertList = new ArrayList<>();
        for (ResumeSkillRespDto skill : skillRepository.findByResumeSkill(rDto.getResumeId())) {
            insertList.add(skill.getSkill());
            rDto.setSkillList(insertList);
        }
        
        compSession = (Comp) session.getAttribute("compSession");
        if (compSession != null) {
            try {
                SuggestToCompRespIdDto sDto = suggestRepository.findByCompIdAndResumeId(compSession.getCompId(), id);
                rDto.setSuggestState(sDto.getState());
            } catch (Exception e) {
            }
        }
        model.addAttribute("rDto", rDto);
        return "/resume/resumeDetail";
    }

    @GetMapping("/comp/resume/search")
    public ResponseEntity<?> searchCheckbox(ResumeCheckboxReqDto rDto, Model model) {
        System.out.println("????????? : " + rDto.toString());
        if (rDto.getCareer() == null || rDto.getCareer().isEmpty()) {
            rDto.setCareer("");
        }
        List<ResumeSearchRespDto> rDtos = resumeRepository.findResumeByCheckBox(rDto);
        for (ResumeSearchRespDto rDto1 : rDtos) {
            List<String> insertList = new ArrayList<>();
            for (ResumeSkillRespDto skill : skillRepository.findByResumeSkill(rDto1.getResumeId())) {
                insertList.add(skill.getSkill());
            }
            rDto1.setSkillList(insertList);
        }
        return new ResponseEntity<>(new ResponseDto<>(1, "?????? ??????", null), HttpStatus.OK);
    }

    @GetMapping("/comp/resume/apply/{id}")
    public String applyResumeDetail(@PathVariable Integer id, Model model) {
        if (id == null) {
            throw new CustomException("????????? ???????????? ???????????????.");
        }
        Apply applyPS = applyRepository.findByApplyId(id);
        if (applyPS == null) {
            throw new CustomException("?????? ?????? ???????????? ????????????.");
        }
        Comp compSession = (Comp) session.getAttribute("compSession");
        ResumeDetailRespDto rDto = resumeRepository.findDetailPublicResumebyById(applyPS.getResumeId(), compSession.getCompId());
        List<String> insertList = new ArrayList<>();
        for (ResumeSkillRespDto skill : skillRepository.findByResumeSkill(rDto.getResumeId())) {
            insertList.add(skill.getSkill());
            rDto.setSkillList(insertList);
        }
         compSession = (Comp) session.getAttribute("compSession");
        if (compSession != null) {
            try {
                rDto.setSuggestState(suggestRepository.findByCompIdAndResumeId(compSession.getCompId(), applyPS.getResumeId()).getState());
            } catch (Exception e) {
            }
            try {
                ApplytoCompRespDto aDto = applyRepository.findByCompIdAndApplyId(compSession.getCompId(), id);
                rDto.setApplyState(aDto.getState());
                rDto.setApplyId(aDto.getApplyId());
            } catch (Exception e) {
            }
        }
        model.addAttribute("rDto", rDto);
        return "/resume/resumeDetail";
    }

}

// ???? ???????????? ????????? ?????? ?????? ????
// ???? ??????????????? "/resume/???????????????"

// ???? ???? ?????????????????? ???? ????
// ???? ??????????????? "/user/resume"
// ???? ??????????????? "/user/resume/write"
// ???? ??????????????? "/user/resume/???????????????/update"