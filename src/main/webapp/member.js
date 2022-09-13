function joinCheck() {
	if (document.joinform.name.value == "") {
		alert("이름을 입력해주세요.");
		document.joinform.name.focus();
		return false;
	}

	if (document.joinform.id.value == "") {
		alert("아이디를 입력해주세요.");
		document.joinform.userid.focus();
		return false;
	}

	if (document.joinform.id.value.length < 4) {
		alert("아이디는 4글자 이상이어야 합니다.");
		document.joinform.name.focus();
		return false;
	}

	if (document.joinform.pass1.value == "") {
		alert("비밀번호를 입력해주세요.");
		document.joinform.pwd.focus();
		return false;
	}

	if (document.joinform.pass2.value == "") {
		alert("비밀번호를 확인해주세요.");
		document.joinform.pwdpwd.focus();
		return false;
	}


	if (document.joinform.pass1.value != document.joinform.pass2.value) {
		alert("비밀번호가 일치하지 않습니다.");
		document.joinform.pwdpwd.focus();
		return false;
	}

	return true;
}

function idCheck() {
	// 사용자 아이디가 입력되었는지 확인 루틴 구현
	if (document.joinform.id.value == "") {
		alert("사용자 아이디를 입력해주세요.");
		document.joinform.userid.focus();
		return false;
	}
}