--data_manager.lua
local data_manager = {}
local Context = activity.getContext()
local sharedPref = Context.getSharedPreferences("CARDS_CLUB_DATA", Context.MODE_PRIVATE)

function data_manager.save(key, value)
  local editor = sharedPref.edit()
  if type(value) == "string" then
    editor.putString(key, value)
  elseif type(value) == "boolean" then
    editor.putBoolean(key, value)
  elseif type(value) == "number" then
    editor.putString(key, tostring(value))
  end
  editor.apply()
end

function data_manager.load(key, defaultValue)
  local allData = sharedPref.getAll()
  if allData.containsKey(key) then
    local val = allData.get(key)
    if type(defaultValue) == "number" then
      return tonumber(val) or defaultValue
    end
    return val
  end
  return defaultValue
end

function data_manager.getGameVersion()
  return data_manager.load("game_version", "1.5.2")
end

function data_manager.setGameVersion(v)
  data_manager.save("game_version", tostring(v))
end

function data_manager.get99Matches() 
return data_manager.load("99_matches", 0) 
end
function data_manager.set99Matches(v)
data_manager.save("99_matches", v) 
end

function data_manager.get99Firsts() 
return data_manager.load("99_firsts", 0) 
end

function data_manager.set99Firsts(v)
data_manager.save("99_firsts", v) 
end

function data_manager.get99Seconds() 
return data_manager.load("99_seconds", 0) 
end

function data_manager.set99Seconds(v)
data_manager.save("99_seconds", v) 
end

function data_manager.get99Hits() 
  return data_manager.load("99_hits", 0) 
end

function data_manager.set99Hits(v)
  data_manager.save("99_hits", v) 
end

function data_manager.get29Matches() 
return data_manager.load("29_matches", 0) 
end

function data_manager.set29Matches(v)
data_manager.save("29_matches", v) 
end

function data_manager.get29Wins() 
return data_manager.load("29_wins", 0) 
end

function data_manager.set29Wins(v)
data_manager.save("29_wins", v) 
end

function data_manager.get29Lost()
return data_manager.load("29_lost", 0) 
end

function data_manager.set29Lost(v)
data_manager.save("29_lost", v) 
end

function data_manager.getC4Matches() 
  return data_manager.load("c4_matches", 0) 
end

function data_manager.setC4Matches(v)
  data_manager.save("c4_matches", v) 
end

function data_manager.getC4Wins() 
  return data_manager.load("c4_wins", 0) 
end

function data_manager.setC4Wins(v)
  data_manager.save("c4_wins", v) 
end

function data_manager.getC4Losses() 
  return data_manager.load("c4_losses", 0) 
end

function data_manager.setC4Losses(v)
  data_manager.save("c4_losses", v) 
end

function data_manager.getC4Draws() 
  return data_manager.load("c4_draws", 0) 
end

function data_manager.setC4Draws(v)
  data_manager.save("c4_draws", v) 
end

function data_manager.getLudoMatches()
  return data_manager.load("ludo_matches", 0)
end
function data_manager.setLudoMatches(v)
  data_manager.save("ludo_matches", v)
end

function data_manager.getLudo1st()
  return data_manager.load("ludo_1st", 0)
end
function data_manager.setLudo1st(v)
  data_manager.save("ludo_1st", v)
end

function data_manager.getLudo2nd()
  return data_manager.load("ludo_2nd", 0)
end
function data_manager.setLudo2nd(v)
  data_manager.save("ludo_2nd", v)
end

function data_manager.getLudo3rd()
  return data_manager.load("ludo_3rd", 0)
end
function data_manager.setLudo3rd(v)
  data_manager.save("ludo_3rd", v)
end

function data_manager.getLudo4th()
  return data_manager.load("ludo_4th", 0)
end
function data_manager.setLudo4th(v)
  data_manager.save("ludo_4th", v)
end

function data_manager.getLudoKills()
  return data_manager.load("ludo_kills", 0)
end
function data_manager.setLudoKills(v)
  data_manager.save("ludo_kills", v)
end

function data_manager.getLudoEscorts()
  return data_manager.load("ludo_escorts", 0)
end
function data_manager.setLudoEscorts(v)
  data_manager.save("ludo_escorts", v)
end

function data_manager.getLudoDeaths()
  return data_manager.load("ludo_deaths", 0)
end
function data_manager.setLudoDeaths(v)
  data_manager.save("ludo_deaths", v)
end

function data_manager.getFightingMatches()
  return data_manager.load("fighting_matches", 0)
end

function data_manager.setFightingMatches(v)
  data_manager.save("fighting_matches", v)
end

function data_manager.getFightingWins()
  return data_manager.load("fighting_wins", 0)
end

function data_manager.setFightingWins(v)
  data_manager.save("fighting_wins", v)
end

function data_manager.getFightingLosses()
  return data_manager.load("fighting_losses", 0)
end

function data_manager.setFightingLosses(v)
  data_manager.save("fighting_losses", v)
end

function data_manager.getUsername()
return data_manager.load("username", "Player")
end

function data_manager.setUsername(v)
data_manager.save("username", v) 
end

function data_manager.getUserUUID()
return data_manager.load("user_uuid", "")
end

function data_manager.setUserUUID(uuid)
data_manager.save("user_uuid", uuid)
end

function data_manager.isFirstRun()
return data_manager.load("is_first_run", true)
end

function data_manager.setFirstRun(v)
data_manager.save("is_first_run", v)
end

function data_manager.getAudioVersion()
return data_manager.load("downloaded_audio_version", "")
end

function data_manager.setAudioVersion(v)
data_manager.save("downloaded_audio_version", v)
end

function data_manager.getMusic()
 return data_manager.load("music_on", true) 
end
function data_manager.setMusic(v)
 data_manager.save("music_on", v) 
end


function data_manager.getVibrate()
return data_manager.load("vibrate_on", true)
end

function data_manager.setVibrate(v)
data_manager.save("vibrate_on", v)
end

function data_manager.clearAll() 
local currentAudioVer = data_manager.getAudioVersion()
local savedUsername = data_manager.getUsername() or ""
local savedUUID = data_manager.load("user_uuid", "")
local passwordLinked = data_manager.load("is_password_set", "false")
local savedProfileLinked = data_manager.load("is_profile_linked", "false")
local savedProfileSync = data_manager.load("last_profile_sync", "")
local savedAuthToken = data_manager.load("firebase_auth_token", "")
local savedRefreshToken = data_manager.load("firebase_refresh_token", "")
local savedTokenSaveTime = data_manager.load("token_save_time", "")
local savedLocalId = data_manager.load("firebase_local_id", "")
local savedAdWatchCount = data_manager.load("ad_watch_count", "0")
local savedAdFirstWatchTime = data_manager.load("ad_first_watch_time", "0")
local savedAdWatchTime = data_manager.load("ad_watch_time", "0")
local savedDailyGiftCount = data_manager.load("daily_gift_count", "0")
local savedLastGiftDate = data_manager.load("last_gift_date", "")
local savedDailyVoiceCount = data_manager.load("daily_voice_count", "0")
local savedVoiceLastDate = data_manager.load("voice_last_date", "")
local gameKeys = {"29", "ludo", "fightingGame", "multiplayer"}
local savedUnlockedData = {}
for _, key in ipairs(gameKeys) do
savedUnlockedData[key] = data_manager.load("unlocked_" .. key, "false")
end
  sharedPref.edit().clear().apply()
for key, status in pairs(savedUnlockedData) do
data_manager.save("unlocked_" .. key, status)
end
data_manager.save("ad_watch_count", savedAdWatchCount)
data_manager.save("ad_first_watch_time", savedAdFirstWatchTime)
data_manager.save("ad_watch_time", savedAdWatchTime)
data_manager.save("daily_gift_count", savedDailyGiftCount)
data_manager.save("last_gift_date", savedLastGiftDate)
data_manager.save("daily_voice_count", savedDailyVoiceCount)
data_manager.save("voice_last_date", savedVoiceLastDate)
data_manager.save("firebase_local_id", savedLocalId)
data_manager.save("token_save_time", savedTokenSaveTime)
data_manager.save("firebase_refresh_token", savedRefreshToken)
data_manager.save("firebase_auth_token", savedAuthToken)
data_manager.save("last_profile_sync", savedProfileSync)
data_manager.save("is_profile_linked", savedProfileLinked)
data_manager.save("is_password_set", passwordLinked)
data_manager.save("user_uuid", savedUUID)
data_manager.setUsername(savedUsername)
data_manager.setAudioVersion(currentAudioVer)
end

return data_manager