#loader gamestagebooks
import mods.gamestagebooks.Book;

/* 
    Add a book that unlocks stage "te_stage"
    With a unlock title of "Thermal Machinery"
    The books item name being "Machine Manual"
    and the unlock icon being "thermalexpansion:frame"
    Colors take plain integers but if you want to use hex colors prefix with "0x"
 */
Book.addBook("te_stage", "Thermal Machinery", "Machine Manual", "thermalexpansion:frame", 0x2271f9);