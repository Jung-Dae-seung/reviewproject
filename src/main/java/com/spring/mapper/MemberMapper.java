package com.spring.mapper;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.LoginVO;
import com.spring.domain.MemberAuthVO;
import com.spring.domain.MemberVO;
import com.spring.domain.changeMemberInfoVO;

public interface MemberMapper {
	public int signup(MemberVO vo);
	public int signup_auth(String userid);
	public LoginVO login(@Param("userid")String userid,@Param("password")String password);
	public MemberVO dupId(String userid);
	public MemberVO memberInfo(String userid);
	public int updatePsw(changeMemberInfoVO vo);
	public int updateMobile(@Param("userid")String userid,@Param("new_mobile")String new_mobile);
	public int updateEmail(@Param("userid")String userid,@Param("new_email")String new_email);
	public int leave(String userid);
	public int leave_auth(String userid);
	public MemberAuthVO memberAuth(String usrid);
	
}
