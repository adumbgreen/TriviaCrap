// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.a;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.facebook.Request;
import org.a.a.a;
import org.a.a.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.tools.social.a:
//            b

public final class j extends com.etermax.tools.social.a.b
{

    private static j c;
    private Context b;
    private Handler d;

    private j(Context context)
    {
        d = new Handler(Looper.getMainLooper());
        b = context;
    }

    public static j a(Context context)
    {
        if (c == null)
        {
            c c1 = org.a.a.b.c.a(null);
            c = new j(context.getApplicationContext());
            c.l();
            org.a.a.b.c.a(c1);
        }
        return c;
    }

    static void a(j j1)
    {
        j1.b.d();
    }

    static void a(j j1, Uri uri)
    {
        j1.com.etermax.tools.social.a.b.a(uri);
    }

    static void a(j j1, Request request)
    {
        j1.com.etermax.tools.social.a.b.a(request);
    }

    private void l()
    {
        a = b;
        a();
    }

    public void a(Uri uri)
    {
        org.a.a.a.a(new b("", 0, "", uri) {

            final Uri a;
            final j b;

            public void a()
            {
                try
                {
                    com.etermax.tools.social.a.j.a(b, a);
                    return;
                }
                catch (Throwable throwable)
                {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
                }
            }

            
            {
                b = j.this;
                a = uri;
                super(s, i, s1);
            }
        });
    }

    public void a(Request request)
    {
        d.post(new Runnable(request) {

            final Request a;
            final j b;

            public void run()
            {
                com.etermax.tools.social.a.j.a(b, a);
            }

            
            {
                b = j.this;
                a = request;
                super();
            }
        });
    }

    public void d()
    {
        org.a.a.a.a(new b("", 0, "") {

            final j a;

            public void a()
            {
                try
                {
                    com.etermax.tools.social.a.j.a(a);
                    return;
                }
                catch (Throwable throwable)
                {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
                }
            }

            
            {
                a = j.this;
                super(s, i, s1);
            }
        });
    }
}
