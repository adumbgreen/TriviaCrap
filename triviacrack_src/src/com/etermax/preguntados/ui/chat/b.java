// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.chat;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.chat.a.e;
import com.etermax.chat.a.f;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.menu.a.j;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.chat:
//            a

public final class b extends com.etermax.preguntados.ui.chat.a
    implements a
{

    private final c o = new c();
    private View p;
    private Handler q;

    public b()
    {
        q = new Handler(Looper.getMainLooper());
    }

    static void a(b b1)
    {
        b1.com.etermax.chat.ui.a.j();
    }

    static void a(b b1, f f)
    {
        b1.com.etermax.chat.ui.a.a(f);
    }

    private void b(Bundle bundle)
    {
        n = com.etermax.gamescommon.menu.a.j.a(getActivity());
        a = e.a(getActivity());
        j = e.a(getActivity());
        m = i.a(getActivity());
        l = com.etermax.tools.f.d.c(getActivity());
        k = com.etermax.gamescommon.datasource.d.a(getActivity());
        n = com.etermax.gamescommon.menu.a.j.a(getActivity());
    }

    static void b(b b1)
    {
        b1.com.etermax.chat.ui.a.g();
    }

    static void c(b b1)
    {
        b1.com.etermax.chat.ui.a.d();
    }

    public void a(f f)
    {
        q.post(new Runnable(f) {

            final f a;
            final b b;

            public void run()
            {
                com.etermax.preguntados.ui.chat.b.a(b, a);
            }

            
            {
                b = b.this;
                a = f;
                super();
            }
        });
    }

    public void d()
    {
        q.post(new Runnable() {

            final b a;

            public void run()
            {
                com.etermax.preguntados.ui.chat.b.c(a);
            }

            
            {
                a = b.this;
                super();
            }
        });
    }

    public View findViewById(int k)
    {
        if (p == null)
        {
            return null;
        } else
        {
            return p.findViewById(k);
        }
    }

    public void g()
    {
        q.post(new Runnable() {

            final b a;

            public void run()
            {
                b.b(a);
            }

            
            {
                a = b.this;
                super();
            }
        });
    }

    public void j()
    {
        q.post(new Runnable() {

            final b a;

            public void run()
            {
                com.etermax.preguntados.ui.chat.b.a(a);
            }

            
            {
                a = b.this;
                super();
            }
        });
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(o);
        b(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        p = super.onCreateView(layoutinflater, viewgroup, bundle);
        return p;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        o.a(this);
    }
}
