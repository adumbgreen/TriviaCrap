// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.datasource.dto.MessagingPanelSearchDTO;
import com.etermax.gamescommon.datasource.e;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.gamescommon.menu.a:
//            d, f

public class g extends a
{

    final d a;
    private String b;
    private f c;
    private boolean d;

    public g(d d1, String s, f f1)
    {
        a = d1;
        super();
        b = s;
        c = f1;
    }

    public Object a()
    {
        if (d)
        {
            return null;
        } else
        {
            return a.a.a(b);
        }
    }

    protected void a(FragmentActivity fragmentactivity, MessagingPanelSearchDTO messagingpanelsearchdto)
    {
        if (d)
        {
            return;
        } else
        {
            super.a(fragmentactivity, messagingpanelsearchdto);
            c.a(messagingpanelsearchdto);
            return;
        }
    }

    protected void a(FragmentActivity fragmentactivity, Exception exception)
    {
        if (d)
        {
            return;
        } else
        {
            super.a(fragmentactivity, exception);
            c.a(false);
            return;
        }
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((FragmentActivity)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((FragmentActivity)obj, (MessagingPanelSearchDTO)obj1);
    }

    public void b()
    {
        d = true;
    }
}
