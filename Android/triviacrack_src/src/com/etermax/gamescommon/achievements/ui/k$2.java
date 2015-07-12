// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import com.etermax.gamescommon.datasource.e;
import com.etermax.tools.i.a;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            k, l

class b extends a
{

    final com.etermax.gamescommon.datasource.dto.evementDTO.Status a;
    final l b;
    final k c;

    public Object a()
    {
        return b();
    }

    protected void a(FragmentActivity fragmentactivity, Exception exception)
    {
        super.a(fragmentactivity, exception);
    }

    protected void a(FragmentActivity fragmentactivity, AchievementDTO aachievementdto[])
    {
        super.a(fragmentactivity, aachievementdto);
        if (a == com.etermax.gamescommon.datasource.dto.evementDTO.Status.PENDING)
        {
            if (aachievementdto.length > 0)
            {
                com.etermax.gamescommon.achievements.ui.k.a(c, com.etermax.gamescommon.achievements.ui.k.a(c, aachievementdto));
            }
            return;
        } else
        {
            b.a(com.etermax.gamescommon.achievements.ui.k.a(c, aachievementdto));
            return;
        }
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((FragmentActivity)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((FragmentActivity)obj, (AchievementDTO[])obj1);
    }

    public AchievementDTO[] b()
    {
        return c.b.a(a);
    }

    ntDTO.Status(k k1, String s, com.etermax.gamescommon.datasource.dto.evementDTO.Status status, l l1)
    {
        c = k1;
        a = status;
        b = l1;
        super(s);
    }
}
