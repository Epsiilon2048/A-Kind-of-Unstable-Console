
/// @param value
/// @param [from=1]
/// @param [to=end_of_value]
/// @param [step=1]
function slice(value, from, to, step){

static ds_list_concat = function(ds_list, value) { ds_list_add(ds_list, value); return ds_list }
static list = ds_list_create()

var _is_string = is_string(value)
var _is_array = is_array(value)

var output
var len
var access
var concat

//bleck
if _is_string
{
	output = ""
	len = string_length(value)
	access = string_char_at
	concat = string_concat
}
else if _is_array	
{
	output = list
	len = array_length(value)
	access = array_get
	concat = ds_list_concat
}
else throw $"slice() can only parse strings and arrays, not {typeof(value)}!"

if is_undefined(from)	from = _is_string
if is_undefined(to)		to = len+_is_string
if is_undefined(step)	step = 1

else if step == 0 throw "slice() step cannot be 0!"

var dir = sign(step) != -1

var _from = ((sign(from) == -1) ? (len+from+1+_is_string) : from)
var _to	= ((sign(to) == -1) ? (len+to+1+_is_string) : to) - (step < -1 or not (_is_string or dir))

if not dir {
	var _ = _from
	_from = _to
	_to = _
}

var output
var simple = (step == 1)

if simple and _is_string {
	return string_copy(value, _from, _to-_from)
}
if simple and _is_array {
	output = array_create(min(_to-_from, len))
	array_copy(output, 0, value, _from, _to-_from)
	return output
}
	
	
var _min
var _max
if dir == 1 {
	_min = i; _max = to-1
} else {
	_min = _to; _max = i
}
var item_count = 0
for(var i = _from; _min <= _max; i += step) {	
	output = concat(output, access(value, i))
	item_count ++
}
if _is_array {
	output = array_create(item_count)
	for(var i = 0; i <= item_count-1; i++) {
		output[@ i] = list[| i]
	}
	ds_list_clear(list)
}

return output
}