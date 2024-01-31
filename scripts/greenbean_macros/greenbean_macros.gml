
// Were for embedded text but mostly unused now
#macro cbox_true  "[x]"
#macro cbox_false "[ ]"
#macro cbox_NaN	  "[/]"


#region Virtual key fixes
var apple = (os_type == os_macosx or os_type == os_ios)

#macro vk_rcommand 91
#macro vk_lcommand 92
#macro vk_super global.__super_key
#macro vk_tilde global.__tilde_key

vk_super = apple ? vk_lcommand : vk_control
vk_tilde = apple ? 50 : 192
#endregion


#region Log entry types
#macro lg_whitespace	"whitespace"
#macro lg_userinput		"user input"
#macro lg_output		"output"
#macro lg_embed			"embed"
#macro lg_message		"message"
#endregion


#region Color schemes
#macro cs_greenbeans	"greenbeans"
#macro cs_royal			"royal"
#macro cs_drowned		"drowned"
#macro cs_helios		"helios"
#macro cs_humanrights	"humanrights"
#macro cs_rainbowsoup	"rainbowsoup"
#macro cs_sublimate		"sublimate"
#macro cs_gms2			"gms2"
#endregion


#region GMCL datatypes
#macro dt_real			"real"
#macro dt_string		"string"
#macro dt_undefined		"undefined"
#macro dt_asset			"asset"
#macro dt_variable		"variable"
#macro dt_method		"method"
#macro dt_instance		"instance"
#macro dt_color			"color"			// Only used for identifiers
#macro dt_builtinvar	"builtinvar"	// Only used for colors
#macro dt_tag			"tag"
#macro dt_unknown		"plain"
#macro dt_deprecated	"deprecated"
#endregion