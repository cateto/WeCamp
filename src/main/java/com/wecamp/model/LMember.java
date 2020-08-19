package com.wecamp.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LMember {
	private String email;
	private String name;
	private String nickname;
	private String pwd;
	private Date birth;
}
