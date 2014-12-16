// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.j;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.etermax.a.a;
import com.etermax.o;
import com.etermax.tools.i.c;

public abstract class f extends c
{

    protected com.etermax.tools.social.twitter.a b;

    public f(String s, com.etermax.tools.social.twitter.a a1)
    {
        super(s);
        b = a1;
    }

    static boolean a(f f1, Object obj)
    {
        return f1.com.etermax.tools.i.f.a(obj);
    }

    public final Object a()
    {
        return c();
    }

    protected void a(Context context, String s)
    {
        if (context != null)
        {
            j().runOnUiThread(new Runnable(context, s) {

                final Context a;
                final String b;
                final f c;

                public void run()
                {
                    Toast.makeText(a, o.error_tw_authentication_failed, 0).show();
                    if (b != null && b.length() > 0)
                    {
                        Toast.makeText(a, b, 0).show();
                    }
                }

            
            {
                c = f.this;
                a = context;
                b = s;
                super();
            }
            });
        }
    }

    protected void a(Object obj, Exception exception)
    {
        super.a(obj, exception);
    }

    public boolean a(Object obj)
    {
        FragmentActivity fragmentactivity = e(obj);
        com.etermax.a.a.c("TwitterAsyncTask", "execute");
        b.a(fragmentactivity, new com.etermax.tools.social.twitter.c(fragmentactivity, obj) {

            final FragmentActivity a;
            final Object b;
            final f c;

            public void a()
            {
                com.etermax.gamescommon.j.f.a(c, b);
            }

            public void a(String s)
            {
                c.b.b();
                c.a(a, s);
            }

            
            {
                c = f.this;
                a = fragmentactivity;
                b = obj;
                super();
            }
        });
        return true;
    }

    protected abstract Object c();
}
