// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.social;

import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.b.q;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.g;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.o;
import com.etermax.tools.social.a.b;

// Referenced classes of package com.etermax.gamescommon.social:
//            b, c, d

public class a
{

    protected static FragmentActivity g;
    private static com.etermax.gamescommon.social.c h;
    protected com.etermax.tools.b.a a;
    protected b b;
    protected c c;
    protected com.etermax.gamescommon.login.datasource.a d;
    protected e e;
    protected com.etermax.tools.f.a f;

    public a()
    {
    }

    static void a(a a1)
    {
        a1.e();
    }

    static com.etermax.gamescommon.social.c d()
    {
        return h;
    }

    private void e()
    {
        if (g == null)
        {
            return;
        } else
        {
            (new com.etermax.gamescommon.j.c(g.getString(o.loading), b, c, d) {

                final a a;

                protected void a(FragmentActivity fragmentactivity)
                {
                    super.a(fragmentactivity);
                    if (a.d() != null)
                    {
                        a.d().a();
                    }
                    a.c();
                }

                protected void a(FragmentActivity fragmentactivity, b b1)
                {
                    super.a(fragmentactivity, b1);
                    if (a.d() != null)
                    {
                        a.d().b();
                    }
                    a.c();
                }

                protected void a(String s)
                {
                    super.a(s);
                    if (a.d() != null)
                    {
                        a.d().b();
                    }
                    a.c();
                }

                protected void b()
                {
                    super.b();
                    if (a.d() != null)
                    {
                        a.d().a();
                    }
                    a.c();
                }

                protected void e()
                {
                    super.e();
                    if (a.d() != null)
                    {
                        a.d().c();
                    }
                    a.c();
                }

            
            {
                a = a.this;
                super(s, b1, c1, a2);
            }
            }).a(g);
            return;
        }
    }

    protected void a()
    {
        if (g != null)
        {
            com.etermax.gamescommon.social.b.a(g.getString(o.facebook_not_logged_in), g.getString(o.login), g.getString(o.no_thanks), this).show(g.getSupportFragmentManager(), "display_fb_login");
        }
    }

    public void a(FragmentActivity fragmentactivity, com.etermax.gamescommon.social.c c1)
    {
        g = fragmentactivity;
        h = c1;
        if (!b.g())
        {
            if (d.j() != null)
            {
                if (b.h())
                {
                    e();
                    return;
                } else
                {
                    a();
                    return;
                }
            } else
            {
                b();
                return;
            }
        } else
        {
            h.a();
            return;
        }
    }

    public void a(FragmentActivity fragmentactivity, String s, d d1)
    {
        long l = System.currentTimeMillis();
        if (l - e.a(g.t, 0L) >= 0x240c8400L)
        {
            e.b(g.t, l);
            if (!b.b())
            {
                b.a(fragmentactivity, true, new com.etermax.tools.social.a.g(s, d1) {

                    final String a;
                    final d b;
                    final a c;

                    public void a()
                    {
                        q q1 = new q(false, a);
                        c.f.a(q1);
                        b.a();
                    }

                    public void a(String s1)
                    {
                        q q1 = new q(true, a);
                        c.f.a(q1);
                        b.a();
                    }

                    public void b()
                    {
                        q q1 = new q(true, a);
                        c.f.a(q1);
                        b.a();
                    }

            
            {
                c = a.this;
                a = s;
                b = d1;
                super();
            }
                });
                return;
            } else
            {
                d1.a();
                return;
            }
        } else
        {
            d1.a();
            return;
        }
    }

    protected void b()
    {
        if (g != null)
        {
            String s = g.getString(o.facebook_not_linked);
            Object aobj[] = new Object[1];
            aobj[0] = g.getString(o.app_name);
            com.etermax.gamescommon.social.b.a(String.format(s, aobj), g.getString(o.link), g.getString(o.cancel), this).show(g.getSupportFragmentManager(), "display_fb_link");
        }
    }

    public void c()
    {
        g = null;
        h = null;
    }
}
