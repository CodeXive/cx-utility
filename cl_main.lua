RegisterNetEvent('CX-Utility:ShowAction')
AddEventHandler('CX-Utility:ShowAction', function(Label, Style)
    if Style == nil then
        Style = 'Default'
    end

    local StyleData = Config.Styles.Action[Style]

    SendNUIMessage({
        action = 'ShowAction',
		data = {
            label = Label,
            labelColor = StyleData.LabelColor,

            backgroundColor = StyleData.BackgroundColor,
            position = StyleData.Position,

            showKey = StyleData.ShowKey,
            key = StyleData.Key,
            keyColor = StyleData.KeyColor,
        }
	})
end)

RegisterNetEvent('CX-Utility:HideAction')
AddEventHandler('CX-Utility:HideAction', function()
    SendNUIMessage({
        action = 'HideAction'
	})
end)

RegisterNetEvent('CX-Utility:ShowNotification')
AddEventHandler('CX-Utility:ShowNotification', function(Label, Style)
    if Style == nil then
        Style = 'Default'
    end

    local StyleData = Config.Styles.Notification[Style]

    SendNUIMessage({
        action = 'ShowNotification',
        data = {
            label = Label,
            labelColor = StyleData.LabelColor,

            backgroundColor = StyleData.BackgroundColor,
            position = StyleData.Position,

            time = StyleData.Time * 1000,
            empty = StyleData.Clear
        }
	})
end)

local ProgressBarRunning = false

RegisterNetEvent('CX-Utility:ShowProgress')
AddEventHandler('CX-Utility:ShowProgress', function(Callback, Label, LabelOnComplete, Time, Style)
    if ProgressBarRunning then
        return
    end

    if Style == nil then
        Style = 'Default'
    end

    local StyleData = Config.Styles.ProgressBar[Style]

    SendNUIMessage({
        action = 'ShowProgress',
        data = {
            label = Label,
            labelOnComplete = LabelOnComplete,  
            labelColor = StyleData.LabelColor,

            backgroundColor = StyleData.BackgroundColor,
            fillColor = StyleData.FillColor,
            position = StyleData.Position,
            time = Time * 1000,

            striped = StyleData.Striped,
            animated = StyleData.Animated,
        }
	})

    ProgressBarRunning = true
    Citizen.Wait(Time * 1000)
    
    if ProgressBarRunning then
        ProgressBarRunning = false

        Callback(false)
    end

    Callback(true)
end)

RegisterNetEvent('CX-Utility:CancelProgress')
AddEventHandler('CX-Utility:CancelProgress', function()
    local StyleData = Config.Styles.ProgressCancelled

    SendNUIMessage({
        action = 'CancelProgress',
        data = {
            label = StyleData.Label,
            labelColor = StyleData.LabelColor,

            backgroundColor = StyleData.BackgroundColor,
            position = StyleData.Position,
            time = StyleData.Time * 1000,

            striped = StyleData.Striped,
            animated = StyleData.Animated,
        }
	})
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)

		if IsControlPressed(0, 323) then
            if ProgressBarRunning then
                TriggerEvent('CX-Utility:CancelProgress')
                ProgressBarRunning = false
            end
		end 
	end
end)