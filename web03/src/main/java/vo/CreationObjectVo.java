package vo;

//import java.util.*;
import java.util.Date;

public class CreationObjectVo {

	private String creationDate;
	
	//-- 기본 생성자
	//-- CreationObjectVo vo = new CreationObjectVo();
	public CreationObjectVo() {
		this.creationDate = new Date().toString();
		
	}
	
	//-- 생성시간 가지고 ㅇ기
	public String getCreationDate() {
		return this.creationDate;
	}
	
}
