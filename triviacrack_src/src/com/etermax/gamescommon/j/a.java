// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.j;

import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.etermax.o;
import com.etermax.tools.a.c.b;
import com.etermax.tools.i.f;
import com.etermax.tools.social.a.g;

// Referenced classes of package com.etermax.gamescommon.j:
//            b

public abstract class a extends com.etermax.tools.i.a
{

    protected com.etermax.tools.social.a.b d;
    protected boolean e;

    public a(com.etermax.tools.social.a.b b1)
    {
        e = false;
        d = b1;
    }

    public a(String s, com.etermax.tools.social.a.b b1)
    {
        super(s);
        e = false;
        d = b1;
    }

    static boolean a(a a1)
    {
        return a1.b();
    }

    static boolean a(a a1, Object obj)
    {
        return a1.f.a(obj);
    }

    private boolean b()
    {
        return a(i());
    }

    public final Object a()
    {
        Object obj;
        try
        {
            obj = d();
        }
        catch (b b1)
        {
            if (b1.c() == 607)
            {
                throw new com.etermax.tools.social.a.a();
            } else
            {
                throw b1;
            }
        }
        return obj;
    }

    protected void a(Object obj, Exception exception)
    {
        boolean flag = exception instanceof com.etermax.tools.social.a.a;
        if (flag)
        {
            d.c();
            b(false);
        }
        super.a(obj, exception);
        if (flag)
        {
            f();
        }
    }

    protected void a(String s)
    {
        try
        {
            Toast.makeText(j(), o.error_fb_authentication_failed, 0).show();
        }
        catch (NullPointerException nullpointerexception)
        {
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        if (s.length() > 0)
        {
            Toast.makeText(j(), s, 0).show();
        }
    }

    public boolean a(Object obj)
    {
        FragmentActivity fragmentactivity = e(obj);
        d.a(fragmentactivity, e, new g(obj) {

            final Object a;
            final a b;

            public void a()
            {
                a.a(b, a);
            }

            public void a(String s)
            {
                b.a(s);
            }

            public void b()
            {
                b.c();
            }

            
            {
                b = a.this;
                a = obj;
                super();
            }
        });
        return true;
    }

    protected void c()
    {
    }

    protected abstract Object d();

    protected void f()
    {
        com.etermax.gamescommon.j.b.a(j(), this).show(j().getSupportFragmentManager(), "fb_dialog");
    }
}
