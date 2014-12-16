// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.d;

import android.widget.BaseAdapter;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.o;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.preguntados.d:
//            f, g, d

public class c extends com.etermax.gamescommon.gifting.c
{

    a f;

    public c()
    {
    }

    public static c a(ArrayList arraylist)
    {
        return com.etermax.preguntados.d.f.d().a(arraylist).a();
    }

    static ArrayList a(c c1)
    {
        return c1.b;
    }

    static ArrayList b(c c1)
    {
        return c1.c;
    }

    static ArrayList c(c c1)
    {
        return c1.b;
    }

    static ArrayList d(c c1)
    {
        return c1.c;
    }

    static ArrayList e(c c1)
    {
        return c1.b;
    }

    static ArrayList f(c c1)
    {
        return c1.c;
    }

    protected BaseAdapter a(List list)
    {
        return new d(this, getActivity(), list);
    }

    protected String a()
    {
        return getString(o.push_gifting_tittle);
    }

    protected String b()
    {
        return (new StringBuilder()).append(f.k()).append(" ").append(getString(o.user_sent_spin)).toString();
    }

    public com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType c()
    {
        return com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType.EXTRA_SHOT;
    }
}
