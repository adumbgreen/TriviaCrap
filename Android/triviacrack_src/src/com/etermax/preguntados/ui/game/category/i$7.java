// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import com.etermax.preguntados.datasource.dto.enums.GameEvent;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            i

class GameEvent
{

    static final int a[];

    static 
    {
        a = new int[GameEvent.values().length];
        try
        {
            a[GameEvent.DUEL_STARTED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[GameEvent.FINAL_DUEL_ENDED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[GameEvent.DUEL_ENDED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[GameEvent.FINAL_DUEL_STARTED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[GameEvent.CROWNS_EXCEDED.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4)
        {
            return;
        }
    }
}
