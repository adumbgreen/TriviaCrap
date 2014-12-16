// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting;

import android.widget.BaseAdapter;
import com.etermax.gamescommon.social.i;

// Referenced classes of package com.etermax.gamescommon.gifting:
//            d

class a
    implements i
{

    final com.etermax.gamescommon.gifting.dto.sDTO.Gift a[];
    final d b;

    public void a()
    {
        for (int j = 0; j < a.length; j++)
        {
            a[j].setState(com.etermax.gamescommon.gifting.dto.sDTO.GiftState.READ);
        }

        b.o = 0;
        b.g.notifyDataSetChanged();
        b.a();
    }

    public void a(Exception exception)
    {
    }

    sDTO.Gift(d d1, com.etermax.gamescommon.gifting.dto.sDTO.Gift agift[])
    {
        b = d1;
        a = agift;
        super();
    }
}
