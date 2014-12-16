// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard.a;

import com.etermax.gamescommon.dashboard.a.b.b;
import com.etermax.gamescommon.dashboard.a.c.f;

public abstract class a
    implements b, f
{

    public a()
    {
    }

    public int getSectionType()
    {
        if (!isMyTurn()) goto _L2; else goto _L1
_L1:
        if (!isActive() && !isPendingApproval()) goto _L4; else goto _L3
_L3:
        byte byte0 = 0;
_L6:
        if (isEnded())
        {
            return 3;
        } else
        {
            return byte0;
        }
_L2:
        if (isActive())
        {
            byte0 = 2;
            continue; /* Loop/switch isn't completed */
        }
        if (isPendingApproval())
        {
            byte0 = 1;
            continue; /* Loop/switch isn't completed */
        }
_L4:
        byte0 = 3;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected abstract boolean isActive();

    protected abstract boolean isEnded();

    public boolean isImageTileLeft()
    {
        boolean flag;
label0:
        {
            if (!isEnded() || !userWon())
            {
                int i = getSectionType();
                flag = false;
                if (i != 0)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    protected abstract boolean isMyTurn();

    protected abstract boolean isPendingApproval();

    protected abstract boolean userWon();
}
