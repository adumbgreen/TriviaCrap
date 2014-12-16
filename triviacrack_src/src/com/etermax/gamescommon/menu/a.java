// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu;

import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.b.am;
import com.etermax.gamescommon.b.an;
import com.etermax.gamescommon.b.ao;
import com.etermax.gamescommon.b.i;
import com.etermax.gamescommon.b.n;
import com.etermax.gamescommon.datasource.dto.ChatHeaderDTO;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.menu.a.a.g;
import com.etermax.gamescommon.menu.a.b;
import com.etermax.gamescommon.menu.a.c;
import com.etermax.gamescommon.menu.a.d;
import com.etermax.gamescommon.menu.a.m;
import com.etermax.gamescommon.menu.navigation.NavigationPanel;
import com.etermax.gamescommon.menu.navigation.e;
import com.etermax.gamescommon.menu.navigation.f;
import com.etermax.h;
import com.etermax.o;

// Referenced classes of package com.etermax.gamescommon.menu:
//            b, c

public class a
{

    public static e i[];
    FragmentActivity a;
    m b;
    com.etermax.gamescommon.datasource.e c;
    d d;
    com.etermax.tools.f.a e;
    NavigationPanel f;
    com.etermax.gamescommon.menu.a.a g;
    Handler h;

    public a()
    {
        h = new Handler();
    }

    protected void a()
    {
        if (a == null)
        {
            throw new IllegalStateException("SlidingMenusHelper debe ser inyectado en un Activity que extienda de FragmentActivity");
        }
        if (!(a instanceof com.etermax.tools.navigation.f))
        {
            throw new IllegalStateException("SlidingMenusHelper debe ser inyectado en un Activity que implemente SlidingMenusHost");
        } else
        {
            return;
        }
    }

    public void a(com.etermax.gamescommon.menu.b b1)
    {
        g = com.etermax.gamescommon.menu.a.a.a(a, new b(b1) {

            final com.etermax.gamescommon.menu.b a;
            final a b;

            public boolean a(com.etermax.gamescommon.menu.a.a.a a1)
            {
                if (a1.a() != g.e)
                {
                    ((com.etermax.tools.navigation.f)b.a).g();
                }
                b.h.postDelayed(new Runnable(this, a1) {

                    final com.etermax.gamescommon.menu.a.a.a a;
                    final _cls1 b;

                    public void run()
                    {
                        class _cls4
                        {

                            static final int a[];
                            static final int b[];

                            static 
                            {
                                b = new int[com.etermax.gamescommon.menu.a.a.g.values().length];
                                try
                                {
                                    b[g.a.ordinal()] = 1;
                                }
                                catch (NoSuchFieldError nosuchfielderror) { }
                                try
                                {
                                    b[g.b.ordinal()] = 2;
                                }
                                catch (NoSuchFieldError nosuchfielderror1) { }
                                a = new int[com.etermax.gamescommon.menu.navigation.f.values().length];
                                try
                                {
                                    a[f.d.ordinal()] = 1;
                                }
                                catch (NoSuchFieldError nosuchfielderror2) { }
                                try
                                {
                                    a[f.b.ordinal()] = 2;
                                }
                                catch (NoSuchFieldError nosuchfielderror3) { }
                                try
                                {
                                    a[f.a.ordinal()] = 3;
                                }
                                catch (NoSuchFieldError nosuchfielderror4) { }
                                try
                                {
                                    a[f.c.ordinal()] = 4;
                                }
                                catch (NoSuchFieldError nosuchfielderror5) { }
                                try
                                {
                                    a[f.i.ordinal()] = 5;
                                }
                                catch (NoSuchFieldError nosuchfielderror6) { }
                                try
                                {
                                    a[f.m.ordinal()] = 6;
                                }
                                catch (NoSuchFieldError nosuchfielderror7) { }
                                try
                                {
                                    a[f.n.ordinal()] = 7;
                                }
                                catch (NoSuchFieldError nosuchfielderror8) { }
                                try
                                {
                                    a[f.g.ordinal()] = 8;
                                }
                                catch (NoSuchFieldError nosuchfielderror9) { }
                                try
                                {
                                    a[f.o.ordinal()] = 9;
                                }
                                catch (NoSuchFieldError nosuchfielderror10) { }
                                try
                                {
                                    a[f.p.ordinal()] = 10;
                                }
                                catch (NoSuchFieldError nosuchfielderror11) { }
                                try
                                {
                                    a[f.j.ordinal()] = 11;
                                }
                                catch (NoSuchFieldError nosuchfielderror12)
                                {
                                    return;
                                }
                            }
                        }

                        com.etermax.gamescommon.menu.a.a.h h1;
                        switch (com.etermax.gamescommon.menu._cls4.b[a.a().ordinal()])
                        {
                        default:
                            return;

                        case 1: // '\001'
                            com.etermax.gamescommon.menu.a.a.b b1 = (com.etermax.gamescommon.menu.a.a.b)a;
                            b.a.a(b1.c().getUser());
                            return;

                        case 2: // '\002'
                            h1 = (com.etermax.gamescommon.menu.a.a.h)a;
                            break;
                        }
                        b.a.c(h1.c());
                    }

            
            {
                b = _pcls1;
                a = a1;
                super();
            }
                }, 250L);
                return false;
            }

            
            {
                b = a.this;
                a = b1;
                super();
            }
        }, new c(b1) {

            final com.etermax.gamescommon.menu.b a;
            final a b;

            public void a(UserDTO userdto)
            {
                ((com.etermax.tools.navigation.f)b.a).g();
                String s = an.j.toString();
                ao ao1;
                am am1;
                if (userdto.isFavorite())
                {
                    ao1 = ao.b;
                } else
                {
                    ao1 = ao.c;
                }
                am1 = new am(s, ao1);
                b.e.a(am1);
                b.h.postDelayed(new Runnable(this, userdto) {

                    final UserDTO a;
                    final _cls2 b;

                    public void run()
                    {
                        b.a.c(a);
                    }

            
            {
                b = _pcls2;
                a = userdto;
                super();
            }
                }, 250L);
            }

            public void b(UserDTO userdto)
            {
                ((com.etermax.tools.navigation.f)b.a).g();
                b.h.postDelayed(new Runnable(this, userdto) {

                    final UserDTO a;
                    final _cls2 b;

                    public void run()
                    {
                        b.a.d(a);
                    }

            
            {
                b = _pcls2;
                a = userdto;
                super();
            }
                }, 250L);
            }

            public void c(UserDTO userdto)
            {
                a.b(userdto);
            }

            public void d(UserDTO userdto)
            {
                ((com.etermax.tools.navigation.f)b.a).g();
                com.etermax.gamescommon.b.e e1 = new com.etermax.gamescommon.b.e(com.etermax.gamescommon.b.h.b);
                if (userdto.isFavorite())
                {
                    e1.a(i.a);
                } else
                {
                    e1.a(i.b);
                }
                e1.a(com.etermax.gamescommon.b.g.g);
                b.e.a(e1);
                b.h.postDelayed(new Runnable(this, userdto) {

                    final UserDTO a;
                    final _cls2 b;

                    public void run()
                    {
                        b.a.a(a);
                    }

            
            {
                b = _pcls2;
                a = userdto;
                super();
            }
                }, 250L);
            }

            
            {
                b = a.this;
                a = b1;
                super();
            }
        });
        ((com.etermax.tools.navigation.f)a).b(g, g);
    }

    public void a(String s, com.etermax.gamescommon.menu.navigation.d d1, com.etermax.gamescommon.menu.c c1, e ae[])
    {
        f = NavigationPanel.a(a, ae, d1, new com.etermax.gamescommon.menu.navigation.b(c1) {

            final com.etermax.gamescommon.menu.c a;
            final a b;

            public boolean a(com.etermax.gamescommon.menu.navigation.c c2)
            {
                ((com.etermax.tools.navigation.f)b.a).g();
                b.h.postDelayed(new Runnable(this, c2) {

                    final com.etermax.gamescommon.menu.navigation.c a;
                    final _cls3 b;

                    public void run()
                    {
                        switch (_cls4.a[a.c().ordinal()])
                        {
                        default:
                            return;

                        case 1: // '\001'
                            b.a.e();
                            return;

                        case 2: // '\002'
                            b.a.c();
                            return;

                        case 3: // '\003'
                            b.a.b();
                            return;

                        case 4: // '\004'
                            b.a.d();
                            return;

                        case 6: // '\006'
                            b.a.f();
                            return;

                        case 7: // '\007'
                            b.a.i_();
                            return;

                        case 5: // '\005'
                            b.a.i();
                            return;

                        case 8: // '\b'
                            b.a.j();
                            return;

                        case 9: // '\t'
                            b.a.h();
                            return;

                        case 10: // '\n'
                            b.a.k();
                            return;

                        case 11: // '\013'
                            b.a.l();
                            break;
                        }
                    }

            
            {
                b = _pcls3;
                a = c1;
                super();
            }
                }, 300L);
                return false;
            }

            
            {
                b = a.this;
                a = c1;
                super();
            }
        });
        ((com.etermax.tools.navigation.f)a).a(f, null);
    }

    public void b()
    {
        d();
        c();
    }

    public void c()
    {
        if (f != null)
        {
            f.a();
        }
    }

    public void d()
    {
        if (g != null)
        {
            g.a();
        }
    }

    public void e()
    {
        if (g != null)
        {
            g.b();
        }
    }

    static 
    {
        e ae[] = new e[13];
        ae[0] = new e(f.a, n.g, true);
        ae[1] = new e(f.d, n.j, true);
        ae[2] = new e(f.e, n.m, true);
        ae[3] = new e(f.f, n.n, true);
        ae[4] = new e(f.b, n.i, true);
        ae[5] = new e(f.c, n.l, true);
        ae[6] = new e(f.h, n.o, false);
        ae[7] = new e(f.k, false);
        ae[8] = new e(f.l, "com.etermax.preguntados.", o.preguntados_app_name, h.dashboard_games_preguntados, n.s, false);
        ae[9] = new e(f.l, "com.etermax.triviafans.fcb.", o.fcbarcelona_app_name, h.dashboard_games_fcbarcelona, n.t, false);
        ae[10] = new e(f.l, "com.etermax.bingocrack.", o.bingocrack_app_name, h.dashboard_games_bingocrack, n.r, false);
        ae[11] = new e(f.l, "com.etermax.wordcrack.", o.wordcrack_app_name, h.dashboard_games_mezcladitos, n.p, false);
        ae[12] = new e(f.l, "com.etermax.apalabrados.", o.apalabrados_app_name, h.dashboard_games_apalabrados, n.q, false);
        i = ae;
    }
}
