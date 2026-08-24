AddCSLuaFile()

TRACER_FLAG_USEATTACHMENT	= 0x0002;
SOUND_FROM_WORLD			= 0;
CHAN_STATIC					= 6;

EFFECT.Speed				= 6500;
EFFECT.Length				= 64;
EFFECT.TracerOffset			= Vector(105, 0, 0); --IN/OUT, HORIZ, (Lil Uzi) VERT
EFFECT.TracerAngle			= Angle(0, 0, 0); --PITCH, YAW, ROLL
--EFFECT.WhizSound			= Sound( "nomad/whiz.wav" );		-- by Robinhood76 (http:--www.freesound.org/people/Robinhood76/sounds/96556/)
--EFFECT.WhizDistance			= 72;

local MaterialMain			= Material( "effects/sw_laser_white_main" );
local MaterialFront			= Material( "effects/sw_laser_white_front" );

function EFFECT:GetTracerColor( data )
	local entity = data:GetEntity();
	local weapon = entity;

	if IsValid( entity ) and not entity:IsWeapon() and ( entity:IsPlayer() or entity:IsNPC() ) then
		weapon = entity:GetActiveWeapon();
	end

	if IsValid( weapon ) then
		local color = weapon.TracerColor

		if weapon.getSightColor and weapon.SightColors and CustomizableWeaponry and CustomizableWeaponry.colorableParts then
			for name, entry in pairs( weapon.SightColors ) do
				if entry and entry.type == CustomizableWeaponry.colorableParts.COLOR_TYPE_BEAM then
					if not weapon.ActiveAttachments or weapon.ActiveAttachments[name] then
						color = entry.color or color
						break
					end
				end
			end
		end

		if color then
			return Color( color.r, color.g, color.b, color.a or 255 );
		end
	end

	return color_white;
end

function EFFECT:GetTracerOrigin( data )

	-- this is almost a direct port of GetTracerOrigin in fx_tracer.cpp
	local start = data:GetStart();
	
	-- use attachment?
	if( bit.band( data:GetFlags(), TRACER_FLAG_USEATTACHMENT ) == TRACER_FLAG_USEATTACHMENT ) then

		local entity = data:GetEntity();
		
		if( not IsValid( entity ) ) then return start; end
		if( not game.SinglePlayer() and entity:IsEFlagSet( EFL_DORMANT ) ) then return start; end
		
		if( entity:IsWeapon() and entity:IsCarriedByLocalPlayer() ) then
			-- can't be done, can't call the real function
			-- local origin = weapon:GetTracerOrigin();
			-- if( origin ) then
			-- 	return origin, angle, entity;
			-- end
			
			-- use the view model
			local pl = entity:GetOwner();
			if( IsValid( pl ) ) then
				local vm = pl:GetViewModel();
				if( IsValid( vm ) and not LocalPlayer():ShouldDrawLocalPlayer() ) then
					entity = vm;
				else
					-- HACK: fix the model in multiplayer
					if( entity.WorldModel ) then
						entity:SetModel( entity.WorldModel );
					end
				end
			end
		end

		local attachment = entity:GetAttachment( data:GetAttachment() );
		if( attachment ) then
			start = attachment.Pos;
		end

	end
	
	return start;

end


function EFFECT:Init( data )

	self.StartPos = self:GetTracerOrigin( data );
	self.EndPos = data:GetOrigin();
	self.TracerColor = self:GetTracerColor( data );

	local offset = self.TracerOffset;
	local direction = ( self.EndPos - self.StartPos ):GetNormal();
	local angles = direction:Angle() + self.TracerAngle;
	self.StartPos = self.StartPos + angles:Forward() * offset.x + angles:Right() * offset.y + angles:Up() * offset.z;
	
	self.Entity:SetRenderBoundsWS( self.StartPos, self.EndPos );

	local diff = ( self.EndPos - self.StartPos );
	
	self.Normal = diff:GetNormal();
	self.StartTime = 0;
	self.LifeTime = ( diff:Length() + self.Length ) / self.Speed;
	
	-- whiz by sound
	local weapon = data:GetEntity();
	if( IsValid( weapon ) and ( not weapon:IsWeapon() or not weapon:IsCarriedByLocalPlayer() ) ) then

		local dist, pos, time = util.DistanceToLine( self.StartPos, self.EndPos, EyePos() );
	end

end


function EFFECT:Think()

	self.LifeTime = self.LifeTime - FrameTime();
	self.StartTime = self.StartTime + FrameTime(); 

	return self.LifeTime > 0;

end


function EFFECT:Render()

	local endDistance = self.Speed * self.StartTime;
	local startDistance = endDistance - self.Length;
	
	startDistance = math.max( 0, startDistance );
	endDistance = math.max( 0, endDistance );

	local startPos = self.StartPos + self.Normal * startDistance;
	local endPos = self.StartPos + self.Normal * endDistance;
	
	render.SetMaterial( MaterialFront );
	render.DrawSprite( endPos, 8, 8, self.TracerColor );

	render.SetMaterial( MaterialMain );
	render.DrawBeam( startPos, endPos, 10, 0, 1, self.TracerColor );
	
end
