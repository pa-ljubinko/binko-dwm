#define CMDLENGTH 45
#define DELIMITER " | "
#define CLICKABLE_BLOCKS
#define LEADING_DELIMITER

const Block blocks[] = {
    //	BLOCK("cpubars",  2,   1),
    //	BLOCK("memory",   2,   2),
    //	BLOCK("battery",  5,   3),
    //	BLOCK("internet", 5,   4),
    BLOCK("weather", 900, 0), BLOCK("kb_layouts", 0, 4), BLOCK("volume", 0, 5),
    BLOCK("datetime", 1, 6),
    //	BLOCK("clock",    60,  7),
};
