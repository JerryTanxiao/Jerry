package com.Rice.mapper;
import com.Rice.entity.Member;
import org.apache.ibatis.annotations.Mapper;

import com.Rice.entity.User;
@Mapper
public interface UserMapper {
	public User selectLoginByUser(User user);
	public abstract Member selectMemberByUser(User user);
	/**
	 * 用户添加
	 * @param user
	 * @return
	 */
	Integer insertUsers(User user);
	public abstract Integer insertMemberToUser(Member member);
}
