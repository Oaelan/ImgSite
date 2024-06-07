//이미지 업로드 후 프리뷰가
const input = document.getElementById("upload_file");
input.addEventListener("change", (e) => {
  // console.log(e);
  //input태그에서 type이 file인 애들을 편리하게 처리할 수 있는 객체
  const reader = new FileReader();
  reader.readAsDataURL(e.target.files[0]);
  //이미지가 로드되고나서
  reader.onload = function (event) {
    // console.log(event);
    const image = document.createElement("img");
    image.className = "output_image";
    image.setAttribute("src", event.target.result);
    const outputbox = document.querySelector(".output_box");
    outputbox.innerHTML = "";
    outputbox.appendChild(image);
    //이미지가 로드되고나서 업로드 버튼 색상 변경
    // const uploadButton = document.querySelector(".upload");
    // uploadButton.style.background =
    //   "linear-gradient(193deg, rgb(140, 192, 252) 0%, rgb(0, 217, 255) 100%)";
    image.onload = function () {
      let sizeBox = document.querySelector("#img_size");
      let width = document.querySelector("#width");
      let height = document.querySelector("#height");
      width.innerHTML = "가로: " + image.naturalWidth + "px / ";
      height.innerHTML = "세로: " + image.naturalHeight + "px";
      sizeBox.style.opacity = "100%"

     
      // 선택한 카테고리 값을 가져오는 함수
    	// 선택한 카테고리 값을 가져오는 함수
          upload_b.addEventListener("click", () => {
            let radioButtons = document.querySelectorAll('input[type="radio"]');
            let select_value = "";
            
            // 라디오 버튼을 순회하며 체크된 상태인지 확인합니다.
            let isChecked = false;
            radioButtons.forEach((radioButton) => {
              if (radioButton.checked) {
                isChecked = true;
                select_value = radioButton.value;
              }
            });
            
            if (isChecked) {
              // 선택된 카테고리의 값
              let file_name = e.target.files[0].name + select_value;
              //console.log(file_name);      
            } else {
              alert("카테고리를 선택해주세요!");
            }
       });
    };
  };
});

//슬라이더 조절 값에 따른 출력값
// const slider = document.getElementById("slider");
// const sliderValue = document.getElementById("slide_value");
// //input 이벤트는 HTML의 요소의 값이 바뀔때 발생하는 이벤트
// slider.addEventListener("input", () => {
//   sliderValue.innerText = slider.value + "x";
// });
