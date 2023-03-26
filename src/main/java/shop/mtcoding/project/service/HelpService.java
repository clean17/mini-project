package shop.mtcoding.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import shop.mtcoding.project.config.exception.CustomApiException;
import shop.mtcoding.project.config.exception.CustomException;
import shop.mtcoding.project.dto.help.HelpReq.HelpSaveReqDto;
import shop.mtcoding.project.model.help.HelpRepository;

@Service
public class HelpService {
    @Autowired
    private HelpRepository helpRepository;

    @Transactional
    public void 글쓰기(HelpSaveReqDto helpSaveReqDto){
        try {
            helpRepository.insert(helpSaveReqDto);
        } catch (Exception e) {
            throw new CustomApiException("연락받으실 이메일을 다시 확인해주세요.", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @Transactional
    public void 연락처(HelpSaveReqDto helpSaveReqDto, int tel){
        try {
            helpRepository.insert(helpSaveReqDto);
        } catch (Exception e) {
            throw new CustomApiException("연락처가 올바르지 않습니다.");
        }
    }
}
