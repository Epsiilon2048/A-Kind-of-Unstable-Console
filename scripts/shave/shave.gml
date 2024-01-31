
function shave(substr, str){ //removes substr from the ends of str

var in = 1
var out = string_length(str)

var str_len = string_length(substr)
var substr_len = string_length(substr)

if substr_len == 0 return str
if substr_len == 1
{
	while in <= str_len and string_char_at(str, in) == substr
	{
		in++
	}
	
	while out >= 0 and string_char_at(str, out) == substr
	{
		out--
	}
}
else
{
	while in <= str_len and slice(str, in, in+substr_len, 1) == substr
	{
		in += substr_len
	}
	
	while out >= 0 and slice(str, out-substr_len+1, out+1, 1) == substr
	{
		out -= substr_len
	}
}
return slice(str, in, out+1, 1)
}