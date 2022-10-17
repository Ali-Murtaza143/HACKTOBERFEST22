var myImg = document.getElementById('image');
var arrayImg = ['1.jpg','2.jpg','3.jpg'];
var arrayIndex = 0;

function forward1(){
    myImg.setAttribute("src",arrayImg[arrayIndex]);
    arrayIndex++;

    if(arrayIndex >= arrayImg.length){
        arrayIndex = 0;
    }
}

setInterval(forward1,5000);
