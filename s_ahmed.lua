local cmd = [[
    ____    ___   ______      ______    ___  _        ___   ____  ____    ____  ___ ___     
    |    \  /   \ |      |    |      |  /  _]| |      /  _] /    ||    \  /    ||   |   |    
    |  o  )|     ||      |    |      | /  [_ | |     /  [_ |   __||  D  )|  o  || _   _ |    
    |     ||  O  ||_|  |_|    |_|  |_||    _]| |___ |    _]|  |  ||    / |     ||  \_/  |    
    |  O  ||     |  |  |        |  |  |   [_ |     ||   [_ |  |_ ||    \ |  _  ||   |   |    
    |     ||     |  |  |        |  |  |     ||     ||     ||     ||  .  \|  |  ||   |   |    
    |_____| \___/   |__|        |__|  |_____||_____||_____||___,_||__|\_||__|__||___|___| 



    ____   __ __       ____  __ __  ___ ___    ___  ___        _      __ __ 
|    \ |  |  |     /    ||  |  ||   |   |  /  _]|   \      | |    |  |  |
|  o  )|  |  |    |  o  ||  |  || _   _ | /  [_ |    \     | |    |  |  |
|     ||  ~  |    |     ||  _  ||  \_/  ||    _]|  D  |    | |___ |  ~  |
|  O  ||___, |    |  _  ||  |  ||   |   ||   [_ |     |    |     ||___, |
|     ||     |    |  |  ||  |  ||   |   ||     ||     |    |     ||     |
|_____||____/     |__|__||__|__||___|___||_____||_____|    |_____||____/ 
                                                                        
]]
print('-----------------------------------------------------------------------------------------------------------')
print(cmd)


function showcommands ()
    local msgs = [[
            ____    ___   ______      ______    ___  _        ___   ____  ____    ____  ___ ___     
            |    \  /   \ |      |    |      |  /  _]| |      /  _] /    ||    \  /    ||   |   |    
            |  o  )|     ||      |    |      | /  [_ | |     /  [_ |   __||  D  )|  o  || _   _ |    
            |     ||  O  ||_|  |_|    |_|  |_||    _]| |___ |    _]|  |  ||    / |     ||  \_/  |    
            |  O  ||     |  |  |        |  |  |   [_ |     ||   [_ |  |_ ||    \ |  _  ||   |   |    
            |     ||     |  |  |        |  |  |     ||     ||     ||     ||  .  \|  |  ||   |   |    
            |_____| \___/   |__|        |__|  |_____||_____||_____||___,_||__|\_||__|__||___|___| 
        
            ----------------------------------------------------------------------------------------
            sendMsg [Msg] - to send the message 
            sendphoto [photo] - to send the photo
            sendAudio [Audio] - to send the Audio  
            sendvideo  [video] - to send the video
            sendDocument[Document] - to send the Document
            sendSticker[Sticker] - to send the Sticker 
            sendChatAction  [Action] - to change the Chat Action  
			getme - to Get All info about the bot 
            ---------------------------------------------------------------------------------------
-]]
               print(msgs)
end 
setTimer(showcommands,6000,1)
function sends (playerSource,commandName,amount)
	    if  playerSource then
        if commandName == "sendMsg" then
          local texts  = tostring(amount)
            if texts then
                sendMsg(texts)
                print("[Bot] Sending .. "..texts.."")
            else
                print("[usage] sendMsg [amount]")
            end
        else  if commandName == "bothelp" then 
         local texts =  tostring(amount)
         if texts  == "-u" then
         local msgs = [[
            ____    ___   ______      ______    ___  _        ___   ____  ____    ____  ___ ___     
            |    \  /   \ |      |    |      |  /  _]| |      /  _] /    ||    \  /    ||   |   |    
            |  o  )|     ||      |    |      | /  [_ | |     /  [_ |   __||  D  )|  o  || _   _ |    
            |     ||  O  ||_|  |_|    |_|  |_||    _]| |___ |    _]|  |  ||    / |     ||  \_/  |    
            |  O  ||     |  |  |        |  |  |   [_ |     ||   [_ |  |_ ||    \ |  _  ||   |   |    
            |     ||     |  |  |        |  |  |     ||     ||     ||     ||  .  \|  |  ||   |   |    
            |_____| \___/   |__|        |__|  |_____||_____||_____||___,_||__|\_||__|__||___|___| 
        
           ------------------------------------------
            sendMsg [Msg] - to send the message 
            sendphoto [photo] - to send the photo
            sendAudio [Audio] - to send the Audio  
            sendvideo  [video] - to send the video
            sendDocument[Document] - to send the Document
            sendSticker[Sticker] - to send the Sticker 
            sendChatAction  [Action] - to change the Chat Action  
			getme - to Get All info about the bot 
            ------------------------------------------
			
]]
               print(msgs)
			   else 
			    print("[usage] bothelp -u ")
             end 
            else  if commandName == "sendphoto" then 
                local texts  = tostring(amount)
                if texts then
                    sendphoto(texts)
                    print("[Bot] Sending .. "..texts.."")
                else
                    print("[usage] sendphoto [photo]")
                    end
                else  if commandName == "sendvideo" then 
                    local texts  = tostring(amount)
                    if texts then
                        sendvideo(texts)
                        print("[Bot] Sending .. "..texts.."")
                    else
                        print("[usage] sendvideo [video]") 
					  end
					else  if commandName == "sendAudio" then 
                    local texts  = tostring(amount)
                    if texts then
                        sendAudio(texts)
                        print("[Bot] Sending .. "..texts.."")
                    else
                        print("[usage] sendAudio [Audio]") 
					    end
						else  if commandName == "sendDocument" then 
                    local texts  = tostring(amount)
                    if texts then
                        sendDocument(texts,"this is pdf")
                        print("[Bot] Sending .. "..texts.."")
                    else
                        print("[usage] sendDocument [Document]") 
					        end
					else  if commandName == "sendSticker" then 
                    local texts  = tostring(amount)
                    if texts then
                        sendSticker(texts)
                        print("[Bot] Sending .. "..texts.."")
                    else
                        print("[usage] sendSticker [Sticker ]") 
					           end
					else  if commandName == "sendChatAction" then 
                    local texts  = tostring(amount)
                    if texts then
                        sendChatAction(texts)
                        print("[Bot] Sending .. "..texts.."")
                    else
                        print("[usage] sendChatAction [Action]") 
					             end
				    else  if commandName == "getme" then 
					local id,username,is_bot,can_read_all_group_messages,supports_inline_queries,can_join_groups = getMe ()
                        print('[Bot] info = '..id,username,is_bot,can_read_all_group_messages,supports_inline_queries,can_join_groups)
					             end
							   end
							end
						 end
					  end
	                end
                end
             end 
         end
    end 
 end
 addCommandHandler("sendMsg", sends)
addCommandHandler("bothelp", sends)
addCommandHandler("sendphoto", sends)
addCommandHandler("sendvideo", sends)
addCommandHandler("sendAudio",sends)
addCommandHandler("sendSticker",sends)
addCommandHandler("sendDocument",sends)
addCommandHandler("sendChatAction",sends)
addCommandHandler("getme",sends)


function read ()
    open = fileOpen("config.txt")
    reading = fileRead(open,46)
    fileFlush(open)
    fileClose(open)
    return reading
end 


link = {}


function readid ()
    opentwo = fileOpen("config.txt")
   fileSetPos(opentwo,48)
    readingtow = fileRead(opentwo,10)
    fileFlush(opentwo)
    fileClose(opentwo)
    return readingtow
end 

token =  read()
chat_id = readid()



function result(sum)
    print(sum)
end

function sendMsg(Text)
    link[1] = "https://api.telegram.org/bot"..token.."/sendMessage".."?chat_id="..chat_id.."&text="..Text..""
    print(link[1])
    callRemote (link[1], result,Text)
end 



function sendphoto(photo)
    link[2] = "https://api.telegram.org/bot"..token.."/sendPhoto".."?chat_id="..chat_id.."&photo="..photo..""
     callRemote (link[2],result,photo)
 end 


 function sendvideo(video)
    link[3] = "https://api.telegram.org/bot"..token.."/sendVideo".."?chat_id="..chat_id.."&video="..video..""
     callRemote (link[3],result,video)
 end 

 function sendAudio(Audio)
    link[4] = "https://api.telegram.org/bot"..token.."/sendAudio".."?chat_id="..chat_id.."&audio="..Audio..""
     callRemote (link[4],result,Audio)
 end 

 function sendDocument(Document,Texts)
    link[5] = "https://api.telegram.org/bot"..token.."/sendDocument".."?chat_id="..chat_id.."&document="..Document.."&caption="..Texts..""
     callRemote (link[5],result,Document)
 end 


 function sendSticker(Sticker)
    link[6] = "https://api.telegram.org/bot"..token.."/sendSticker".."?chat_id="..chat_id.."&sticker="..Sticker..""
     callRemote (link[6],result,Sticker)
 end 


 function sendChatAction(action)
    link[7] = "https://api.telegram.org/bot"..token.."/sendChatAction".."?chat_id="..chat_id.."&action="..action..""
	print(link[7])
     callRemote (link[7],result,action)
    end
  


function started(wedf)
    link[9] = 'https://api.telegram.org/bot'..token..'/getMe'
	print(link[9])
    fetchRemote (link[9], getalljson, "", false,wedf)
end

function getalljson( responseData, error,wedf)
    if error == 0 then
   local open = fileOpen('getme.txt')
   local reading = fileWrite(open,responseData)
   fileFlush(open)
   fileClose(open)
	      end
    end
	
	
function getMe ()
   started('opened')
   local filetxt = fileOpen('getme.txt')
   local count = fileGetSize(filetxt)
   local reads = fileRead(filetxt,count)
    DATA = fromJSON ("["..reads.."]")
   fileFlush(filetxt)
   fileClose(filetxt)
   	   return DATA['result']['id'],DATA['result']['username'],DATA['result']['first_name'],DATA['result']['is_bot'],DATA['result']['can_read_all_group_messages'],DATA['result']['supports_inline_queries'],DATA['result']['can_join_groups']
end 


function getlinks ()
for i = 0,9 do
   if link[i]  then 
    return link[i],i
	    end
	end
end


--local id,username,is_bot,can_read_all_group_messages,supports_inline_queries,can_join_groups = getMe ()
--print(id,username,is_bot,can_read_all_group_messages,supports_inline_queries,can_join_groups)

--links,number = getlinks()
--print(links,number)




-- sendChatAction("")
--sendMsg("hi")
--sendChatAction("upload_photo")
 --sendSticker("https://www.gstatic.com/webp/gallery/1.webp")
-- sendDocument("https://www.mathscinotes.com/wp-content/uploads/2016/02/Adler-Mortimer-How-To-Read-A-Book.pdf","this pdf")
 --sendAudio("https://g.top4top.io/m_488rkvrd2.mp3")
 -- sendvideo("https://p.top4top.io/m_872tuac51.mp4")
-- sendphoto("https://j.top4top.io/i_1eb6c9296e1.png")
