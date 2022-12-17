package vo;

import java.io.Serializable;

//-- 웹 유저 객체 
public class WebUser implements Serializable{
	
//	아이디 input type="text"
	private String webId;
//	패스워드 input type="password"
	private String webPwd;
//	이름 input type="text"
	private String webName;
//	전화번호 select - text - text
	private String webCel;
//	이메일주소 text @ select
	private String webEmail;
//	자기소개 textare	
	private String webIntroduce;
	public String getWebId() {
		return webId;
	}
	public void setWebId(String webId) {
		this.webId = webId;
	}
	public String getWebPwd() {
		return webPwd;
	}
	public void setWebPwd(String webPwd) {
		this.webPwd = webPwd;
	}
	public String getWebName() {
		return webName;
	}
	public void setWebName(String webName) {
		this.webName = webName;
	}
	public String getWebCel() {
		return webCel;
	}
	public void setWebCel(String webCel) {
		this.webCel = webCel;
	}
	public String getWebEmail() {
		return webEmail;
	}
	public void setWebEmail(String webEmail) {
		this.webEmail = webEmail;
	}
	public String getWebIntroduce() {
		return webIntroduce;
	}
	public void setWebIntroduce(String webIntroduce) {
		this.webIntroduce = webIntroduce;
	}
	
	
}
