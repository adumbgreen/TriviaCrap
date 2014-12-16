// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import com.etermax.gamescommon.b.ad;
import com.etermax.gamescommon.login.datasource.b.b;
import com.etermax.o;
import com.etermax.tools.i.c;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            s

class a extends c
{

    final String a;
    final s b;

    public Object a()
    {
        return b();
    }

    protected void a(s s1, Exception exception)
    {
        if (exception.getClass() == com/etermax/gamescommon/login/datasource/b/b && ((b)exception).c() == 610)
        {
            s.a(b, new ad("login_reset_password", "result", "pass_already_sent"));
        }
    }

    protected void a(s s1, Void void1)
    {
        super.a(s1, void1);
        com.etermax.tools.widget.b.c.b(s1.getString(o.recover_password_success), s1.getString(o.ok)).show(s1.getFragmentManager(), "reset_ok_dialog");
        s.a(b, new ad("login_reset_password", "result", "password_sent"));
    }

    protected volatile void a(Object obj, Exception exception)
    {
        a((s)obj, exception);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a((s)obj, (Void)obj1);
    }

    public Void b()
    {
        return b.a.f(a);
    }

    rce.c(s s1, String s2, String s3)
    {
        b = s1;
        a = s3;
        super(s2);
    }
}
