package shop.mtcoding.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import shop.mtcoding.project.config.exception.CustomApiException;
import shop.mtcoding.project.config.exception.CustomException;
import shop.mtcoding.project.dto.user.UserReq.UserJoinReqDto;
import shop.mtcoding.project.dto.user.UserReq.UserLoginReqDto;
import shop.mtcoding.project.dto.user.UserReq.UserUpdateReqDto;
import shop.mtcoding.project.model.user.User;
import shop.mtcoding.project.model.user.UserRepository;
import shop.mtcoding.project.util.PathUtil;
import shop.mtcoding.project.util.Sha256;


@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Transactional
    public void 회원가입(UserJoinReqDto userJoinReqDto) {
        User userPS = userRepository.findByUserEmail(userJoinReqDto.getEmail());
        if (userPS != null) {
            throw new CustomException("존재하지 않는 회원입니다.");
        }
        userJoinReqDto.setPassword(Sha256.encode(userJoinReqDto.getPassword()));
        try {
            userRepository.insert(userJoinReqDto);
        } catch (Exception e) {
            throw new CustomException("서버 에러가 발생 했습니다.", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @Transactional(readOnly = true)
    public User 로그인(UserLoginReqDto userloginReqDto) {
        userloginReqDto.setPassword(Sha256.encode(userloginReqDto.getPassword()));
        User principal = userRepository.findByEmailAndPassword(userloginReqDto.getEmail(),
                userloginReqDto.getPassword());
        if (principal == null) {
            throw new CustomException("이메일 혹은 패스워드가 잘못 입력 되었습니다.");
        }
        return principal;
    }

    @Transactional(readOnly = true)
    public User ajax로그인(UserLoginReqDto userloginReqDto) {
        User principal = userRepository.findByEmailAndPassword(userloginReqDto.getEmail(),
                userloginReqDto.getPassword());
        if (principal == null) {
            throw new CustomApiException("이메일 혹은 패스워드가 잘못 입력 되었습니다.");
        }
        return principal;
    }

    @Transactional
    public void 개인정보수정(UserUpdateReqDto userUpdateReqDto, Integer userId) {
        if (userId != userUpdateReqDto.getUserId()) {
            throw new CustomApiException("정상적인 접근이 아닙니다.", HttpStatus.FORBIDDEN);
        }
        User userPS = userRepository.findById(userUpdateReqDto.getUserId());
        if (userPS == null)
            throw new CustomException("존재하지 않는 회원입니다.");
        try {
            userRepository.updateById(userUpdateReqDto);
        } catch (Exception e) {
            throw new CustomException("서버 에러가 발생 했습니다.", HttpStatus.INTERNAL_SERVER_ERROR);
        }
        
    }

    @Transactional
    public User 프로필사진수정(MultipartFile photo, Integer pricipalId) {

        String uuidImageName = PathUtil.writeImageFile(photo);

        User userPS = userRepository.findById(pricipalId);
        userPS.setPhoto(uuidImageName);
        try {
            // userRepository.updatePhotoById(uuidImageName, pricipalId);
            userRepository.updatePhotoById("/images/033fad18-eeb0-4d44-a99c-dfa00955ec24_logo192.png", pricipalId);
        } catch (Exception e) {
            throw new CustomException("사진 수정에 실패 했습니다.", HttpStatus.INTERNAL_SERVER_ERROR);
        }
        return userPS;
    }
}
