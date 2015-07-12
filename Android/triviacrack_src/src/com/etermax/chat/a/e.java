// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.etermax.chat.a.a.f;
import com.etermax.gamescommon.login.datasource.b;
import java.util.ArrayList;
import org.a.a.b.c;

// Referenced classes of package com.etermax.chat.a:
//            a, f

public final class e extends a
{

    private static e e;
    private Context d;
    private Handler f;

    private e(Context context)
    {
        f = new Handler(Looper.getMainLooper());
        d = context;
    }

    public static e a(Context context)
    {
        if (e == null)
        {
            c c1 = c.a(null);
            e = new e(context.getApplicationContext());
            e.g();
            c.a(c1);
        }
        return e;
    }

    static void a(e e1)
    {
        e1.a.d();
    }

    static void a(e e1, int i)
    {
        e1.a.a(i);
    }

    static void a(e e1, com.etermax.chat.a.f f1)
    {
        e1.com.etermax.chat.a.a.b(f1);
    }

    static void a(e e1, ArrayList arraylist)
    {
        e1.a.a(arraylist);
    }

    static void b(e e1, com.etermax.chat.a.f f1)
    {
        e1.a.a(f1);
    }

    private void g()
    {
        c = com.etermax.chat.ui.adapter.c.a(d);
        b = com.etermax.chat.a.a.f.a(d);
        a = com.etermax.gamescommon.login.datasource.b.a(d);
        a();
    }

    public void a(int i)
    {
        f.post(new Runnable(i) {

            final int a;
            final e b;

            public void run()
            {
                e.a(b, a);
            }

            
            {
                b = e.this;
                a = i;
                super();
            }
        });
    }

    public void a(com.etermax.chat.a.f f1)
    {
        f.post(new Runnable(f1) {

            final com.etermax.chat.a.f a;
            final e b;

            public void run()
            {
                com.etermax.chat.a.e.b(b, a);
            }

            
            {
                b = e.this;
                a = f1;
                super();
            }
        });
    }

    public void a(ArrayList arraylist)
    {
        f.post(new Runnable(arraylist) {

            final ArrayList a;
            final e b;

            public void run()
            {
                e.a(b, a);
            }

            
            {
                b = e.this;
                a = arraylist;
                super();
            }
        });
    }

    public void b(com.etermax.chat.a.f f1)
    {
        f.post(new Runnable(f1) {

            final com.etermax.chat.a.f a;
            final e b;

            public void run()
            {
                e.a(b, a);
            }

            
            {
                b = e.this;
                a = f1;
                super();
            }
        });
    }

    public void d()
    {
        f.post(new Runnable() {

            final e a;

            public void run()
            {
                e.a(a);
            }

            
            {
                a = e.this;
                super();
            }
        });
    }
}
