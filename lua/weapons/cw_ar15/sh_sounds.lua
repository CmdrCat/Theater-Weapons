CustomizableWeaponry:addFireSound("CW_AR15_FIRE", "weapons/cw_ar15/fire.wav", 1, 115, CHAN_WEAPON)
CustomizableWeaponry:addFireSound("CW_AR15_FIRE_SUPPRESSED", "weapons/cw_ar15/fire_suppressed1.wav", 1, 90, CHAN_WEAPON)

CustomizableWeaponry:addFireSound("CW_AR15_LONGBARREL_FIRE", "weapons/cw_ar15/fire_longbarrel.wav", 1, 120, CHAN_WEAPON)
CustomizableWeaponry:addFireSound("CW_AR15_LONGBARREL_FIRE_SUPPRESSED", "weapons/cw_ar15/fire_longbarrel_suppressed.wav", 1, 95, CHAN_WEAPON)

-- Shared Theater M4A1 sound bank. These global aliases stay available to the
-- AR-15, its conversions, and any other weapon that uses the original names,
-- even though the standalone cw_theater_m4a1 weapon is not installed.
CustomizableWeaponry:addFireSound("CW_TOO_AR15_FIRE", "weapons_fas/m4a1/fire_fp.wav", 1, 115, CHAN_WEAPON)
CustomizableWeaponry:addFireSound("CW_TOO_AR15_FIRE_SUPPRESSED", "weapons_fas/m4a1/fire_sil.wav", 1, 90, CHAN_WEAPON)

CustomizableWeaponry:addReloadSound("CW_AR15_MAGOUT", "weapons/cw_ar15/magout.wav")
CustomizableWeaponry:addReloadSound("CW_AR15_MAGIN", "weapons/cw_ar15/magin.wav")
CustomizableWeaponry:addReloadSound("CW_AR15_MAGDROP", "weapons/cw_ar15/magdrop.wav")
CustomizableWeaponry:addReloadSound("CW_AR15_BOLT", "weapons/cw_ar15/boltpull.wav")

CustomizableWeaponry:addReloadSound("CW_TOO_AR15_MAGOUT", "weapons_fas/m4a1/reload_magout.wav")
CustomizableWeaponry:addReloadSound("CW_TOO_AR15_MAGHIT", "weapons_fas/m4a1/reload_maghit.wav")
CustomizableWeaponry:addReloadSound("CW_TOO_AR15_MAGIN", "weapons_fas/m4a1/reload_magin.wav")
CustomizableWeaponry:addReloadSound("CW_TOO_AR15_MAGOUT_EMPTY", "weapons_fas/m4a1/reload_magout_empty.wav")
CustomizableWeaponry:addReloadSound("CW_TOO_AR15_MAGHIT_EMPTY", "weapons_fas/m4a1/reload_maghit_empty.wav")
CustomizableWeaponry:addReloadSound("CW_TOO_AR15_MAGIN_EMPTY", "weapons_fas/m4a1/reload_empty_magin.wav")
CustomizableWeaponry:addReloadSound("CW_TOO_AR15_BOLT", "weapons_fas/m4a1/reload_boltcatch.wav")
