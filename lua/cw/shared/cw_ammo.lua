AddCSLuaFile()

CustomizableWeaponry.ammoTypes = CustomizableWeaponry.ammoTypes or {}

-- base ammo registration function
function CustomizableWeaponry:registerAmmo(name, text, bulletDiameter, caseLength)
	CustomizableWeaponry.ammoTypes[name] = {bulletDiameter = bulletDiameter, caseLength = caseLength}
	
	game.AddAmmoType({name = name,
	dmgtype = DMG_BULLET})
	
	if CLIENT then
		language.Add(name .. "_ammo", text)
	end
end

-- aliases
CustomizableWeaponry.registerAmmoType = CustomizableWeaponry.registerAmmo
CustomizableWeaponry.registerNewAmmo = CustomizableWeaponry.registerAmmo

CustomizableWeaponry:registerAmmo("7.62x39MM", "7.62x39MM Rounds", 7.62, 39)
CustomizableWeaponry:registerAmmo("7.62x51MM", "7.62x51MM Rounds", 7.62, 51)
CustomizableWeaponry:registerAmmo("7.62x54MMR", "7.62x54MMR Rounds", 7.62, 39)
CustomizableWeaponry:registerAmmo("6.8 SPC", "6.8 SPC Rounds", 6.8, 43)
CustomizableWeaponry:registerAmmo("5.45x39MM", "5.45x39MM Rounds", 5.45, 39)
CustomizableWeaponry:registerAmmo("5.56x45MM", "5.56x45MM Rounds", 5.56, 45)
CustomizableWeaponry:registerAmmo("5.7x28MM", "5.7x28MM Rounds", 5.7, 28)
CustomizableWeaponry:registerAmmo("5.8x42MM", "5.8x42MM Rounds", 5.8, 42)
CustomizableWeaponry:registerAmmo("6.5x53MMR", "6.5x53MMR Rounds", 6.5, 53.5)
CustomizableWeaponry:registerAmmo(".30-03", ".30-03 Springfield Rounds", 7.62, 65)
CustomizableWeaponry:registerAmmo(".30-40", ".30-40 Krag Rounds", 7.62, 58.8)
CustomizableWeaponry:registerAmmo(".308 Winchester", ".308 Winchester Rounds", 7.62, 51.2)
CustomizableWeaponry:registerAmmo(".300 Blackout", ".300 Blackout Rounds", 7.62, 35)
CustomizableWeaponry:registerAmmo(".35 Winchester", ".35 Winchester Rounds", 7.62, 35)
CustomizableWeaponry:registerAmmo(".38-72", ".38-72 Winchester Rounds", 9.7, 66)
CustomizableWeaponry:registerAmmo(".40-72", ".40-72 Winchester Rounds", 10.2, 66)
CustomizableWeaponry:registerAmmo(".405 Winchester", ".405 Winchester Rounds", 10.45, 65)
CustomizableWeaponry:registerAmmo(".44 Magnum", ".44 Magnum Rounds", 10.9, 32.6)
CustomizableWeaponry:registerAmmo(".45 ACP", ".45 ACP Rounds", 11.5, 22.8)
CustomizableWeaponry:registerAmmo(".500 Nitro Express", ".500 Nitro Express Rounds", 13, 76)
CustomizableWeaponry:registerAmmo(".50 AE", ".50 AE Rounds", 12.7, 32.6)
CustomizableWeaponry:registerAmmo(".50 Beowulf", ".50 Beowulf Rounds", 12.7, 42)
CustomizableWeaponry:registerAmmo("9x70MM", "9x70MM Rounds", 9, 70)
CustomizableWeaponry:registerAmmo("10/4.5x54MM", "10/4.5x54MM Rounds", 10, 54)
CustomizableWeaponry:registerAmmo(".22 LR", ".22 LR Rounds", 5.7, 15)
CustomizableWeaponry:registerAmmo("9x19MM", "9x19MM Rounds", 9, 19)
CustomizableWeaponry:registerAmmo("12 Gauge Explosive Slugs", "12 Gauge Explosive Slug Rounds", 5, 10)
CustomizableWeaponry:registerAmmo("12 Gauge", "12 Gauge Rounds", 5, 10)
CustomizableWeaponry:registerAmmo("40MM", "40MM Grenades", 0, 0)
CustomizableWeaponry:registerAmmo("Frag Grenades", "Frag Grenades", 0, 0)
CustomizableWeaponry:registerAmmo("Smoke Grenades", "Smoke Grenades", 0, 0)
CustomizableWeaponry:registerAmmo("Flash Grenades", "Flash Grenades", 0, 0)