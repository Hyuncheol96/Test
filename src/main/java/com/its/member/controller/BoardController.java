package com.its.member.controller;

import com.its.member.dto.BoardDTO;
import com.its.member.dto.CommentDTO;
import com.its.member.service.BoardService;
import com.its.member.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/board")
public class BoardController {
    @Autowired
    private BoardService bs;

    @Autowired
    private CommentService cs;

    @GetMapping("/save-form")
    public String saveForm() {
        return "board/save";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute BoardDTO boardDTO, Model model) {
        bs.save(boardDTO);
        List<BoardDTO> boardDTOList = bs.findAll();
        model.addAttribute("boaList", boardDTOList);
        return "board/list";
    }

    @GetMapping("/detail")
    public String findById(@RequestParam("id") Long id, Model model) {
        BoardDTO boardDTO = bs.findById(id);
        List<CommentDTO> commentDTOList = cs.findAll(id);
        model.addAttribute("boa", boardDTO);
        model.addAttribute("comList", commentDTOList);
        return "board/detail";
    }

    @GetMapping("findAll")
    public String findAll(Model model) {
        List<BoardDTO> boardDTOList = bs.findAll();
        model.addAttribute("boaList", boardDTOList);
        return "board/list";
    }


}
