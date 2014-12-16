// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.support.v4.app.Fragment;
import com.etermax.gamescommon.datasource.e;
import com.etermax.gamescommon.gifting.dto.GiftActionDTO;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.gamescommon.social:
//            h, i

class b extends a
{

    final Long a;
    final i b;
    final h c;

    public Object a()
    {
        return b();
    }

    protected void a(Fragment fragment, Exception exception)
    {
        super.a(fragment, exception);
        if (b != null)
        {
            b.a(exception);
        }
    }

    protected void a(Fragment fragment, Void void1)
    {
        super.a(fragment, void1);
        if (b != null)
        {
            b.a();
        }
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((Fragment)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((Fragment)obj, (Void)obj1);
    }

    public Void b()
    {
        GiftActionDTO giftactiondto = new GiftActionDTO();
        giftactiondto.setAction(com.etermax.gamescommon.gifting.dto.ActionDTO.Action.ACCEPT);
        if (a != null)
        {
            c.b.a(a.longValue(), giftactiondto);
        } else
        {
            giftactiondto.setAcceptAction(com.etermax.gamescommon.gifting.dto.ActionDTO.Action.SEND);
            c.b.a(giftactiondto);
        }
        return null;
    }

    e(h h1, Long long1, i j)
    {
        c = h1;
        a = long1;
        b = j;
        super();
    }
}
