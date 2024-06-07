
//좋아요 버튼
let like = document.getElementById("like");
let isLiked = false;
like.addEventListener("click", () => {

    if (!isLiked) {
        like.style.color = "#f04670";
        isLiked = true;
    }
    else {
        like.style.color = "white";
        isLiked = false;
    }
})

