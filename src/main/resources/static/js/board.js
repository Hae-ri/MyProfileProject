/**
 * 
 */
 
function boardConfirm() {

	if(document.reg_frm.rname.value.length == 0) {
		alert("이름을 입력해주세요.");
		reg_frm.rname.focus();
		return;
	}
	
	if(document.reg_frm.rclass.value.length == 0) {
		alert("예약 종류를 선택해주세요.");
		reg_frm.rclass.focus();
		return;
	}
	
	if(document.reg_frm.rdayof.value.length == 0) {
		alert("예약일자를 입력해주세요.");
		reg_frm.rdayof.focus();
		return;
	}
	
		if(document.reg_frm.rtime.value.length == 0) {
		alert("시간을 선택해주세요.");
		reg_frm.rtime.focus();
		return;
	}
		
	
	document.reg_frm.submit();
}

function del(){
	if (!confirm("정말 취소하시겠습니까?")){ // 아니오
	    history.go( -1 );
	}else {
		alert("완료 되었습니다.");
		document.reg_frm.submit();
		return;
	}
}

function admindel(rnum) {
  if (!confirm("정말 취소하시겠습니까?")){ // 아니오
    history.go( -1 );
 }else {
	document.location = "admindelete?rnum="+rnum;
	alert("취소 되었습니다.");
	return ;
}
 }
 
function qdel(){
	if (!confirm("정말 취소하시겠습니까?")){ // 아니오
	    history.go( -1 );
	}else {
		alert("완료 되었습니다.");
		document.reg_frm.submit();
		return;
	}
}
 
function qboardConfirm() {
	if(document.reg_frm.qquestion.value.length == 0) {
		alert("문의사항을 입력해주세요.");
		reg_frm.qquestion.focus();
		return;
	}	
	document.reg_frm.submit();
}

function visitCheck(){
	if (!confirm("방문완료")){ // 아니오
	    history.go( -1 );
	}else {
		alert("완료 되었습니다.");
		document.reg_frm.submit();
		return;
	}
}