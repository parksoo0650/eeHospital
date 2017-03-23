function goPage(path) {
	location.href=path;
}
function goList(path,action,page,pageNo) {
	location.href=path+'?action='+action+'&page='+page+'&pageNo='+pageNo;
}

