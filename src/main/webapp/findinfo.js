function id_search() { 
	 	if (frm.member_ID.value.length < 1) {
		  alert("ID를 입력해주세요");
		  return;
		 }
	 frm.method = "post";
	 frm.action = "findIdResult.jsp"; //넘어간화면
	 frm.submit();  
	 }