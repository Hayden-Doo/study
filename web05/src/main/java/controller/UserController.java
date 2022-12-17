package controller;

import java.util.List;

import repository.UserRepository;
import vo.WebUser;

//-- 비즈니스 로직
//-- useBean jsp 싷행시 자동생성 
//-- Object 클래스의 자식 
public class UserController {

	List<WebUser> userRepository;
	
	// 디폴트 생성자를 호출한다(useBean)
	// 접근한정자 클래스명(매개변수){}
	public UserController() {
		// System.out.println("자네왔는다?");
		this.userRepository = UserRepository.getUserRepository();
	}
	
	
	// 1. 회원 데이터 입력
	public boolean addUser(WebUser user) {
		// add 가 성공하면 true
		// add 가 실패하면 false
		return this.userRepository.add(user);
	}
	
	// 2. 회원 아이디 체크
	
	// 3. 회원 목록 들고오기
	public List<WebUser> getUserListAll() {
		return this.userRepository;
	}
	
	// 4. 회원 삭제
//	public boolean delUser(WebUser user) {
//		if (this.userRepository.isEmpty()){
//			System.out.println("회원 정보 없음");
//			return false;
//		} else {
//			for (int i = 0; i < userRepository.size(); i++) {
//				if (user == this.userRepository.get(i)) {
//					this.userRepository.remove(i);
//				} 
//				System.out.println("해당 회원 없음");
//				return false;
//			}
//		}
//		System.out.println("삭제 성공");
//		return true;
//	}
	
	// .....
	
}
