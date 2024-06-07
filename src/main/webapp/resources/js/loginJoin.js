/**
 */

let isValidUserId = false;
let isValidPassword = false;
let isPasswordConfirmed = false;
let isValidName = false;
let isValidEmail = false;
    
    
// 사용자 ID 검증
	let userId = document.getElementById("userId");
	console.log(userId)
	userIdLabel.textContent = ".";
	userIdLabel.style.color = "white";
	userId.addEventListener("blur",()=>{
		var userIdPattern = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,20}$/;
		var userIdLabel = document.getElementById("userIdLabel");
		if (userId.value.match(userIdPattern)) {
			userIdLabel.textContent = "사용 가능한 아이디입니다.";
			userIdLabel.style.color = "green";
			isValidUserId = true;
		} else {
			userIdLabel.textContent = "사용자 ID는 영문자와 숫자를 조합하여 5-20자여야 합니다.";
			userIdLabel.style.color = "red";
			isValidUserId = false;
		}
	})
	
	
	// 비밀번호 검증
	
	let password = document.getElementById("pw");
	console.log(password)
	passwordLabel.textContent = ".";
	passwordLabel.style.color = "white";
	password.addEventListener("blur",()=>{
		var passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,25}$/;
		var passwordLabel = document.getElementById("passwordLabel");
		if (password.value.match(passwordPattern)) {
			passwordLabel.textContent = "사용 가능한 비밀번호입니다.";
			passwordLabel.style.color = "green";
			isValidPassword = true;
		} else {
			passwordLabel.textContent = "비밀번호는 영문자, 숫자, 특수문자를 조합하여 8-25자여야 합니다.";
			passwordLabel.style.color = "red";
			isValidPassword = false;
		}
	})
	
	
	// 비밀번호 확인 함수
	let pwcheck = document.getElementById("pwcheck");
	confirmLabel.textContent = ".";
	confirmLabel.style.color = "white";
	pwcheck.addEventListener("blur", ()=>{
		var password = document.getElementById("pw").value;
		var confirmPassword = document.getElementById("pwcheck").value;
		var confirmLabel = document.getElementById("confirmLabel");
		if (password == confirmPassword) {
			confirmLabel.textContent = "비밀번호가 일치합니다.";
			confirmLabel.style.color = "green";
			isPasswordConfirmed = true;
		} else {
			confirmLabel.textContent = "비밀번호가 일치하지 않습니다.";
			confirmLabel.style.color = "red";
			isPasswordConfirmed = false;
		}
	})


	
	// 이름 검증
	
	let name = document.getElementById("name");
	console.log(name)
	nameLabel.textContent = ".";
	nameLabel.style.color = "white";
	name.addEventListener("blur",()=>{
		var namePattern = /^[가-힣]{2,6}$/;
		var nameLabel = document.getElementById("nameLabel");
		if (name.value.match(namePattern)) {
			nameLabel.textContent = "사용할 수 있는 이름입니다.";
			nameLabel.style.color = "green";
			isValidName = true;
		} else {
			nameLabel.textContent = "이름은 한글만 2-6자여야 합니다.";
			nameLabel.style.color = "red";
			isValidName = false;
		}
	})
	
	 let email = document.getElementById("email");
	    console.log(email);
	    emailLabel.textContent = ".";
	    emailLabel.style.color = "white";
	    email.addEventListener("blur",()=>{
	    let emailLabel = document.getElementById("emailLabel");
	    let emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	        if (email.value == "직접입력") {
	            // 직접 입력한 경우
	            // 여기에 직접 입력한 이메일 주소를 검증하는 코드 작성
	        } else {
	            if (!email.value.match(emailPattern)) {
	                emailLabel.textContent = "올바른 이메일 형식이 아닙니다.";
	                emailLabel.style.color = "red";
	                isValidEmail = false;
	            } else {
	                emailLabel.textContent = "올바른 이메일 형식입니다.";
	                emailLabel.style.color = "green";
	                isValidEmail = true;
	                
	            }
	        }
	    });
	    
	    
	    
	    let form = document.getElementById("join");
	    form.addEventListener("submit", (event) => {
	        if (!isValidUserId || !isValidPassword || !isPasswordConfirmed || !isValidName || !isValidEmail) {
	            event.preventDefault();
	            alert("모든 필드를 올바르게 입력해 주세요.");
	        }
	    });
	    
	    
	   
	    