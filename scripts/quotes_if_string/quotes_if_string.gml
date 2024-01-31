function quotes_if_string(value){

if is_string(value) return "\""+value+"\""
return string(value)
}