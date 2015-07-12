// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting;

import android.widget.BaseAdapter;
import com.etermax.gamescommon.gifting.dto.GiftsDTO;
import com.etermax.gamescommon.social.i;

// Referenced classes of package com.etermax.gamescommon.gifting:
//            d

class a
    implements i
{

    final d a;

    public void a()
    {
        com.etermax.gamescommon.gifting.dto.sDTO.Gift agift[] = a.h.getGifts();
        if (agift != null && a.n > 0)
        {
            for (int j = 0; j < agift.length; j++)
            {
                agift[j].setState(com.etermax.gamescommon.gifting.dto.sDTO.GiftState.READ);
            }

            a.n = 0;
            a.k = true;
            a.g.notifyDataSetChanged();
        }
    }

    public void a(Exception exception)
    {
    }

    GiftsDTO.Gift(d d1)
    {
        a = d1;
        super();
    }
}
