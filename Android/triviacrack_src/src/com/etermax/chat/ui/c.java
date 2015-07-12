// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.chat.a.e;
import com.etermax.chat.a.f;
import com.etermax.gamescommon.menu.a.j;
import org.a.a.b.a;

// Referenced classes of package com.etermax.chat.ui:
//            a

public final class c extends com.etermax.chat.ui.a
    implements a
{

    private final org.a.a.b.c j = new org.a.a.b.c();
    private View k;
    private Handler l;

    public c()
    {
        l = new Handler(Looper.getMainLooper());
    }

    private void a(Bundle bundle)
    {
        c = com.etermax.gamescommon.menu.a.j.a(getActivity());
        a = e.a(getActivity());
    }

    static void a(c c1)
    {
        c1.a.d();
    }

    static void a(c c1, f f)
    {
        c1.com.etermax.chat.ui.a.a(f);
    }

    static void b(c c1)
    {
        c1.com.etermax.chat.ui.a.j();
    }

    static void c(c c1)
    {
        c1.a.g();
    }

    public void a(f f)
    {
        l.post(new Runnable(f) {

            final f a;
            final c b;

            public void run()
            {
                com.etermax.chat.ui.c.a(b, a);
            }

            
            {
                b = c.this;
                a = f;
                super();
            }
        });
    }

    public void d()
    {
        l.post(new Runnable() {

            final c a;

            public void run()
            {
                com.etermax.chat.ui.c.a(a);
            }

            
            {
                a = c.this;
                super();
            }
        });
    }

    public View findViewById(int i)
    {
        if (k == null)
        {
            return null;
        } else
        {
            return k.findViewById(i);
        }
    }

    public void g()
    {
        l.post(new Runnable() {

            final c a;

            public void run()
            {
                c.c(a);
            }

            
            {
                a = c.this;
                super();
            }
        });
    }

    public void j()
    {
        l.post(new Runnable() {

            final c a;

            public void run()
            {
                c.b(a);
            }

            
            {
                a = c.this;
                super();
            }
        });
    }

    public void onCreate(Bundle bundle)
    {
        org.a.a.b.c c1 = org.a.a.b.c.a(j);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        k = super.onCreateView(layoutinflater, viewgroup, bundle);
        return k;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        j.a(this);
    }
}
