package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.GuestBookVo;

@Repository
public class GuestBookDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//방문자 1명 추가
	public int guestAdd(GuestBookVo guestBookVo) {
		System.out.println("GuestBookDao > guestAdd");
		int count = sqlSession.insert("guestbook.guestAdd",guestBookVo);
			
		return count;
	}
	
	//방문자 정보 1명 삭제하기
	public int guestDelete(int no) {
		int count = sqlSession.delete("guestbook.guestDelete", no);

		return count;
	}
	//방문자 전체목록 가져오기
	public List<GuestBookVo> guestSelect() {
		List<GuestBookVo> guestList = sqlSession.selectList("guestbook.selectList");
		
		return guestList;

	}
	
	// 방문자 한명만 정보가져오기
	public GuestBookVo getGuest(int no) {
		GuestBookVo guestBookVo = sqlSession.selectOne("guestbook.getGuest", no);

		return guestBookVo;
	}


}
