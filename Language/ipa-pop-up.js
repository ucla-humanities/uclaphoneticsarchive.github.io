function GetIPA(NAME){
			//url refer to where the ipa pop-up page located in the directory
			var url = "../ipa-pop-up-1.html?ID="+NAME;
			var hWnd = window.open(url,"","width=650,height=700,resizable=yes,status=yes,scrollbars=yes");
			if ((document.window != null) && (!hWnd.opener))
			hWnd.opener = document.window;
	}
	
	function GetIPA2(NAME){
			//your html form name should be form1
		    var temp1 = (eval("document.form1."+NAME+".value")).length-1;
			var temp4 = (eval("document.form1."+NAME+".value")).charAt(temp1);
			//url refer to where the ipa pop-up page located in the directory
			var url = "../ipa-pop-up-3.html?ID="+NAME+"&String1="+temp4;
			var hWnd = window.open(url,"","width=100,height=380,resizable=yes,status=no,toolbar=no, menubar=no,scrollbars=yes,top=250, left=250");
			if ((document.window != null) && (!hWnd.opener))
			hWnd.opener = document.window;
			return false
	}
