function call_booking_info(){
    let load_btn = document.getElementById('load-btn');
    load_btn.disabled = false;
    load_btn.innerHTML = "<span class='la la-refresh'></span> Load More";

	if($('#booking-box').prop('class') == "") {
		$('#booking-box').html('');
		$('#booking-box').addClass('row');
		$('#booking-box').removeAttr('style');
	}
	
    $.ajax({
        url : "/member/booking_info.json",
        type : "GET",
        data : {email : $('#member-email').val()
               },
	      dataType: "HTML",
	      contentType: 'application/x-www-form-urlencoded; charset=utf-8',
        success : function(responseData){
            //console.log("response" + responseData);
            //alert("response" + responseData);
            document.getElementById('next-page').value = 2;
            $('#booking-box').html(responseData);
            //.html은 기존에 있던 요소들 싹 없애고 다시 붙여
            if($('#check_result').val() == "false") {
            	let msg = "<br/><br/><br/><h2>예약된 내역이 없습니다.</h2><br/><br/><br/><br/><br/>";
            	$('#booking-box').html(msg);
            	$('#booking-box').removeClass('row');
            	$('#load-btn').hide();
            	$('#booking-box').attr('style', 'text-align:center');
            }else{
				$('#load-btn').show();
            }
        }
    });
}



function paging(){
    let page_count = document.getElementById('page-count').value;
    // $('#nextpage').val(Number($('#next-page').val())+1);
    // console.log($('#next-page').val());
    $.ajax({
        url : "/member/booking_info.json",
        type : "GET",
        data : {email : $('#member-email').val(),
                nextPage : $('#next-page').val(),
        		},
	      dataType: "HTML",
          contentType: 'application/x-www-form-urlencoded; charset=utf-8',
        // responseData : Controller 에서 가지고 온 데이터 변수 이름  
        success : function(responseData){
            //console.log("response" + responseData);
            //alert("response" + responseData);
            $('#next-page').val(Number($('#next-page').val())+1);
            $('#booking-box').append(responseData);
            // 기존에 있던 요소 뒤에 ++

            if($('#next-page').val() > page_count) {
                $('#load-btn').attr("disabled", "disabled");
                $('#load-btn').text("END");
                return false;
            }
        }

    });
}