var arr=["Raja","siva","Manoj","Ram","raadha","mani"];
	var inputBox = document.getElementById('search');
	var voor;
	inputBox.onkeyup = function(){
	    document.getElementById('display').innerHTML = inputBox.value;
	    voor=inputBox.value;
	    console.log(voor);
	}
	
	
	var len=voor.length();
	console.log(voor);
	console.log(arr[2].substring(0));