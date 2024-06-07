// 다음 페이지
//next버튼 눌렀을 때 input값이 1씩 증가
/*
let nextB = document.querySelector(".nextB");
nextB.addEventListener('click', () => {
    let img_pNum = document.querySelector('#img_pNum');
    img_pNum.value = parseInt(img_pNum.value) + 1;
})
*/
// 사진에 마우스 올렸을때 이벤트
let cellBox = document.querySelectorAll(".cell_box"); // 이미지와 태그가 같이 담겨있는 박스

for (let i = 0; i < cellBox.length; i++) {// 반복문으로 존재하는 cellBox에대해 이벤트를 걸어준다.
    cellBox[i].addEventListener('mouseover', function () {
        // console.log(this.getElementsByClassName("img_tag")[0])
        // this를 쓴 이유는 cellBox 안에 있는 tag박스에 대한 class 배열을 가져올려고!
        // document쓰면 아예 다가져와짐
        let tag = this.getElementsByClassName("img_tag")[0];
        if (tag) {
            tag.style.visibility = 'visible'
        }
    });
}

// 마우스를 내렸을때 이벤트
for (let i = 0; i < cellBox.length; i++) {
    cellBox[i].addEventListener('mouseleave', function () {
        // console.log(this.getElementsByClassName("img_tag")[0])
        let tag = this.getElementsByClassName("img_tag")[0];
        if (tag) {
            tag.style.visibility = 'hidden'
        }
    });
}


// 이미지 태그에있는 하트를 눌렀을 때
let heart = document.querySelectorAll(".heart");
let heartCount = document.querySelectorAll(".count")
for (let i = 0; i < heart.length; i++) {
    // console.log(heart[i])
    heart[i].setAttribute('like','off'); // 각 이미지 태그의 하트에 like라는 속성을
											// 부여('off')
    // console.log(heart[i].getAttribute('like'))
    heart[i].addEventListener("mousedown", () => {
        let heartStyle = heart[i].style;
        let isLiked = heart[i].getAttribute('like'); // like의 속성값을 가져온다.
        let count = parseInt(heartCount[i].innerText);
        if (isLiked =="off") { // like속성 값이 off일 때
            heartCount[i].innerText = count + 1;
           heartStyle.color = "#f5536e";
           heartStyle.transition = "color";
           heartStyle.transitionDuration = "0.2s"
           heart[i].setAttribute('like','on');
         
           
        }
        // 한번더 눌렀을 때
        else if(isLiked =="on"){ // like 속성 값이 on 일 때
        	heartCount[i].innerText = count - 1;
           heartStyle.color = "white";
           heartStyle.transition = "color";
           heartStyle.transitionDuration = "0.2s"
            heart[i].setAttribute('like','off');
        }
    });
}



