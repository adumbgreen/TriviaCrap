// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.a;

import android.view.View;
import com.etermax.gamescommon.menu.a.a.a;
import com.etermax.gamescommon.menu.a.b.i;

public class m
{

    a a;
    View b;

    public m()
    {
    }

    public a a()
    {
        return a;
    }

    public void a(View view)
    {
        b = view;
    }

    public void a(a a1, View view)
    {
        if (b != null && (b instanceof i) && ((i)b).b())
        {
            ((i)b).c();
        }
        a = a1;
        b = view;
    }

    public void b()
    {
        b = null;
        a = null;
    }
}
