
  //========================================Do not touch below - this deals with spectator mode TFR.
 private["_unit"];

_unit = player;

// ====================================================================================

// SET SPECTATOR MODE
// If the player is alive and hence not a JIP player, the spectator voice chat will be
// disabled. If the player is dead, and hence a JIP player that hasn't selected an
// active slot, spectator chat will be enabled.

if(alive _unit) then {

	// Disable spectator chat
	[_unit, false] call TFAR_fnc_forceSpectator;

} else {

  // Enable spectator chat
  [_unit, true] call TFAR_fnc_forceSpectator;

};
 