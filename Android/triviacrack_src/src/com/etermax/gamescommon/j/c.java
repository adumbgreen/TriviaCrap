// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.j;

import android.support.v4.app.FragmentActivity;
import android.widget.Toast;
import com.etermax.gamescommon.b.ac;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.login.datasource.d;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.o;
import com.etermax.tools.social.a.b;
import com.etermax.tools.social.a.j;

// Referenced classes of package com.etermax.gamescommon.j:
//            a, e, d

public class c extends com.etermax.gamescommon.j.a
{

    private com.etermax.gamescommon.login.datasource.c a;
    private a b;
    private com.etermax.tools.f.a c;
    private String f;

    public c(String s, b b1, com.etermax.gamescommon.login.datasource.c c1, a a1)
    {
        super(s, b1);
        a = c1;
        b = a1;
    }

    public c(String s, b b1, com.etermax.gamescommon.login.datasource.c c1, a a1, com.etermax.tools.f.a a2, String s1)
    {
        super(s, b1);
        a = c1;
        b = a1;
        c = a2;
        f = s1;
    }

    static a a(c c1)
    {
        return c1.b;
    }

    private void a(FragmentActivity fragmentactivity, boolean flag)
    {
        j j1 = j.a(fragmentactivity);
        d d1 = com.etermax.gamescommon.login.datasource.d.b(fragmentactivity);
        (new com.etermax.gamescommon.j.a(fragmentactivity.getString(o.connecting), j1, d1, j1, flag) {

            final com.etermax.gamescommon.login.datasource.c a;
            final b b;
            final boolean c;
            final c f;

            protected void a(FragmentActivity fragmentactivity1, UserDTO userdto)
            {
                super.a(fragmentactivity1, userdto);
                f.a(c);
                f.a(fragmentactivity1);
                com.etermax.gamescommon.j.c.a(f).b(true);
                com.etermax.gamescommon.j.c.a(f).c(true);
            }

            protected void a(FragmentActivity fragmentactivity1, Exception exception)
            {
                b(false);
                super.a(fragmentactivity1, exception);
                f.a(fragmentactivity1, b);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((FragmentActivity)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((FragmentActivity)obj, (UserDTO)obj1);
            }

            protected UserDTO b()
            {
                return a.a("Facebook", b.i(), b.j(), b.f(), c);
            }

            protected Object d()
            {
                return b();
            }

            
            {
                f = c.this;
                a = c2;
                b = b2;
                c = flag;
                super(s, b1);
            }
        }).a(fragmentactivity);
    }

    static void a(c c1, FragmentActivity fragmentactivity, boolean flag)
    {
        c1.a(fragmentactivity, flag);
    }

    private void a(String s, String s1, String s2)
    {
        if (c != null)
        {
            ac ac1 = new ac();
            ac1.a(s);
            ac1.b(s1);
            ac1.c(s2);
        }
    }

    protected void a(FragmentActivity fragmentactivity)
    {
        String s = f;
        String s1;
        if (b.r())
        {
            s1 = "guest";
        } else
        {
            s1 = "email";
        }
        a("fb_account_no_linked", s, s1);
        Toast.makeText(fragmentactivity, fragmentactivity.getString(o.facebook_link_success), 0).show();
    }

    protected void a(FragmentActivity fragmentactivity, b b1)
    {
        b1.d();
        Toast.makeText(fragmentactivity, fragmentactivity.getString(o.facebook_link_failed), 0).show();
    }

    protected final void a(Object obj, UserDTO userdto)
    {
        super.a(obj, userdto);
        if (userdto == null)
        {
            b();
            return;
        }
        if (userdto.getId() == null)
        {
            com.etermax.gamescommon.j.e.a(j(), b.f(), this).show(d(obj), "ask_link_fb_dialog");
            return;
        } else
        {
            com.etermax.gamescommon.j.d.a(j(), userdto.getEmail(), b.f(), this).show(d(obj), "keep_link_fb_dialog");
            return;
        }
    }

    protected void a(Object obj, Exception exception)
    {
        super.a(obj, exception);
        a(j(), d);
    }

    protected volatile void a(Object obj, Object obj1)
    {
        a(obj, (UserDTO)obj1);
    }

    protected void a(boolean flag)
    {
    }

    protected void b()
    {
        String s = f;
        String s1;
        if (b.r())
        {
            s1 = "guest";
        } else
        {
            s1 = "email";
        }
        a("fb_account_already_linked", s, s1);
    }

    protected void c()
    {
        super.c();
        d.d();
        e();
    }

    protected Object d()
    {
        return g();
    }

    protected void e()
    {
    }

    protected final UserDTO g()
    {
        UserDTO userdto = a.b("Facebook", d.i(), d.f());
        if (userdto != null && userdto.getId() != null && userdto.getId().equals(Long.valueOf(b.e())))
        {
            userdto = null;
        }
        return userdto;
    }
}
