package com.its.member.controller;

import com.its.member.dto.MemberDTO;
import com.its.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService ms;

    // 회원가입 화면 요청
    @GetMapping("/save-form")
    public String saveForm() {
        return "member/save";
    }

    // 회원가입 처리
    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO) {
        ms.save(memberDTO);
        return "member/login";
    }

    // 로그인 화면 요청
    @GetMapping("login-form")
    public String loginForm() {
        return "member/login";
    }

    // 로그인 처리
    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session, Model model) {
        MemberDTO member = ms.login(memberDTO); // 성공 또는 실패
        if ( member != null) {
            session.setAttribute("id", member.getId());
            session.setAttribute("memberId", member.getMemberId());
            model.addAttribute("mem", member);
            return "member/detail";
        } else {
            return "member/login";
        }

    }

    // 회원목록 조회
    @GetMapping("/findAll")
    public String findAll(Model model) {
        List<MemberDTO> memberDTOList = ms.findAll();
        model.addAttribute("memList", memberDTOList);
        return "member/list";
    }

    // 회원 삭제
    @GetMapping("/delete")
    public String delete(@RequestParam Long id) {
        ms.delete(id);
        return "redirect:/member/findAll";
    }

    // 회원 수정 화면 요청
    @GetMapping("/update-form")
    public String updateForm(@RequestParam Long id, Model model) {
        MemberDTO memberDTO = ms.findById(id);
        model.addAttribute("mem", memberDTO);
        return "member/update";
    }

    // 회원 수정처리
    @PostMapping("/update")
    public String update(@ModelAttribute MemberDTO memberDTO) {
//        Long id = (Long) session.getAttribute("id");
//        memberDTO.setId(id); update 폼에 name=id 가 없을때 써야함 (Long) = 강제형변환
        ms.update(memberDTO);
        return "redirect:/member/detail?id=" + memberDTO.getId();
    }

    // 회원 상세조회
    @GetMapping("/detail")
    public String findById(@RequestParam ("id") Long id, Model model) {
        MemberDTO memberDTO = ms.findById(id);
        model.addAttribute("mem", memberDTO);
        return "member/detail";
    }





}
