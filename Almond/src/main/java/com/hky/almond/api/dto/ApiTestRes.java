package com.hky.almond.api.dto;

import java.io.Serializable;

import com.hky.almond.api.dto.comn.ApiComnRes;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@ToString
@EqualsAndHashCode(callSuper=false)
public class ApiTestRes  implements Serializable{
	private static final long serialVersionUID = -7360057180675639317L;
	
	private String resCode;
	private String resMsg;
	private String id;
}
