/**
 * 
 */
 
 function check() {
 
 	if(document.fr.sName.value.length==0) {
 		alert("이름은 필수 사항입니다.");
 		fr.sName.focus();
 		return;
 	}
 	
 	if(document.fr.sPhone.value.length==0) {
 		alert("전화번호는 필수 사항입니다.");
 		fr.sPhone.focus();
 		return;
 	}
 	
 	if(document.fr.sAddr.value.length==0) {
 		alert("주소는 필수 사항입니다.");
 		fr.sAddr.focus();
 		return;
 	}
 	
 	document.fr.submit();
 	
 }