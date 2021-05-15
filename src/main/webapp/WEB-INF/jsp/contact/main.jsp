<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="웹개발자 곽하린, 포트폴리오">
    <meta name="keywords" content="웹개발자 곽하린,포트폴리오">
    <meta name="robots" content="all">

    <title>웹개발자 곽하린 포트폴리오</title>

    <link rel="apple-touch-icon" href="../../images/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="76x76" href="../../images/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="120x120" href="../../images/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="152x152" href="../../images/apple-icon-152x152.png">

    <!--font-family: 'Black Han Sans', sans-serif;-->
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap" rel="stylesheet">
    <!--font-family: 'Noto Sans KR', sans-serif;-->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap&subset=korean" rel="stylesheet">

    <link rel="stylesheet" href="../../css/imagehover.min.css">
    <link rel="stylesheet" href="../../css/portfolio.css">
    <link rel="stylesheet" href="../../css/hover.css">
    <link rel="stylesheet" href="../../css/magic.css">

    <!--csshake-->
    <link rel="stylesheet" type="text/css" href="https://csshake.surge.sh/csshake.min.css">
    <!--AOS 라이브러리-->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <!--AOS 라이브러리-->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@900&display=swap" rel="stylesheet">
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../../js/jquery.easing.1.3.js"></script>
    <script src="../../js/jquery.easing.compatibility.js"></script>
    <script src="../../js/jquery.touchSwipe.min.js"></script>
    <script src="../../js/progressbar.js"></script>
    <script src="../../js/jquery.ui.ipad.js"></script>
    <script src="../../js/portfolio.js"></script>

</head>
<body>
<!--        CONTACT-->
    <div class="contact section">
      <p class="copyright">Copyright ⓒ KWAKHARIN. All rights reserved.</p>
        <div class="height_wrap">
          <div class="contact_wrapper">
            <div class="contact_innerWrapper">
              <form class="contact_form" name="contactForm" method="post">
                <h3>SEND ME A MESSAGE</h3>
                <div class="inputbox name">
                  <input type="text" class="firstName" name="" placeholder="First Name">
                  <input type="text" class="lastName" name="" placeholder="Last Name">
                </div>
                <div class="inputbox email">
                  <input type="text" class="email" name="" placeholder="name@example.com">
                </div>
                <div class="inputbox message">
                  <textarea type="text" class="message" name="" placeholder="Send me a message"></textarea>
                </div>
                <div class="inputbox submitBtn hvr-pulse">
                  <div class="sendBtn">SEND</div>
                </div>
              </form>
            </div>
          </div>
          <div class="sub_contact_wrapper">
            <div class="sub_contact_innerWrapper">
              <div class="sub_contact">
                <h3>CONTACT ME</h3>
                <span>궁금한 점이 있으시면 언제든 연락주시면 답변 드리겠습니다. 블로그에 저의 자세한 활동이 기록되어 있으니 많은 방문 부탁드립니다!</span>
              </div>
              <div class="subcontact_info">
                <div class="phone container">
                  <div class="phone img">
                    <i id="img" class="fas fa-phone"></i>
                  </div>
                  <div class="phone wrap">
                    <h4>PHONE</h4>
                    <span>82+ 10-4319-7701</span>
                  </div>
                </div>
                <div class="email container">
                  <div class="email img">
                    <i id="img" class="fas fa-envelope-open"></i>
                  </div>
                  <div class="email wrap">
                    <h4>EMAIL</h4>
                    <span>ka28@naver.com</span>
                  </div>
                </div>
                <div class="blog container">
                  <div class="blog img">
                    <i id="img" class="fab fa-blogger"></i>
                  </div>
                  <div class="blog wrap">
                    <h4>BLOG</h4>
                    <span>www.blog.naver.com/ka28</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>
    <script>
    
    function submit(){
    	
			/* 
			var channelName = $('#channelForm input[name="name"]').val();
			console.log("stringfyForm(channelForm): " +stringfyForm("channelForm"));
			console.log("JSON.stringify(orgList): "+JSON.stringify(orgList));
			console.log("orgList.length: "+orgList.length); */
			/* callAjax('/rest/contact/submit/' + channelName, 'get', '', function(data) {
				
				if(data == true) {
					$('#warningCode').text("입력한 채널 이름과 같은 채널 이름이 존재합니다.");
					showWarningModal();
				} else{
					
					if(orgList.length == 0){
						$('#warningCode').text("참여조직을 선택하여 주십시오.");
						showWarningModal();
					}else{
						
					}
					
				}
				
			}); */
    	var data = { "form" : stringfyForm("contactForm") }; 
		
		//callAjaxWithMultiForm('/rest/contact/saveMessage', 'post', data, afterCallAjax);
			
    }
    
	//TODO ajax 호출 공통
	function callAjax(callUrl, callType, callFormName, successFunction){		
		blur();
		$.ajax({
            url      : CONTEXT_PATH + callUrl,
            type     : callType,
            data     : $('#' + callFormName).serialize(),
            dataType : 'json',
            success  : function(data){
            	blurExit();
            	successFunction(data);
            },
            error : function(request, status, error ) {   // 오류가 발생했을 때 호출된다.
            	blurExit();
            	console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            	$('#failCode').text(JSON.parse(request.responseText).resultMessage);
            	showFailModal();
           	}
            
        });
	}
    </script>
</body>
</html>