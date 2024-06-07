
            // 파일 업로드
            function load_file(input){
                let file = input.files[0];

                let new_div1 = document.createElement("div");
                let new_div2 = document.createElement("div");
                let new_div3 = document.createElement("div");
                let new_img = document.createElement("img");

                new_div1.className = "img_box"
                new_div2.className = "img_tag"
                new_div3.className = "image"
                
                new_img.src = URL.createObjectURL(file);

                let container = document.getElementsByClassName('img_line');

                new_div1.appendChild(new_div2);
                new_div1.appendChild(new_div3);
                new_div3.appendChild(new_img);
                
                container[0].prepend(new_div1);
            }
