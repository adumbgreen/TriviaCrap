// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.duelmode.adapter;

import com.etermax.preguntados.datasource.dto.enums.DuelGamePlayerStatus;

// Referenced classes of package com.etermax.preguntados.ui.game.duelmode.adapter:
//            b

class .RewardType
{

    static final int a[];
    static final int b[];

    static 
    {
        b = new int[DuelGamePlayerStatus.values().length];
        try
        {
            b[DuelGamePlayerStatus.ENDED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            b[DuelGamePlayerStatus.EXPIRED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            b[DuelGamePlayerStatus.PENDING.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            b[DuelGamePlayerStatus.REJECTED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        a = new int[com.etermax.gamescommon.datasource.dto.evementDTO.RewardType.values().length];
        try
        {
            a[com.etermax.gamescommon.datasource.dto.evementDTO.RewardType.COINS.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            a[com.etermax.gamescommon.datasource.dto.evementDTO.RewardType.EXTRA_SHOTS.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            a[com.etermax.gamescommon.datasource.dto.evementDTO.RewardType.LIVES.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            a[com.etermax.gamescommon.datasource.dto.evementDTO.RewardType.LIVES_LIMIT.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror7)
        {
            return;
        }
    }
}
