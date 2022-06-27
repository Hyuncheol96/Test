package com.its.member.service;

import com.its.member.dto.MemberDTO;
import com.its.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository mr;

    public void save(MemberDTO memberDTO) {
        mr.save(memberDTO);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO login = mr.login(memberDTO);
       return login;
    }

    public List<MemberDTO> findAll() {
        return mr.findAll();
    }


    public void delete(Long id) {
        mr.delete(id);
    }

    public MemberDTO findById(Long id) {
        return mr.findById(id);
    }

    public void update(MemberDTO memberDTO) {
        mr.update(memberDTO);
    }
}
