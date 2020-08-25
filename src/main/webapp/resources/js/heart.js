/**
 * 
 */



////초기화함수
//function createXMLHttpRequest(){
//	if(window.XMLHttpRequest){
//	    xhttp = new XMLHttpRequest();
//	}else{
//	    // IE5, IE6 일때
//	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
//	}
//	return xhttp;
//}


//메인서비스로직
function emptyHeart(e){
	//e.preventDefault();
	//e.stopPropagation();
	
	const strList = e.getAttribute('id').split('-');
	const camp_idx = strList[1];
	const email = document.getElementById("initMember").value;

	if(email===""){
		alert("로그인이 필요합니다.");
		location.href="https://127.0.0.1:8443/login/login.wcc";
		return false;
	}
	
	const xhttp = new XMLHttpRequest(); // xmlHttpRequest생성
	
//	var formData = new FormData(); //post방식으로 보낼 데이터 만들기
//	formData.append("email", email);
//	formData.append("camp_idx", camp_idx);
//	alert(formData);
	
	xhttp.onreadystatechange = loader; //readystate에 변화가생기면 호출되는 함수
	xhttp.open('GET', '../heart/delete.wcc?email='+email+'&camp_idx='+camp_idx, true); //post방식으로 연결
	xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded; charset=utf-8'); //http헤더에 들어가는 것
	xhttp.send();
	
	//var result = xhttp.responseText;
	
	
	//콜백함수
	function loader() {
		try {
			if(xhttp.readyState === XMLHttpRequest.DONE) {
				var status = xhttp.status;
				if(status === 200) {
					let result = xmlHttp.responseText;
					if (result*1!==0) {
					    alert("해당 캠핑장에 찜하기가 취소되었습니다.");
					    e.previousElementSibling.style.display = "inline";
						e.style.display = "none";
					   
					}else{
						alert("해당 캠핑장에 찜 내역이 없습니다.");
					}
				}
			}
		}catch(exception) {
			alert('Caught Exception: ' + exception.description);
		}
	}

}


//메인서비스로직
function fillHeart(e){
	//e.preventDefault();
	//e.stopPropagation();
	
	const buttonId = e.getAttribute('id');
	const strList = buttonId.split('-');
	const camp_idx = strList[1];
	const email = document.getElementById("initMember").value;
	
	if(email===""){
		alert("로그인이 필요합니다.");
		location.href="https://127.0.0.1:8443/login/login.wcc";
		return false;
	}
	
	
	const xhttp = new XMLHttpRequest(); // xmlHttpRequest생성
	
//	var formData = new FormData(); //post방식으로 보낼 데이터 만들기
//	formData.append("email", email);
//	formData.append("camp_idx", camp_idx);
	
	xhttp.onreadystatechange = loader2; //readystate에 변화가생기면 호출되는 함수
	xhttp.open('GET', '../heart/insert.wcc?email='+email+'&camp_idx='+camp_idx, true); //post방식으로 연결
	xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded; charset=utf-8'); //http헤더에 들어가는 것
	xhttp.send();
	
	
	//콜백함수
	function loader2() {
		try {
			if(xhttp.readyState === XMLHttpRequest.DONE) {
				var status = xhttp.status;
				if(status === 200) {
					let result = xhttp.responseText;
					 if (result*1!==0) {
						 alert("성공적으로 처리되었습니다.");
						 e.nextElementSibling.style.display = "inline";
			        	 e.style.display = "none";
			          } else {
			              alert("이미 찜한 캠핑장입니다.");
			          }
				}else{
					alert("request에 문제가 발생했습니다.");
				}
				
			}else{
				alert("잘못된 접근입니다. 다시 시도해주세요..");
			}
			
	}catch(exception) {
		alert('Caught Exception: ' + exception.description);
	}

	}
	
}

