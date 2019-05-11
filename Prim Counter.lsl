default
{
    state_entry() {
        llSetText("Click me to count your prims!\n(prim count displayed in public chat)",<0,1,0>,1);
    }

    touch_start(integer total_number)
    {
        key who = llDetectedKey(0);
        llSay(0, "Please wait for prim count");
        list COUNTS = llGetParcelPrimOwners(llGetPos());
        integer TempIndex = llListFindList(COUNTS,[who]);
        if ( TempIndex >= 0 ) {
            llSay(0,llKey2Name(who)+" has "+llList2String(COUNTS,TempIndex+1)+" prims ");
        } else {
             llSay(0,llKey2Name(who)+" has no prims here");
        }
    }
}

// MIT LICENSE
// Copyright (c) 2014, MJ Dunn <mjdunnonline@gmail.com>