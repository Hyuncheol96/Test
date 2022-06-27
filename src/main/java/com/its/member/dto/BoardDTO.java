package com.its.member.dto;

import lombok.Data;

@Data
public class BoardDTO {
    private Long id;
    private String title;
    private String writer;
    private String con;
    private int hits;
}
