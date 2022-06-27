package com.its.member.repository;

import com.its.member.dto.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public void save(BoardDTO boardDTO) {
        sql.insert("Board.save", boardDTO);
    }

    public List<BoardDTO> findAll() {
        List<BoardDTO> boardDTOList = sql.selectList("Board.findAll");
        return boardDTOList;
    }

    public BoardDTO findById(Long id) {
        sql.update("Board.hitsAdd", id);
        return sql.selectOne("Board.findById", id);
    }
}
