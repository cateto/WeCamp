/**
 * 
 */
function setSessionAndSubmit(){
//	var test = document.getElementsByClassName("check-bbq")[0];
	var checkbbq = document.getElementsByClassName("check-bbq")[0];
	var isBbqChecked = $(checkbbq).is(":checked");
	var bbqPrice = 0;
	if(isBbqChecked){
		bbqPrice = document.getElementsByClassName("check-bbq")[0].value;
	} else {
		bbqPrice = 0;
	}
	var bookingInfo = {
			campName : campName,
			address : document.getElementById("address").value,
			campZone : campZone,
			peopleNum : document.getElementById('peopleNum').value, 
			category : category,
			campPrice : Number(campPrice),
			bbqPrice : bbqPrice,
			totalPrice : Number(campPrice)+10000,
			checkIn : document.getElementById('check-in').value,
			checkOut : document.getElementById('check-out').value
	};
	
	sessionStorage.setItem("bookingInfo", JSON.stringify(bookingInfo)); //세션저장
	
	var sessionItem = JSON.parse(sessionStorage.getItem("bookingInfo"));
	console.log(
			sessionItem
	);
	//location.href = "booking.do";
}

/***added by rhie (not used yet)***/
function getCurrentDate(){
    var now = new Date();
    var nowYear = now.getFullYear();
    var nowMonth = now.getMonth() + 1;
    var nowDate = now.getDate();
    var dayOfTheWeek = now.getDay();
    if (nowMonth < 10) {
        nowMonth = "0" + nowMonth;
    }
    if (nowDate < 10) {
        nowDate = "0" + nowDate;
    }
    currentDate = nowYear + "/" + nowMonth + "/" + nowDate;
    if(typeof nowYear == 'String'){
    	console.log(true);
    }
    return currentDate;
}
function getDay(idx){
   var date = "";
   switch (idx) {
       case 0:
           date = "일";
           break;
       case 1:
           date = "월";
           break;
       case 2:
           date = "화";
           break;
       case 3:
           date = "수";
           break;
       case 4:
           date = "목";
           break;
       case 5:
           date = "금";
           break;
       case 6:
           date = "토";
           break;
   }
   return date;    	   
}

window.onload = function setCalender(){
	$('input[name="daterange"]').val(getCurrentDate()+" - "+getCurrentDate());
	$('#check-in').val(getCurrentDate());
	$('#check-out').val(getCurrentDate());
	//예약버튼 비활성화
	document.getElementById('booking-event').style.pointerEvents = 'none';
	$('#booking-event').css({cursor: 'pointer'});
}