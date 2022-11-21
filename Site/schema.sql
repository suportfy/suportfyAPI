DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS issue_history;
DROP TABLE IF EXISTS rooms;
DROP TABLE IF EXISTS room_301;
DROP TABLE IF EXISTS room_302;
DROP TABLE IF EXISTS room_303;
DROP TABLE IF EXISTS room_401;
DROP TABLE IF EXISTS room_402;
DROP TABLE IF EXISTS room_404;
DROP TABLE IF EXISTS room_405;
DROP TABLE IF EXISTS room_406;
DROP TABLE IF EXISTS room_407;
DROP TABLE IF EXISTS room_408;
DROP TABLE IF EXISTS room_409;
DROP TABLE IF EXISTS room_411;
DROP TABLE IF EXISTS room_412;
DROP TABLE IF EXISTS inventory;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created DATE DEFAULT (datetime('now','localtime')),
    names TEXT NOT NULL,
    emails TEXT NOT NULL UNIQUE,
    passwords TEXT NOT NULL
);

CREATE TABLE issue_history (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created DATE DEFAULT (datetime('now','localtime')),
    names TEXT NOT NULL,
    mails TEXT NOT NULL,
    floors TEXT NOT NULL,
    rooms TEXT NOT NULL,
    pcs TEXT NOT NULL,
    subjects TEXT NOT NULL,
    descriptions TEXT NOT NULL
);

CREATE TABLE rooms (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created DATE DEFAULT (datetime('now','localtime')),
    floor TEXT NOT NULL,
    room TEXT NOT NULL UNIQUE
);

CREATE TABLE room_301 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_302 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_303 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_401 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_402 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_404 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_405 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_406 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_407 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_408 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_409 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_411 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE room_412 (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	name TEXT NOT NULL,
	general_status INTEGER NOT NULL DEFAULT 0,
	monitor_config TEXT NOT NULL DEFAULT 'EMPTY',
	monitor_status TEXT NOT NULL DEFAULT 'EMPTY',
	case_config TEXT NOT NULL DEFAULT 'EMPTY',
	case_status TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	keyboard_status TEXT NOT NULL DEFAULT 'EMPTY', 
	mouse_config TEXT NOT NULL DEFAULT 'EMPTY',
	mouse_status TEXT NOT NULL DEFAULT 'EMPTY',
	os_config TEXT NOT NULL DEFAULT 'EMPTY',
	os_status TEXT NOT NULL DEFAULT 'EMPTY',
	network_config TEXT NOT NULL DEFAULT 'EMPTY',
	network_status TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_config TEXT NOT NULL DEFAULT 'EMPTY',
	motherboard_status TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	cpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	memory_config TEXT NOT NULL DEFAULT 'EMPTY',
	memory_status TEXT NOT NULL DEFAULT 'EMPTY',
	storage_config TEXT NOT NULL DEFAULT 'EMPTY',
	storage_status TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_config TEXT NOT NULL DEFAULT 'EMPTY',
	gpu_status TEXT NOT NULL DEFAULT 'EMPTY',
	psu_config TEXT NOT NULL DEFAULT 'EMPTY',
	psu_status TEXT NOT NULL DEFAULT 'EMPTY',
	ip_config TEXT NOT NULL DEFAULT 'EMPTY',
	ip_status TEXT NOT NULL DEFAULT 'EMPTY',
	mac_config TEXT NOT NULL DEFAULT 'EMPTY',
	mac_status TEXT NOT NULL DEFAULT 'EMPTY'
);

CREATE TABLE inventory (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	last_alteration DATE DEFAULT (datetime('now','localtime')),
	type TEXT NOT NULL DEFAULT 'EMPTY',
	brand TEXT NOT NULL DEFAULT 'EMPTY',
	model TEXT NOT NULL UNIQUE DEFAULT 'EMPTY',
	amount TEXT NOT NULL DEFAULT 'EMPTY'
);