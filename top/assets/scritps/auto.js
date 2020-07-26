
  let links = document.querySelectorAll(".close");

  links.forEach(function(link){
      link.addEventListener("click",function(ev){
      ev.preventDefault();
      let container = document.querySelector(".content");

      container.classList.remove("fadeInDown");
      container.classList.remove("animated");
      container.classList.add("fadeOutUp");
      container.classList.add("animated");

      setTimeout(function(){
        location.href = "../index.html";
      },600);
      return false;
    })
  })

();
