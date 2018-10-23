function goPopup(){
   // 주소검색을 수행할 팝업 페이지를 호출합니다.
   // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
   var pop = window.open("/BidProject/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
   
   // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(roadFullAddr){
   // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
   document.form.roadFullAddr.value = roadFullAddr;   
}

function Validate() {
	
	//아이디 유효성 검사 (영문소문자, 숫자만 허용)
	for (var i = 0; i < form.id.value.length; i++) {
        ch = form.id.value.charAt(i)
        if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
            alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.")
            form.id.focus();
            form.id.select();
            return false;
        }
    }
	
	//아이디에 공백 사용하지 않기
    if (form.id.value.indexOf(" ") >= 0) {
        alert("아이디에 공백을 사용할 수 없습니다.")
        form.id.focus();
        form.id.select();
        return false;
    }
	

    
    //아이디 길이체크
    if(form.id.value.length < 4){
    	alert("ID는 4글자 이상이여야만 합니다!")
    	form.id.focus();
    	form.id.select();
    	return false;
    }
    
    //비밀번호 유효성 검사 (영문소문자, 숫자만 허용)
	for (var i = 0; i < form.password.value.length; i++) {
        ck = form.password.value.charAt(i)
        if (!(ck >= '0' && ck <= '9') && !(ck >= 'a' && ck <= 'z')&&!(ck >= 'A' && ck <= 'Z')) {
            alert("비밀번호는 영문 대소문자, 숫자만 입력가능합니다.")
            form.id.focus();
            form.id.select();
            return false;
        }
    }
    
    
   
    //비밀번호 길이 체크(6~16자 까지 허용)
    if (form.password.value.length<6 || document.form.password.value.length>16) {
        alert("비밀번호를 6~16까지 입력해주세요.")
        form.password.focus();
        form.password.select();
        return false;
    }
    
    
    //비밀번호와 비밀번호 확인 일치여부 체크
    if (form.password.value != form.password2.value) {
        alert("비밀번호가 일치하지 않습니다")
        form.password2.value = ""
        form.password2.focus();
        return false;
    }
    
    
    
	//주소 입력여부 체크
    if (form.roadFullAddr.value == "") {
        alert("주소를 입력하지 않았습니다.")
        form.roadFullAddr.focus();
        return false;
    }  
    

};
    

//--------------------------------------------------------------------------------------------------------------

	$(document).ready(function(){
		$('#password2').blur(function(){
			var fpw=$('#password').val();
			var spw=$('#password2').val();
			
			if(fpw==spw){
				$('#result').html("비밀번호가 일치합니다").css("color","green")
				
			}else{	
				$('#result').html("비밀번호가 일치하지않습니다..").css("color","red")
				form.password2.value = "";
			    form.password2.focus();
			    return false;
			}
				
		});
		
	});
		
	
	$(document).ready(function(){
		$('#id').blur(function(){
			var fid=$('#id').val();
			
			
			for (var i = 0; i < form.id.value.length; i++) {
		        ch = form.id.value.charAt(i)
		        if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z') || fid.length < 4){
		        	$('#check').html("4~12자의 영문 소문자, 숫자만 사용 가능합니다.").css("color","red")
		        	form.id.value = "";
				    form.id.focus();
				    return false;
		        	
		        }else{	
				$('#check').html("멋진 아이디네요!").css("color","green")
		        }
			}
		});
		
	});
	
	
	$(document).ready(function(){
		$('#username').blur(function(){
			var fname=$('#username').val();
			
			if(form.username.value="")
				$('#usernamech').html("필수정보 입니다").css("color","red")
				
		});
		
	});