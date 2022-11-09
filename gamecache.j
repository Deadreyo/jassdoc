// Creates a new or reads in an existing game cache file stored

// in the current campaign profile dir

//

native  ReloadGameCachesFromDisk takes nothing returns boolean


/**
@note You cannot create more than 255 gamecaches.
In multiplayer the existing game caches are not considered, so you can get a
full 255 new game caches.

In singleplayer, when you call `InitGameCache`, it looks in the Campaigns.w3v
file if a `gamecache` with that name already exists, if yes, it will create a
`gamecache` handle (you can get multiple handles for the same game cache, and
that will only count once to the 255 limit in the current game), if no and it
does not exist yet in the current game either, it will take a new slot among
the 255.
*/
native  InitGameCache    takes string campaignFile returns gamecache

native  SaveGameCache    takes gamecache whichCache returns boolean



native  StoreInteger					takes gamecache cache, string missionKey, string key, integer value returns nothing

native  StoreReal						takes gamecache cache, string missionKey, string key, real value returns nothing

native  StoreBoolean					takes gamecache cache, string missionKey, string key, boolean value returns nothing

native  StoreUnit						takes gamecache cache, string missionKey, string key, unit whichUnit returns boolean

native  StoreString						takes gamecache cache, string missionKey, string key, string value returns boolean



native SyncStoredInteger        takes gamecache cache, string missionKey, string key returns nothing

native SyncStoredReal           takes gamecache cache, string missionKey, string key returns nothing

native SyncStoredBoolean        takes gamecache cache, string missionKey, string key returns nothing

native SyncStoredUnit           takes gamecache cache, string missionKey, string key returns nothing

native SyncStoredString         takes gamecache cache, string missionKey, string key returns nothing



native  HaveStoredInteger					takes gamecache cache, string missionKey, string key returns boolean

native  HaveStoredReal						takes gamecache cache, string missionKey, string key returns boolean

native  HaveStoredBoolean					takes gamecache cache, string missionKey, string key returns boolean

native  HaveStoredUnit						takes gamecache cache, string missionKey, string key returns boolean

native  HaveStoredString					takes gamecache cache, string missionKey, string key returns boolean



native  FlushGameCache						takes gamecache cache returns nothing

native  FlushStoredMission					takes gamecache cache, string missionKey returns nothing

native  FlushStoredInteger					takes gamecache cache, string missionKey, string key returns nothing

native  FlushStoredReal						takes gamecache cache, string missionKey, string key returns nothing

native  FlushStoredBoolean					takes gamecache cache, string missionKey, string key returns nothing

native  FlushStoredUnit						takes gamecache cache, string missionKey, string key returns nothing

native  FlushStoredString					takes gamecache cache, string missionKey, string key returns nothing



/**
Returns `0` if the specified value's data is not found in the cache.
*/
native  GetStoredInteger				takes gamecache cache, string missionKey, string key returns integer

/**
Returns `0.0` if the specified value's data is not found in the cache.
*/
native  GetStoredReal					takes gamecache cache, string missionKey, string key returns real

/**
Returns `false` if the specified value's data is not found in the cache.
*/
native  GetStoredBoolean				takes gamecache cache, string missionKey, string key returns boolean

/**
Returns `""` if the specified value's data is not found in the cache.
*/
native  GetStoredString					takes gamecache cache, string missionKey, string key returns string

/**
Returns `null` if the specified value's data is not found in the cache.
*/
native  RestoreUnit						takes gamecache cache, string missionKey, string key, player forWhichPlayer, real x, real y, real facing returns unit
