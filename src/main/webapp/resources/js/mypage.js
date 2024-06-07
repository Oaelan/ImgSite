function deleteImage() {
    // 모든 체크박스 요소를 가져옴
    var checkboxes = document.getElementsByClassName('deleteCheck');

    // 체크된 이미지가 있는지 여부를 나타내는 변수를 선언
    var isChecked = false;

    // 각 체크박스에 대해 반복
    for (var i = 0; i < checkboxes.length; i++) {
        // 현재 체크박스 요소를 가져옴
        var checkbox = checkboxes[i];
        
        // 현재 체크박스가 체크되어 있는지 확인
        if (checkbox.checked) {
            // 체크되어 있다면 isChecked를 true로 설정
            isChecked = true;  
        }
    }

    // isChecked가 false라면 체크된 이미지 선택 안되어있는 상태
    if (!isChecked) {
        alert("이미지를 선택하세요.");
        return;
    }

    for (var i = checkboxes.length - 1; i >= 0; i--) {
        var checkbox = checkboxes[i];
        
        if (checkbox.checked) {
            // 체크된 체크박스의 부모 요소인 이미지 상자를 찾고 삭제
            var imageBox = checkbox.parentNode.parentNode;
            if (imageBox && imageBox.classList.contains('imageBox')) {
                imageBox.remove();
            }
        }
    }
}




    // 아이디 입력란에 대한 유효성 검사 함수
    function validatePasswordInput(input) {
        // 입력값에서 공백을 제거하여 비밀번호를 가져옴
        var password = input.value.trim(); 
    
        // 비밀번호가 유효한지 검사
        if (password.length < 8 || password.length > 20) {
            return " 비밀번호는 8자 이상 20자 이하로 입력하세요.";
        }
    
        // 영문 대문자, 영문 소문자, 특수 문자를 모두 포함하는지 검사
        if (!/(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*()_+])[A-Za-z\d!@#$%^&*()_+]{8,20}/.test(password)) {
            return " 비밀번호는 영문 대문자, 영문 소문자, 특수 문자를 모두 포함해야 합니다.";
        }
    
        // 모든 조건을 만족하면 유효한 비밀번호입니다.
        return " 안전한 비밀번호 입니다.";
    }
    
    
    //비밀번호 확인 함수
    function validatePasswordMatch() {
        var passwordInputs = document.getElementsByClassName('changePasswordInput')[0].value;

        var confirmPasswordInputs = document.getElementsByClassName('changePasswordCheck')[0].value;

        if (passwordInputs !== confirmPasswordInputs) {
            return " 비밀번호가 일치하지 않습니다.";
        }

        return " 비밀번호가 일치합니다.";
    }

    
    window.onload = function() {

        // 아이디 입력란에 대한 유효성 검사 이벤트 설정
        var changePasswordInputs = document.querySelectorAll('.changePasswordInput');

        changePasswordInputs.forEach(function(input) {
            input.addEventListener('blur', function() {
                var password = this.value.trim(); // 입력값에서 공백을 제거하여 비밀번호를 가져옴
                var message = validatePasswordInput(this); // 입력값에 대한 유효성 검사
                var checkElement = this.parentElement.nextElementSibling; // 현재 입력란 다음에 위치한 체크 요소를 가져옴

                // 유효성 검사 결과에 따라 메시지를 출력하고 스타일을 변경
                if (message) {
                    checkElement.textContent = message;
                    if (message.includes("안전")) { // "안전"이 포함되어 있을 때
                        checkElement.classList.remove('invalid1'); // 빨강색 클래스 제거
                        checkElement.classList.add('valid1'); // 초록색 클래스 추가
                    } else {
                        checkElement.classList.add('invalid1');
                        checkElement.classList.remove('valid1'); 
                    }
                } else {
                    checkElement.textContent = "";
                    checkElement.classList.remove('invalid1');
                    checkElement.classList.remove('valid1'); 
                }
            });
        });

        //수정된 비밀번호 확인 이벤트 설정
        var changePasswordCheckInputs = document.getElementsByClassName('changePasswordCheck');

        changePasswordCheckInputs[0].addEventListener('blur', function() {
            var message = validatePasswordMatch(); // 비밀번호 확인 메시지
            var checkElement = this.parentElement.nextElementSibling; // 현재 입력란 다음에 위치한 체크 요소를 가져옴

            // 비밀번호 확인 메시지를 출력하고 스타일을 변경합니다.
            if (message.includes("일치합")) { // "일치"가 포함되어 있을 때
                checkElement.innerHTML = "<span class='valid1'>" + message + "</span>";
                checkElement.classList.remove('invalid1'); // 빨간색 클래스 제거
                checkElement.classList.add('valid1'); // 초록색 클래스 추가
            } else {
                checkElement.innerHTML = "<span class='invalid1'>" + message + "</span>";
                checkElement.classList.remove('valid1'); 
                checkElement.classList.add('invalid1'); 
            }
        });

        let leftDragButtonSave = document.getElementsByClassName("saveDragButton")[0];
        let rightDragButtonSave = document.getElementsByClassName("saveDragButton")[1];

        let leftDragButtonUpload = document.getElementsByClassName("uploadDragButton")[0];
        let rightDragButtonUpload = document.getElementsByClassName("uploadDragButton")[1];
        
        let savedImage = document.getElementsByClassName("subContents2")[0];
        let uploadImage = document.getElementsByClassName("subContents3")[0];
        
        
        
        //각 버튼 클릭시 div내의 가로 스크롤 동작
        leftDragButtonSave.addEventListener('click',function(){
            savedImage.scrollBy({left: -500, top:0, behavior: 'smooth'});
            }
        )

        rightDragButtonSave.addEventListener('click',function(){
            savedImage.scrollBy({left: 500, top:0, behavior: 'smooth'});
            }
        )
        
        leftDragButtonUpload.addEventListener('click',function(){
            uploadImage.scrollBy({left: -500, top:0, behavior: 'smooth'});
            }
        )

        rightDragButtonUpload.addEventListener('click',function(){
            uploadImage.scrollBy({left: 500, top:0, behavior: 'smooth'});
            }
        )
    



    //마우스 올렸을 때 그림자 및 버튼 보이기
    document.getElementsByClassName("subContents2")[0].addEventListener('mouseover', function(){
        var dragButton = document.getElementsByClassName('dragButton');
        dragButton[0].style.visibility = 'visible';
    });

    //마우스 내렸을 때 그림자 및 버튼 사라짐
    document.getElementsByClassName("subContents2")[0].addEventListener('mouseleave', function(){
        var dragButton = document.getElementsByClassName('dragButton');
        dragButton[0].style.visibility = 'hidden';

    });

    document.getElementsByClassName("subContents3")[0].addEventListener('mouseover', function(){
        var dragButton = document.getElementsByClassName('dragButton');
        dragButton[1].style.visibility = 'visible';
    });

    //마우스 내렸을 때 그림자 및 버튼 사라짐
    document.getElementsByClassName("subContents3")[0].addEventListener('mouseleave', function(){
        var dragButton = document.getElementsByClassName('dragButton');
        dragButton[1].style.visibility = 'hidden';

    });
        
    };





