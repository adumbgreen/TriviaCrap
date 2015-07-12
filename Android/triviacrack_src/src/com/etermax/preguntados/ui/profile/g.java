// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.profile;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.etermax.gamescommon.datasource.i;
import com.etermax.gamescommon.h;
import com.etermax.gamescommon.profile.ui.ProfilePerformanceView;
import com.etermax.gamescommon.profile.ui.ProfileUserButtonsView;
import com.etermax.gamescommon.profile.ui.ProfileUserHeader;
import com.etermax.gamescommon.profile.ui.ProfileVersusView;
import com.etermax.preguntados.datasource.e;
import com.etermax.tools.f.d;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.profile:
//            e, h, ProfileLevelView, ProfileRankingsView

public final class g extends com.etermax.preguntados.ui.profile.e
    implements a, b
{

    private final c w = new c();
    private View x;
    private Handler y;

    public g()
    {
        y = new Handler(Looper.getMainLooper());
    }

    private void A()
    {
        Bundle bundle = getArguments();
        if (bundle != null)
        {
            if (bundle.containsKey("mConsultedUser"))
            {
                n = bundle.getLong("mConsultedUser");
            }
            if (bundle.containsKey("mFrom"))
            {
                o = bundle.getString("mFrom");
            }
        }
    }

    static void a(g g1)
    {
        g1.e.s();
    }

    private void b(Bundle bundle)
    {
        org.a.a.b.c.a(this);
        A();
        f = com.etermax.gamescommon.social.g.a(getActivity());
        a = h.a(getActivity());
        b = com.etermax.gamescommon.login.datasource.b.a(getActivity());
        c = com.etermax.tools.f.d.c(getActivity());
        d = i.a(getActivity());
        e = j.a(getActivity());
        q = com.etermax.preguntados.c.a.c.a(getActivity());
        p = com.etermax.preguntados.datasource.e.a(getActivity());
    }

    static void b(g g1)
    {
        g1.e.v();
    }

    static void c(g g1)
    {
        g1.e.u();
    }

    static void d(g g1)
    {
        g1.e.x();
    }

    static void e(g g1)
    {
        g1.e.y();
    }

    static void f(g g1)
    {
        g1.e.t();
    }

    static void g(g g1)
    {
        g1.e.w();
    }

    public static com.etermax.preguntados.ui.profile.h z()
    {
        return new com.etermax.preguntados.ui.profile.h();
    }

    public void a(a a1)
    {
        h = (ProfileUserHeader)a1.findViewById(0x7f0a00fc);
        k = (ProfilePerformanceView)a1.findViewById(0x7f0a03d2);
        j = (ProfileUserButtonsView)a1.findViewById(0x7f0a00fd);
        i = (ProfileVersusView)a1.findViewById(0x7f0a03d0);
        l = a1.findViewById(0x7f0a0398);
        t = (ProfileVersusView)a1.findViewById(0x7f0a03d4);
        r = (ImageView)a1.findViewById(0x7f0a0399);
        s = (ProfileVersusView)a1.findViewById(0x7f0a03d3);
        u = (ProfileLevelView)a1.findViewById(0x7f0a03ce);
        v = (ProfileRankingsView)a1.findViewById(0x7f0a03cf);
        b();
        r();
    }

    public View findViewById(int k)
    {
        if (x == null)
        {
            return null;
        } else
        {
            return x.findViewById(k);
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(w);
        b(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        x = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (x == null)
        {
            x = layoutinflater.inflate(0x7f03004c, viewgroup, false);
        }
        return x;
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        w.a(this);
    }

    public void s()
    {
        y.post(new Runnable() {

            final g a;

            public void run()
            {
                com.etermax.preguntados.ui.profile.g.a(a);
            }

            
            {
                a = g.this;
                super();
            }
        });
    }

    public void t()
    {
        y.post(new Runnable() {

            final g a;

            public void run()
            {
                g.f(a);
            }

            
            {
                a = g.this;
                super();
            }
        });
    }

    public void u()
    {
        y.post(new Runnable() {

            final g a;

            public void run()
            {
                com.etermax.preguntados.ui.profile.g.c(a);
            }

            
            {
                a = g.this;
                super();
            }
        });
    }

    public void v()
    {
        y.post(new Runnable() {

            final g a;

            public void run()
            {
                com.etermax.preguntados.ui.profile.g.b(a);
            }

            
            {
                a = g.this;
                super();
            }
        });
    }

    public void w()
    {
        y.post(new Runnable() {

            final g a;

            public void run()
            {
                g.g(a);
            }

            
            {
                a = g.this;
                super();
            }
        });
    }

    public void x()
    {
        y.post(new Runnable() {

            final g a;

            public void run()
            {
                com.etermax.preguntados.ui.profile.g.d(a);
            }

            
            {
                a = g.this;
                super();
            }
        });
    }

    public void y()
    {
        y.post(new Runnable() {

            final g a;

            public void run()
            {
                com.etermax.preguntados.ui.profile.g.e(a);
            }

            
            {
                a = g.this;
                super();
            }
        });
    }
}
