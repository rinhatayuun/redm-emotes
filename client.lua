local CurrentEmote
local SharedEmoteRequest

RegisterNetEvent("emotes:requestSharedEmote")
RegisterNetEvent("emotes:rejectSharedEmote")
RegisterNetEvent("emotes:acceptSharedEmote")
RegisterNetEvent("emotes:stopSharedEmote")

function GetCompatibleAnim(ped, anim)
	if anim and anim.variants then
		for _, variant in ipairs(anim.variants) do
			if variant.isCompatible(ped) then
				return variant
			end
		end
	else
		return anim
	end
end

function PlayAnimation(ped, anim)
	anim = GetCompatibleAnim(ped, anim)

	if not DoesAnimDictExist(anim.dict) then
		print("Invalid animation dictionary: " .. anim.dict)
		return
	end

	RequestAnimDict(anim.dict)

	while not HasAnimDictLoaded(anim.dict) do
		Wait(0)
	end

	if anim.flag == 1 then
		FreezeEntityPosition(ped, true)
	end

	TaskPlayAnim(ped, anim.dict, anim.name, 1.0, 1.0, -1, anim.flag, 0.0, false, false, false, "", false)

	RemoveAnimDict(anim.dict)
end

function StopAnimation(ped, anim)
	anim = GetCompatibleAnim(ped, anim)

	StopAnimTask(ped, anim.dict, anim.name, 1.0)

	if anim.flag == 1 then
		FreezeEntityPosition(ped, false)
	end
end

function IsPlayingAnimation(ped, anim)
	anim = GetCompatibleAnim(ped, anim)

	return IsEntityPlayingAnim(ped, anim.dict, anim.name, anim.flag)
end

function CreateProp1()
	CurrentEmote.prop1.handle = CreateObjectNoOffset(GetHashKey(CurrentEmote.prop1.model), 0.0, 0.0, 0.0, true, false, false, false)
end
function CreateProp2()
	CurrentEmote.prop2.handle = CreateObjectNoOffset(GetHashKey(CurrentEmote.prop2.model), 0.0, 0.0, 0.0, true, false, false, false)
end
function CreateProp3()
	CurrentEmote.prop3.handle = CreateObjectNoOffset(GetHashKey(CurrentEmote.prop3.model), 0.0, 0.0, 0.0, true, false, false, false)
end
function CreateProp4()
	CurrentEmote.prop4.handle = CreateObjectNoOffset(GetHashKey(CurrentEmote.prop4.model), 0.0, 0.0, 0.0, true, false, false, false)
end
function CreateProp5()
	CurrentEmote.prop5.handle = CreateObjectNoOffset(GetHashKey(CurrentEmote.prop5.model), 0.0, 0.0, 0.0, true, false, false, false)
end
function CreateProp6()
	CurrentEmote.prop6.handle = CreateObjectNoOffset(GetHashKey(CurrentEmote.prop6.model), 0.0, 0.0, 0.0, true, false, false, false)
end
function CreateProp7()
	CurrentEmote.prop7.handle = CreateObjectNoOffset(GetHashKey(CurrentEmote.prop7.model), 0.0, 0.0, 0.0, true, false, false, false)
end
function CreateProp8()
	CurrentEmote.prop8.handle = CreateObjectNoOffset(GetHashKey(CurrentEmote.prop8.model), 0.0, 0.0, 0.0, true, false, false, false)
end
function CreateProp9()
	CurrentEmote.prop9.handle = CreateObjectNoOffset(GetHashKey(CurrentEmote.prop9.model), 0.0, 0.0, 0.0, true, false, false, false)
end
function CreateProp10()
	CurrentEmote.prop10.handle = CreateObjectNoOffset(GetHashKey(CurrentEmote.prop10.model), 0.0, 0.0, 0.0, true, false, false, false)
end

function AttachProp1(ped)
	local handle = CurrentEmote.prop1.handle
	local bone = CurrentEmote.prop1.bone
	local position = CurrentEmote.prop1.position
	local rotation = CurrentEmote.prop1.rotation

	if type(bone) == "string" then
		bone = GetEntityBoneIndexByName(ped, bone)
	end
print(json.encode(position))
	AttachEntityToEntity(handle, ped, bone, position, rotation, false, false, true, false, 0, true, false, false)
end
function AttachProp2(ped)
	local handle = CurrentEmote.prop2.handle
	local bone = CurrentEmote.prop2.bone
	local position = CurrentEmote.prop2.position
	local rotation = CurrentEmote.prop2.rotation

	if type(bone) == "string" then
		bone = GetEntityBoneIndexByName(ped, bone)
	end
print(json.encode(position))
	AttachEntityToEntity(handle, ped, bone, position, rotation, false, false, true, false, 0, true, false, false)
end
function AttachProp3(ped)
	local handle = CurrentEmote.prop3.handle
	local bone = CurrentEmote.prop3.bone
	local position = CurrentEmote.prop3.position
	local rotation = CurrentEmote.prop3.rotation

	if type(bone) == "string" then
		bone = GetEntityBoneIndexByName(ped, bone)
	end
print(json.encode(position))
	AttachEntityToEntity(handle, ped, bone, position, rotation, false, false, true, false, 0, true, false, false)
end
function AttachProp4(ped)
	local handle = CurrentEmote.prop4.handle
	local bone = CurrentEmote.prop4.bone
	local position = CurrentEmote.prop4.position
	local rotation = CurrentEmote.prop4.rotation

	if type(bone) == "string" then
		bone = GetEntityBoneIndexByName(ped, bone)
	end
print(json.encode(position))
	AttachEntityToEntity(handle, ped, bone, position, rotation, false, false, true, false, 0, true, false, false)
end
function AttachProp5(ped)
	local handle = CurrentEmote.prop5.handle
	local bone = CurrentEmote.prop5.bone
	local position = CurrentEmote.prop5.position
	local rotation = CurrentEmote.prop5.rotation

	if type(bone) == "string" then
		bone = GetEntityBoneIndexByName(ped, bone)
	end
print(json.encode(position))
	AttachEntityToEntity(handle, ped, bone, position, rotation, false, false, true, false, 0, true, false, false)
end
function AttachProp6(ped)
	local handle = CurrentEmote.prop6.handle
	local bone = CurrentEmote.prop6.bone
	local position = CurrentEmote.prop6.position
	local rotation = CurrentEmote.prop6.rotation

	if type(bone) == "string" then
		bone = GetEntityBoneIndexByName(ped, bone)
	end
print(json.encode(position))
	AttachEntityToEntity(handle, ped, bone, position, rotation, false, false, true, false, 0, true, false, false)
end
function AttachProp7(ped)
	local handle = CurrentEmote.prop7.handle
	local bone = CurrentEmote.prop7.bone
	local position = CurrentEmote.prop7.position
	local rotation = CurrentEmote.prop7.rotation

	if type(bone) == "string" then
		bone = GetEntityBoneIndexByName(ped, bone)
	end
print(json.encode(position))
	AttachEntityToEntity(handle, ped, bone, position, rotation, false, false, true, false, 0, true, false, false)
end
function AttachProp8(ped)
	local handle = CurrentEmote.prop8.handle
	local bone = CurrentEmote.prop8.bone
	local position = CurrentEmote.prop8.position
	local rotation = CurrentEmote.prop8.rotation

	if type(bone) == "string" then
		bone = GetEntityBoneIndexByName(ped, bone)
	end
print(json.encode(position))
	AttachEntityToEntity(handle, ped, bone, position, rotation, false, false, true, false, 0, true, false, false)
end
function AttachProp9(ped)
	local handle = CurrentEmote.prop9.handle
	local bone = CurrentEmote.prop9.bone
	local position = CurrentEmote.prop9.position
	local rotation = CurrentEmote.prop9.rotation

	if type(bone) == "string" then
		bone = GetEntityBoneIndexByName(ped, bone)
	end
print(json.encode(position))
	AttachEntityToEntity(handle, ped, bone, position, rotation, false, false, true, false, 0, true, false, false)
end
function AttachProp10(ped)
	local handle = CurrentEmote.prop10.handle
	local bone = CurrentEmote.prop10.bone
	local position = CurrentEmote.prop10.position
	local rotation = CurrentEmote.prop10.rotation

	if type(bone) == "string" then
		bone = GetEntityBoneIndexByName(ped, bone)
	end
print(json.encode(position))
	AttachEntityToEntity(handle, ped, bone, position, rotation, false, false, true, false, 0, true, false, false)
end


local entityEnumerator = {
	__gc = function(enum)
		if enum.destructor and enum.handle then
			enum.destructor(enum.handle)
		end
		enum.destructor = nil
		enum.handle = nil
	end
}

function EnumerateEntities(firstFunc, nextFunc, endFunc)
	return coroutine.wrap(function()
		local iter, id = firstFunc()

		if not id or id == 0 then
			endFunc(iter)
			return
		end

		local enum = {handle = iter, destructor = endFunc}
		setmetatable(enum, entityEnumerator)

		local next = true
		repeat
			coroutine.yield(id)
			next, id = nextFunc(iter)
		until not next

		enum.destructor, enum.handle = nil, nil
		endFunc(iter)
	end)
end

function EnumeratePeds()
	return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function GetClosestPedInRange()
	local myPed = PlayerPedId()
	local myPos = GetEntityCoords(myPed)

	local minDist, closestPed

	for ped in EnumeratePeds() do
		if myPed ~= ped then
			local theirPos = GetEntityCoords(ped)
			local distance = #(myPos - theirPos)

			if distance < Config.SharedEmoteRange and (not minDist or distance < minDist) then
				minDist = distance
				closestPed = ped
			end
		end
	end

	return closestPed
end

function GetPlayerFromPed(ped)
	for _, player in ipairs(GetActivePlayers()) do
		if GetPlayerPed(player) == ped then
			return player
		end
	end
end

function GetPlayerServerIdFromPed(ped)
	return GetPlayerServerId(GetPlayerFromPed(ped))
end

function GetPlayerPedFromServerId(serverId)
	return GetPlayerPed(GetPlayerFromServerId(serverId))
end

function GetPlayerNameFromServerId(serverId)
	return GetPlayerName(GetPlayerFromServerId(serverId))
end

function TeleportToPartner(ped, partner, emote)
	local partnerPos = GetEntityCoords(partner)
	local partnerHeading = GetEntityHeading(partner)

	local r = math.rad(partnerHeading)
	local cosr = math.cos(r)
	local sinr = math.sin(r)

	local x = emote.partner.offset.x * cosr - emote.partner.offset.y * sinr + partnerPos.x
	local y = emote.partner.offset.y * cosr + emote.partner.offset.x * sinr + partnerPos.y
	local z = emote.partner.offset.z + partnerPos.z
	local h = emote.partner.offset.w + partnerHeading

	SetEntityCoordsNoOffset(ped, x, y, z)
	SetEntityHeading(ped, h)
end

function DrawText2D(x, y, text)
	SetTextScale(0.35, 0.35)
	SetTextColor(255, 255, 255, 255)
	SetTextCentre(true)
	SetTextDropshadow(1, 0, 0, 0, 200)
	SetTextFontForCurrentCommand(0)
	DisplayText(CreateVarString(10, "LITERAL_STRING", text), x, y)
end

function DrawText3D(x, y, z, text)
	local onScreen, screenX, screenY = GetScreenCoordFromWorldCoord(x, y, z)
	SetTextScale(0.35, 0.35)
	SetTextFontForCurrentCommand(1)
	SetTextColor(255, 255, 255, 223)
	SetTextCentre(1)
	DisplayText(CreateVarString(10, "LITERAL_STRING", text), screenX, screenY)
end

function ShowNotification(text, duration)
	local endTime = GetSystemTime() + (duration or 5000)

	CreateThread(function()
		while GetSystemTime() < endTime do
			DrawText2D(0.5, 0.8, text)
			Wait(0)
		end
	end)
end

function SendSharedEmoteRequest(emote)
	local closestPed = GetClosestPedInRange()

	if not closestPed then
		ShowNotification("Nobody in range")
		return
	end

	emote.partner.ped = closestPed

	if IsPedAPlayer(closestPed) then
		TriggerServerEvent("emotes:requestSharedEmote", GetPlayerServerIdFromPed(closestPed), emote)
	else
		NetworkRequestControlOfEntity(closestPed)
		TeleportToPartner(closestPed, PlayerPedId(), emote)
		PlayAnimation(closestPed, emote.partner.animation)
		CurrentEmote = emote
	end
end

function AcceptSharedEmoteRequest()
	TriggerServerEvent("emotes:acceptSharedEmote", SharedEmoteRequest.player, SharedEmoteRequest.emote)

	local partner = GetPlayerPedFromServerId(SharedEmoteRequest.player)

	TeleportToPartner(PlayerPedId(), partner, SharedEmoteRequest.emote)

	local emote = SharedEmoteRequest.emote.partner
	emote.name = SharedEmoteRequest.emote.name
	emote.partner = {ped = partner}

	SharedEmoteRequest = nil

	CurrentEmote = emote
end

function RejectSharedEmoteRequest()
	TriggerServerEvent("emotes:rejectSharedEmote", SharedEmoteRequest.player, SharedEmoteRequest.emote)
	SharedEmoteRequest = nil
end

function StartUsingEmote(name)
	if CurrentEmote then
		StopUsingEmote()
	end

	local emote = Config.Emotes[name]

	if not emote then
		ShowNotification("Invalid emote: " .. name)
		return
	end

	if not emote.name then
		emote.name = name
	end

	if emote.partner then
		SendSharedEmoteRequest(emote)
	else
		CurrentEmote = emote
	end
end

function StopUsingEmote()
	if not CurrentEmote then
		return
	end

	local emote = CurrentEmote
	CurrentEmote = nil

	local ped = PlayerPedId()

	if emote.prop1 then
		DetachEntity(emote.prop1.handle)
		DeleteObject(emote.prop1.handle)
	end
	if emote.prop2 then
		DetachEntity(emote.prop2.handle)
		DeleteObject(emote.prop2.handle)
	end
	if emote.prop3 then
		DetachEntity(emote.prop3.handle)
		DeleteObject(emote.prop3.handle)
	end
	if emote.prop4 then
		DetachEntity(emote.prop4.handle)
		DeleteObject(emote.prop4.handle)
	end
	if emote.prop5 then
		DetachEntity(emote.prop5.handle)
		DeleteObject(emote.prop5.handle)
	end
	if emote.prop6 then
		DetachEntity(emote.prop6.handle)
		DeleteObject(emote.prop6.handle)
	end
	if emote.prop7 then
		DetachEntity(emote.prop7.handle)
		DeleteObject(emote.prop7.handle)
	end
	if emote.prop8 then
		DetachEntity(emote.prop8.handle)
		DeleteObject(emote.prop8.handle)
	end
	if emote.prop9 then
		DetachEntity(emote.prop9.handle)
		DeleteObject(emote.prop9.handle)
	end
	if emote.prop10 then
		DetachEntity(emote.prop10.handle)
		DeleteObject(emote.prop10.handle)
	end

	if emote.animation then
		StopAnimation(ped, emote.animation)
	end

	if emote.partner then
		if IsPedAPlayer(emote.partner.ped) then
			TriggerServerEvent("emotes:stopSharedEmote", GetPlayerServerIdFromPed(emote.partner.ped), emote)
		else
			StopAnimation(emote.partner.ped, emote.partner.animation)
		end
	end
end

function DrawSharedEmoteRequestText()
	local player = GetPlayerFromServerId(SharedEmoteRequest.player)
	local pos = GetEntityCoords(GetPlayerPed(player))
	DrawText3D(pos.x, pos.y, pos.z, GetPlayerName(player) .. " wants to use " .. SharedEmoteRequest.emote.name .. ". Press [E] to accept, or [R] to reject. Expires in " .. math.floor((SharedEmoteRequest.expires - GetSystemTime()) / 10000) .. "s...")
end

function EmoteCommand(source, args, raw)
	if args[1] then
		StartUsingEmote(args[1])
	else
		StopUsingEmote()
	end
end

function GetEmotes()
	local soloEmotes = {}
	local sharedEmotes = {}
	local propEmotes = {}

	for emote, info in pairs(Config.Emotes) do
		if info.type == "solo" then
			table.insert(soloEmotes, {name = info.name, command = emote})
		elseif info.type == "shared" then
			table.insert(sharedEmotes, {name = info.name, command = emote})
		elseif info.type == "prop" then
			table.insert(propEmotes, {name = info.name, command = emote})
		end
	end

	table.sort(soloEmotes, function(a, b) return a.name < b.name end)
	table.sort(sharedEmotes, function(a, b) return a.name < b.name end)
	table.sort(propEmotes, function(a, b) return a.name < b.name end)

	return {
		{name = "Solo Emotes", emotes = soloEmotes},
		{name = "Shared Emotes", emotes = sharedEmotes},
		{name = "Prop Emotes", emotes = propEmotes},
	}
end

function GetEmotesAsJson()
	return json.encode(GetEmotes())
end

exports("getEmotes", GetEmotes)
exports("getEmotesAsJson", GetEmotesAsJson)

RegisterCommand("emote", EmoteCommand)
RegisterCommand("e", EmoteCommand)

AddEventHandler("emotes:requestSharedEmote", function(player, emote)
	SharedEmoteRequest = {player = player, emote = emote, expires = GetSystemTime() + Config.SharedEmoteTimeout}
end)

AddEventHandler("emotes:rejectSharedEmote", function(player, emote)
	ShowNotification(GetPlayerNameFromServerId(player) .. " rejected your request to use " .. emote.name)
end)

AddEventHandler("emotes:acceptSharedEmote", function(player, emote)
	CurrentEmote = emote
end)

AddEventHandler("emotes:stopSharedEmote", function(player, emote)
	StopUsingEmote()
end)

AddEventHandler("onResourceStop", function(resource)
	if GetCurrentResourceName() ~= resource then
		return
	end

	if CurrentEmote then
		StopUsingEmote()
	end
end)

CreateThread(function()
	TriggerEvent("chat:addSuggestion", "/emote", "Use an emote", {
		{name = "emote", help = "Emote to use, or omit to cancel the current emote"}
	})
	TriggerEvent("chat:addSuggestion", "/e", "Use an emote", {
		{name = "emote", help = "Emote to use, or omit to cancel the current emote"}
	})

	while true do
		if SharedEmoteRequest then
			if SharedEmoteRequest.expires <= GetSystemTime() then
				RejectSharedEmoteRequest()
			else
				DrawSharedEmoteRequestText()

				DisableControlAction(0, Config.SharedEmoteAcceptControl, true)
				DisableControlAction(0, Config.SharedEmoteRejectControl, true)

				if IsDisabledControlJustPressed(0, Config.SharedEmoteAcceptControl) then
					AcceptSharedEmoteRequest()
				elseif IsDisabledControlJustPressed(0, Config.SharedEmoteRejectControl) then
					RejectSharedEmoteRequest()
				end
			end
		end

		if CurrentEmote then
			local ped = PlayerPedId()
			local anim = CurrentEmote.animation

			if anim and not IsPlayingAnimation(ped, anim) then
				PlayAnimation(ped, anim)
			end

			if CurrentEmote.prop1 then
				if not (CurrentEmote.prop1.handle and DoesEntityExist(CurrentEmote.prop1.handle)) then
					CreateProp1()
					AttachProp1(ped)
				elseif not IsEntityAttachedToEntity(CurrentEmote.prop1.handle, ped) then
					AttachProp(ped)
				end
			end
			if CurrentEmote.prop2 then
				if not (CurrentEmote.prop2.handle and DoesEntityExist(CurrentEmote.prop2.handle)) then
					CreateProp2()
					AttachProp2(ped)
				elseif not IsEntityAttachedToEntity(CurrentEmote.prop2.handle, ped) then
					AttachProp(ped)
				end
			end
			if CurrentEmote.prop3 then
				if not (CurrentEmote.prop3.handle and DoesEntityExist(CurrentEmote.prop3.handle)) then
					CreateProp3()
					AttachProp3(ped)
				elseif not IsEntityAttachedToEntity(CurrentEmote.prop3.handle, ped) then
					AttachProp(ped)
				end
			end
			if CurrentEmote.prop4 then
				if not (CurrentEmote.prop4.handle and DoesEntityExist(CurrentEmote.prop4.handle)) then
					Createprop4()
					AttachProp4(ped)
				elseif not IsEntityAttachedToEntity(CurrentEmote.prop4.handle, ped) then
					AttachProp(ped)
				end
			end
			if CurrentEmote.prop5 then
				if not (CurrentEmote.prop5.handle and DoesEntityExist(CurrentEmote.prop5.handle)) then
					Createprop5()
					AttachProp5(ped)
				elseif not IsEntityAttachedToEntity(CurrentEmote.prop5.handle, ped) then
					AttachProp(ped)
				end
			end
			if CurrentEmote.prop6 then
				if not (CurrentEmote.prop6.handle and DoesEntityExist(CurrentEmote.prop6.handle)) then
					Createprop6()
					AttachProp6(ped)
				elseif not IsEntityAttachedToEntity(CurrentEmote.prop6.handle, ped) then
					AttachProp(ped)
				end
			end
			if CurrentEmote.prop7 then
				if not (CurrentEmote.prop7.handle and DoesEntityExist(CurrentEmote.prop7.handle)) then
					Createprop7()
					AttachProp7(ped)
				elseif not IsEntityAttachedToEntity(CurrentEmote.prop7.handle, ped) then
					AttachProp(ped)
				end
			end
			if CurrentEmote.prop8 then
				if not (CurrentEmote.prop8.handle and DoesEntityExist(CurrentEmote.prop8.handle)) then
					Createprop8()
					AttachProp8(ped)
				elseif not IsEntityAttachedToEntity(CurrentEmote.prop8.handle, ped) then
					AttachProp(ped)
				end
			end
			if CurrentEmote.prop9 then
				if not (CurrentEmote.prop9.handle and DoesEntityExist(CurrentEmote.prop9.handle)) then
					Createprop9()
					AttachProp9(ped)
				elseif not IsEntityAttachedToEntity(CurrentEmote.prop9.handle, ped) then
					AttachProp(ped)
				end
			end
			if CurrentEmote.prop10 then
				if not (CurrentEmote.prop10.handle and DoesEntityExist(CurrentEmote.prop10.handle)) then
					Createprop10()
					AttachProp10(ped)
				elseif not IsEntityAttachedToEntity(CurrentEmote.prop10.handle, ped) then
					AttachProp(ped)
				end
			end
		end

		Wait(0)
	end
end)
