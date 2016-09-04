local function do_keyboard_aboutus()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '👤سودو ها👤', callback_data = '!owners'},
			},
			{
			{text = '👥ادمین ها👥', callback_data = '!members'},
			},
			{
	    {text = '💚صفحه قبلی💚', callback_data = '!home'},
	    }
    }
    return keyboard
end
local function do_keyboard_owners()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '● AmirHo3inF ●', url = 'http://telegram.me/amirho3inf'},},
			{{text = '● FasT ReaCtoR ●', url = 'http://telegram.me/fastreactor'},},
			{{text = '● NariMan Master ●', url = 'http://telegram.me/Nawr_i_man'},},
			{{text = '💚صفحه قبلی💚', callback_data = '!aboutus'},
	    }
    }
    return keyboard
end
local function do_keyboard_members()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
			{text = 'َ#AƖιяєzα👑' , url = 'telegram.me/Alirezaw_Tabrizi'},
			{text = 'A.r.a.d', url = 'telegram.me/Win3ton_021'},
			},
			{
			{text = '»»ρσoყα➣ραყԃαɾ««', url = 'telegram.me/Pooya_Paydar'},
			{text = 'MrNitro' , url = 'telegram.me/Mr_Nitro'},
			},
			{
	    {text = '💚صفحه قبلی💚', callback_data = '!aboutus'},
        }
    }
    return keyboard
end
local action = function(msg,blocks)
local msg_id = msg.message_id
local chat = msg.chat.id
local query = blocks[1]
    if msg.cb then
	if query == 'aboutus' then
		local keyboard = do_keyboard_aboutus()
		local text = [[لطفا انتخاب کنید]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'owners' then
		local keyboard = do_keyboard_owners()
		local text = [[*👤سودو ها👤*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'members' then
		local keyboard = do_keyboard_members()
		local text = [[*👥ادمین ها👥*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	end
	end
return {
  action = action,
triggers = {
	    '^###cb:!(aboutus)',
	    '^###cb:!(owners)',
	    '^###cb:!(members)',
    }
}
