/* 
    -- Loading w/o priority --
    Alphabetical, subfolders treated as files, so all the files in subfolder "b"
    would be read before the file "c.zs" in root
*/

    # ex.
    # root
        # a.zs -> loads 1st
        # c.zs -> loads 4th
        # b/
            # r.zs -> loads 2nd
            # x.zs -> loads 3rd

    # Order -> A R X C

/*
    -- Loading w priority --
    Files with the priority preprocessor gets read first, higher priority gets higher loadprio and
    if 2 files share priority they are read alphabetically.

    The files without the priority preprocessor gets a priority of 0, so files with a 
    negative priority number gets read after the files with no priority.
*/
    # ex.
    # root
        # a.zs (Priority -5) -> loads 4th
        # c.zs (Priority 10) -> loads 1st
        # b/
            # r.zs -> loads 2nd
            # x.zs -> loads 3rd

    # Order -> C R X A
	
#priority 999