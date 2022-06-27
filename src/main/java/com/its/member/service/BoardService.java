package com.its.member.service;

import com.its.member.dto.BoardDTO;
import com.its.member.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {
    @Autowired
    private BoardRepository br;

    public void save(BoardDTO boardDTO) {
        br.save(boardDTO);
    }

    public List<BoardDTO> findAll() {
        return br.findAll();
    }

    public BoardDTO findById(Long id) {
        return br.findById(id);
    }
}
