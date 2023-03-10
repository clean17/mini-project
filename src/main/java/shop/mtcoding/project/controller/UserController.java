package shop.mtcoding.project.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import shop.mtcoding.project.dto.apply.ApplyResp.ApllyStatusUserRespDto;
import shop.mtcoding.project.dto.common.ResponseDto;
import shop.mtcoding.project.dto.interest.InterestResp.InterestChangeRespDto;
import shop.mtcoding.project.dto.jobs.JobsResp.JobsMainRecommendRespDto;
import shop.mtcoding.project.dto.resume.ResumeResp.ResumeManageRespDto;
import shop.mtcoding.project.dto.scrap.UserScrapResp.UserScrapRespDto;
import shop.mtcoding.project.dto.skill.RequiredSkillReq.RequiredSkillWriteReqDto;
import shop.mtcoding.project.dto.skill.ResumeSkillResp.ResumeSkillRespDto;
import shop.mtcoding.project.dto.suggest.SuggestResp.SuggestToUserRespDto;
import shop.mtcoding.project.dto.user.UserReq.UserJoinReqDto;
import shop.mtcoding.project.dto.user.UserReq.UserLoginReqDto;
import shop.mtcoding.project.dto.user.UserReq.UserPasswordReqDto;
import shop.mtcoding.project.dto.user.UserReq.UserUpdateReqDto;
import shop.mtcoding.project.exception.CustomApiException;
import shop.mtcoding.project.exception.CustomException;
import shop.mtcoding.project.model.ApplyRepository;
import shop.mtcoding.project.model.InterestRepository;
import shop.mtcoding.project.model.JobsRepository;
import shop.mtcoding.project.model.ResumeRepository;
import shop.mtcoding.project.model.ScrapRepository;
import shop.mtcoding.project.model.SkillRepository;
import shop.mtcoding.project.model.SuggestRepository;
import shop.mtcoding.project.model.User;
import shop.mtcoding.project.model.UserRepository;
import shop.mtcoding.project.service.UserService;
import shop.mtcoding.project.util.DateUtil;
import shop.mtcoding.project.util.MockSession;
import shop.mtcoding.project.util.Sha256;

@Controller
public class UserController {

    @Autowired
    private HttpSession session;

    @Autowired
    private UserService userService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ApplyRepository applyRepository;

    @Autowired
    private SuggestRepository suggestRepository;

    @Autowired
    private ScrapRepository scrapRepository;

    @Autowired
    private ResumeRepository resumeRepository;

    @Autowired
    private SkillRepository skillRepository;

    @Autowired
    private InterestRepository interestRepository;

    @Autowired
    private JobsRepository jobsRepository;

    @PostMapping("/user/join")
    public String join(UserJoinReqDto userJoinReqDto) {
        if (userJoinReqDto.getEmail() == null || userJoinReqDto.getEmail().isEmpty()) {
            throw new CustomException("???????????? ??????????????????");
        }
        if (userJoinReqDto.getName() == null || userJoinReqDto.getName().isEmpty()) {
            throw new CustomException("????????? ??????????????????");
        }
        if (userJoinReqDto.getPassword() == null ||
                userJoinReqDto.getPassword().isEmpty()) {
            throw new CustomException("??????????????? ??????????????????");
        }
        if (userJoinReqDto.getPassword() == null ||
                userJoinReqDto.getPassword().isEmpty()) {
            throw new CustomException("????????? ??????????????? ??????????????????");
        }
        if (userJoinReqDto.getBirth() == null || userJoinReqDto.getBirth().isEmpty()) {
            throw new CustomException("??????????????? ??????????????????");
        }
        if (userJoinReqDto.getTel() == null || userJoinReqDto.getTel().isEmpty()) {
            throw new CustomException("?????????????????? ??????????????????");
        }
        userService.????????????(userJoinReqDto);

        return "redirect:/user/login";
    }

    @GetMapping("/user/emailCheck")
    public @ResponseBody ResponseEntity<?> sameEmailCheck(String email) {
        User userPS = userRepository.findByUserEmail(email);
        if (userPS != null) {
            throw new CustomApiException("????????? email??? ???????????????.");
        }
        return new ResponseEntity<>(new ResponseDto<>(1, "?????? email??? ?????? ???????????????.", null), HttpStatus.OK);
    }

    @GetMapping("/user/join")
    public String joinForm() {
        return "user/joinForm";
    }

    @PostMapping("/user/login")
    public String login(UserLoginReqDto userloginReqDto, HttpServletResponse httpServletResponse) {
        if (userloginReqDto.getEmail() == null || userloginReqDto.getEmail().isEmpty()) {
            throw new CustomException("email??? ??????????????????");
        }
        if (userloginReqDto.getPassword() == null || userloginReqDto.getPassword().isEmpty()) {
            throw new CustomException("password ??????????????????");
        }
        User principal = userService.?????????(userloginReqDto);
        if (principal == null) {
            return "redirect:/loginForm";
        } else {
            if (userloginReqDto.getRememberEmail() == null) {
                userloginReqDto.setRememberEmail("");
            }
            if (userloginReqDto.getRememberEmail().equals("on")) {
                Cookie cookie = new Cookie("rememberEmail", userloginReqDto.getEmail());
                httpServletResponse.addCookie(cookie);
            } else {
                Cookie cookie = new Cookie("remember", "");
                cookie.setMaxAge(0);
                httpServletResponse.addCookie(cookie);
            }
            session.setAttribute("compSession", null);
            session.setAttribute("principal", principal);
            return "redirect:/";
        }
    }

    @PostMapping("/user/login2")
    public ResponseEntity<?> login2(@RequestBody UserLoginReqDto userloginReqDto,
            HttpServletResponse httpServletResponse) {
        if (userloginReqDto.getEmail() == null || userloginReqDto.getEmail().isEmpty()) {
            throw new CustomApiException("email??? ??????????????????");
        }
        if (userloginReqDto.getPassword() == null || userloginReqDto.getPassword().isEmpty()) {
            throw new CustomApiException("password ??????????????????");
        }
        User principal = userService.ajax?????????(userloginReqDto);
        if (principal != null) {
            if (userloginReqDto.getRememberEmail() == null) {
                userloginReqDto.setRememberEmail("");
            }
            if (userloginReqDto.getRememberEmail().equals("on")) {
                Cookie cookie = new Cookie("rememberEmail", userloginReqDto.getEmail());
                httpServletResponse.addCookie(cookie);
            } else {
                Cookie cookie = new Cookie("remember", "");
                cookie.setMaxAge(0);
                httpServletResponse.addCookie(cookie);
            }
            session.setAttribute("principal", principal);
        }
        return new ResponseEntity<>(new ResponseDto<>(1, "????????? ??????", null), HttpStatus.OK);
    }

    @GetMapping("/user/login")
    public String loginForm() {
        return "user/loginForm";
    }

    @PostMapping("/user/passwordCheck")
    public @ResponseBody ResponseEntity<?> samePasswordCheck(@RequestBody UserPasswordReqDto userPasswordReqDto) {
        userPasswordReqDto.setPassword(Sha256.encode(userPasswordReqDto.getPassword()));
        User userPS = userRepository.findByUseridAndPassword(
                userPasswordReqDto.getUserId(),
                userPasswordReqDto.getPassword());
        if (userPS == null) {
            throw new CustomApiException("??????????????? ???????????????.");
        }
        return new ResponseEntity<>(new ResponseDto<>(1, "????????? ?????????????????????.",
                null), HttpStatus.OK);
    }

    @PutMapping("/user/update")
    public ResponseEntity<?> updateUser(@RequestBody UserUpdateReqDto userUpdateReqDto) {
        // System.out.println("????????? : " + userUpdateReqDto.toString());
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            throw new CustomApiException("????????? ?????? ???????????????", HttpStatus.UNAUTHORIZED);
        }
        if (userUpdateReqDto.getPassword() == null || userUpdateReqDto.getPassword().isEmpty()) {
            throw new CustomApiException("??????????????? ???????????????");
        }

        if (userUpdateReqDto.getName() == null || userUpdateReqDto.getName().isEmpty()) {
            throw new CustomApiException("????????? ???????????????");
        }
        if (userUpdateReqDto.getBirth() == null || userUpdateReqDto.getBirth().isEmpty()) {
            throw new CustomApiException("??????????????? ???????????????");
        }
        if (userUpdateReqDto.getTel() == null || userUpdateReqDto.getTel().isEmpty()) {
            throw new CustomApiException("??????????????? ???????????????");
        }
        if (userUpdateReqDto.getAddress() == null || userUpdateReqDto.getAddress().isEmpty()) {
            throw new CustomApiException("????????? ???????????????");
        }
        userUpdateReqDto.setPassword(Sha256.encode(userUpdateReqDto.getPassword()));
        userService.??????????????????(userUpdateReqDto, principal.getUserId());
        principal = userRepository.findById(principal.getUserId());
        session.setAttribute("principal", principal);
        return new ResponseEntity<>(new ResponseDto<>(1, "????????????", null), HttpStatus.OK);

    }

    @GetMapping("/user/update")
    public String updateForm(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            throw new CustomApiException("????????? ?????? ???????????????", HttpStatus.UNAUTHORIZED);
        }
        User userPS = userRepository.findById(principal.getUserId());
        model.addAttribute("uDto", userPS);
        return "user/updateForm";
    }

    @GetMapping("/user/myhome")
    public String myhome(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/user/login";
        }
        List<ResumeManageRespDto> rLists = resumeRepository.findAllByUserId(principal.getUserId());
        for (ResumeManageRespDto rList : rLists) {
            List<String> insertList = new ArrayList<>();
            for (ResumeSkillRespDto skill : skillRepository.findByResumeSkill(rList.getResumeId())) {
                insertList.add(skill.getSkill());
                rList.setSkillList(insertList);
            }
        }
        List<InterestChangeRespDto> iDtos = interestRepository.findById(principal.getUserId());
        model.addAttribute("iDtos", iDtos);
        model.addAttribute("rDtos", rLists);
        User userPS = userRepository.findById(principal.getUserId());
        model.addAttribute("user", userPS);

        List<JobsMainRecommendRespDto> rDtos = jobsRepository.findAlltoMainRecommend(principal.getUserId());
        for (JobsMainRecommendRespDto jDto : rDtos) {
            try {
                jDto.setUserScrapId(scrapRepository
                        .findScrapIdByUserIdAndJobsId(principal.getUserId(), jDto.getJobsId()).getUserScrapId());
            } catch (Exception e) {
            }
            long dDay = DateUtil.dDay(jDto.getEndDate());
            jDto.setLeftTime(dDay);
            List<String> insertList = new ArrayList<>();
            for (RequiredSkillWriteReqDto skill : skillRepository.findByJobsSkill(jDto.getJobsId())) {
                insertList.add(skill.getSkill());
            }

            jDto.setSkillList(insertList);
        }
        List<JobsMainRecommendRespDto> rDtos2 = jobsRepository.findAlltoMainRecommendRandom(principal.getUserId());
        for (JobsMainRecommendRespDto jDto : rDtos2) {
            try {
                jDto.setUserScrapId(scrapRepository
                        .findScrapIdByUserIdAndJobsId(principal.getUserId(), jDto.getJobsId()).getUserScrapId());
            } catch (Exception e) {
            }
            long dDay = DateUtil.dDay(jDto.getEndDate());
            jDto.setLeftTime(dDay);
            List<String> insertList = new ArrayList<>();
            for (RequiredSkillWriteReqDto skill : skillRepository.findByJobsSkill(jDto.getJobsId())) {
                insertList.add(skill.getSkill());
            }
            jDto.setSkillList(insertList);
            rDtos.add(jDto);
        }
        model.addAttribute("jDtos", rDtos);

        return "user/myhome";
    }

    @GetMapping("/user/scrap")
    public String scarp(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal != null) {
            List<UserScrapRespDto> usDtos = scrapRepository.findAllScrapByUserId(principal.getUserId());
            for (UserScrapRespDto usDto : usDtos) {
                long dDay = DateUtil.dDay(usDto.getEndDate());
                usDto.setLeftTime(dDay);
                List<String> insertList = new ArrayList<>();
                for (RequiredSkillWriteReqDto skill : skillRepository.findByJobsSkill(usDto.getJobsId())) {
                    insertList.add(skill.getSkill());
                }
                usDto.setSkillList(insertList);
            }
            model.addAttribute("usDtos", usDtos);
        }
        User userPS = userRepository.findById(principal.getUserId());
        model.addAttribute("user", userPS);
        return "user/scrap";
    }

    @GetMapping("/user/offer")
    public String offer(Model model) {
        User principal = (User) session.getAttribute("principal");
        List<ApllyStatusUserRespDto> aDtos = applyRepository.findAllByUserIdtoApply(principal.getUserId());
        model.addAttribute("aDtos", aDtos);
        List<SuggestToUserRespDto> sDtos = suggestRepository.findAllGetOfferByUserId(principal.getUserId());
        model.addAttribute("sDtos", sDtos);
        User userPS = userRepository.findById(principal.getUserId());
        model.addAttribute("user", userPS);
        return "user/offer";
    }

    @GetMapping("/logout")
    public String logout() {
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("/user/profileUpdateForm")
    public String profileUpdateForm(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/user/login";
        }

        User userPS = userRepository.findById(principal.getUserId());

        model.addAttribute("user", userPS);

        return "user/profileUpdateForm";
    }

    @PutMapping("/user/profileUpdate")
    public ResponseEntity<?> profileUpdate(MultipartFile photo) throws Exception {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            throw new CustomApiException("???????????? ????????? ????????? ?????????.", HttpStatus.UNAUTHORIZED);
        }
        // System.out.println(profile.getContentType());
        // System.out.println(profile.getOriginalFilename());
        if (photo.isEmpty()) {
            throw new CustomApiException("????????? ?????? ?????? ???????????????.");
        }

        User userPS = userService.?????????????????????(photo, principal.getUserId());
        session.setAttribute("principal", userPS);
        return new ResponseEntity<>(new ResponseDto<>(1, "????????? ?????? ??????", null), HttpStatus.OK);
    }
}

// ??? ???????????? "/user/join"
// ??? ????????? "/user/login"
// ??? ???????????? "/user/interest"

// ???? ???? ?????????????????? ???? ????
// ???? ????????? "/user/myhome"
// ???? ???????????? "/user/update"
// ???? ????????? "/user/scrap"
// ???? ?????? ??? ???????????? "/user/offer"