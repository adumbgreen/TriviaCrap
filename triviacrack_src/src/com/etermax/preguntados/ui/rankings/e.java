// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.widget.Toast;
import com.etermax.f;
import com.etermax.gamescommon.social.a;
import com.etermax.gamescommon.social.c;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.preguntados.datasource.dto.RankingsDTO;
import com.etermax.preguntados.sharing.ShareView;
import com.etermax.preguntados.sharing.t;
import com.etermax.preguntados.ui.rankings.adapter.d;
import com.etermax.tools.navigation.b;
import com.etermax.tools.social.a.g;
import com.etermax.widget.slidingtab.SlidingTabLayout;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            g, h, c, f

public class e extends b
    implements com.etermax.tools.widget.b.b
{

    com.etermax.preguntados.datasource.d a;
    a b;
    com.etermax.tools.social.a.b c;
    SlidingTabLayout d;
    ViewPager e;
    protected d f;

    public e()
    {
    }

    private void a(RankingsDTO rankingsdto)
    {
        f = new d(getActivity().getSupportFragmentManager(), getApplicationContext(), rankingsdto);
        e.setAdapter(f);
        d.a(k.rankings_tab_header, i.tab_header, 0);
        d.setViewPager(e);
        d.setBackgroundColor(getResources().getColor(f.rankings_tab_background));
        SlidingTabLayout slidingtablayout = d;
        int ai[] = new int[1];
        ai[0] = getResources().getColor(f.rankings_tab_indicator);
        slidingtablayout.setSelectedIndicatorColors(ai);
        SlidingTabLayout slidingtablayout1 = d;
        int ai1[] = new int[1];
        ai1[0] = getResources().getColor(f.rankings_tab_divider);
        slidingtablayout1.setDividerColors(ai1);
    }

    static void a(e e1)
    {
        e1.f();
    }

    static void a(e e1, RankingsDTO rankingsdto)
    {
        e1.a(rankingsdto);
    }

    public static Fragment b()
    {
        return com.etermax.preguntados.ui.rankings.g.e().a();
    }

    static void b(e e1)
    {
        e1.h();
    }

    static Context c(e e1)
    {
        return e1.getApplicationContext();
    }

    static Context d(e e1)
    {
        return e1.getApplicationContext();
    }

    private void e()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final e a;

            public Object a()
            {
                return b();
            }

            protected void a(e e1, RankingsDTO rankingsdto)
            {
                super.a(e1, rankingsdto);
                com.etermax.preguntados.ui.rankings.e.a(a, rankingsdto);
            }

            protected void a(e e1, Exception exception)
            {
                if ((exception instanceof com.etermax.preguntados.datasource.a.b) && ((com.etermax.preguntados.datasource.a.b)exception).c() == 2014)
                {
                    b(false);
                    com.etermax.preguntados.ui.rankings.e.a(a);
                }
                super.a(e1, exception);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((e)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((e)obj, (RankingsDTO)obj1);
            }

            public RankingsDTO b()
            {
                return a.a.C();
            }

            
            {
                a = e.this;
                super(s);
            }
        }).a(this);
    }

    private void f()
    {
        com.etermax.preguntados.ui.rankings.c c1 = com.etermax.preguntados.ui.rankings.c.a();
        c1.setTargetFragment(this, 351);
        c1.show(getActivity().getSupportFragmentManager(), "invite_or_cancel");
    }

    private void g()
    {
        b.a(getActivity(), new c() {

            final e a;

            public void a()
            {
                com.etermax.preguntados.ui.rankings.e.b(a);
            }

            public void b()
            {
                Toast.makeText(com.etermax.preguntados.ui.rankings.e.c(a), a.getString(o.facebook_link_failed), 1).show();
            }

            public void c()
            {
                a.getActivity().finish();
            }

            
            {
                a = e.this;
                super();
            }
        });
    }

    private void h()
    {
        (new com.etermax.tools.i.a(getString(o.loading)) {

            final e a;

            static FragmentActivity a(_cls4 _pcls4)
            {
                return _pcls4.j();
            }

            static FragmentActivity b(_cls4 _pcls4)
            {
                return _pcls4.j();
            }

            static FragmentActivity c(_cls4 _pcls4)
            {
                return _pcls4.j();
            }

            static FragmentActivity d(_cls4 _pcls4)
            {
                return _pcls4.j();
            }

            static FragmentActivity e(_cls4 _pcls4)
            {
                return _pcls4.j();
            }

            public Object a()
            {
                return b();
            }

            protected void a(e e1, com.etermax.tools.social.a.c ac[])
            {
                int j = 0;
                super.a(e1, ac);
                e e2 = a;
                int l = o.try_out;
                Object aobj[] = new Object[1];
                aobj[0] = a.getString(o.app_name);
                String s = e2.getString(l, aobj);
                String s1 = "";
                for (int i1 = Math.min(49, ac.length); j < i1; j++)
                {
                    s1 = (new StringBuilder()).append(s1).append(ac[j].b()).append(",").toString();
                }

                a.c.a(j(), s, s1, new g(this) {

                    final _cls4 a;

                    public void a()
                    {
                        Context context = com.etermax.preguntados.ui.rankings.e.d(a.a);
                        e e1 = a.a;
                        int j = o.not_enough_friends_2;
                        Object aobj[] = new Object[1];
                        aobj[0] = a.a.getString(o.weekly_ranking);
                        Toast.makeText(context, e1.getString(j, aobj), 1).show();
                        com.etermax.preguntados.ui.rankings._cls4.d(a).finish();
                    }

                    public void a(String s)
                    {
                        if (com.etermax.preguntados.ui.rankings._cls4.a(a) != null)
                        {
                            Toast.makeText(com.etermax.preguntados.ui.rankings._cls4.b(a), o.facebook_invite_failure, 0).show();
                            com.etermax.preguntados.ui.rankings._cls4.c(a).finish();
                        }
                    }

                    public void b()
                    {
                        _cls4.e(a).finish();
                    }

            
            {
                a = _pcls4;
                super();
            }
                });
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((e)obj, (com.etermax.tools.social.a.c[])obj1);
            }

            public com.etermax.tools.social.a.c[] b()
            {
                return a.c.k();
            }

            
            {
                a = e.this;
                super(s);
            }
        }).a(this);
    }

    public com.etermax.preguntados.ui.rankings.f a()
    {
        return new com.etermax.preguntados.ui.rankings.f() {

            final e a;

            public void a(ShareView shareview)
            {
            }

            
            {
                a = e.this;
                super();
            }
        };
    }

    public void a(Bundle bundle)
    {
        getActivity().finish();
    }

    protected void c()
    {
        e();
    }

    public void d()
    {
        boolean flag = true;
        if (f != null)
        {
            com.etermax.preguntados.sharing.s s;
            if (e.getCurrentItem() != flag)
            {
                flag = false;
            }
            s = t.a(getApplicationContext(), f.a(), flag);
            ((com.etermax.preguntados.ui.rankings.f)mCallbacks).a(s);
        }
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void onAccept(Bundle bundle)
    {
        g();
    }
}
