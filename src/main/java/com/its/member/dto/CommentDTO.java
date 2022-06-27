package com.its.member.dto;

import lombok.Data;

@Data
public class CommentDTO {
    private Long id;
    private String writer;
    private Long boardId;
    private String con;
}
