package com.its.member.service;

import com.its.member.dto.CommentDTO;
import com.its.member.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
@RequestMapping("comment")
public class CommentService {
    @Autowired
    private CommentRepository cr;

    public List<CommentDTO> findAll(Long boardId) {
        return cr.findAll(boardId);
    }

    public void save(CommentDTO commentDTO) {
        cr.save(commentDTO);
    }
}
