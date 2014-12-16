// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.i;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.etermax.o;

// Referenced classes of package com.etermax.tools.i:
//            c, b

public abstract class a extends c
{

    public a()
    {
    }

    public a(String s)
    {
        super(s);
    }

    protected void a(Exception exception, String s)
    {
        if (exception instanceof com.etermax.tools.a.c.a)
        {
            a(s, j().getString(o.ok));
            return;
        } else
        {
            super.a(exception, s);
            return;
        }
    }

    protected void a(String s, String s1)
    {
        if (j() != null && !j().isFinishing())
        {
            b b1 = (b)j().getSupportFragmentManager().findFragmentByTag("auth_dialog");
            if (b1 == null)
            {
                b1 = b.a(s, s1);
                b1.setCancelable(false);
            }
            if (!b1.isAdded())
            {
                b1.show(j().getSupportFragmentManager(), "auth_dialog");
            }
        }
    }
}
