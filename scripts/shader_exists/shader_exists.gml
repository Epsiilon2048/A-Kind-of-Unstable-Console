
function shader_exists(ind){
	
try {
	shader_get_name(ind)
	return true
}
catch(_){
	delete _ //get rid of that dumbass warning sign thing
	return false
}
}

