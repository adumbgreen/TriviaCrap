// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.support.v4.app.FragmentActivity;
import com.etermax.gamescommon.b.ac;
import com.etermax.gamescommon.b.ae;
import com.etermax.gamescommon.b.af;
import com.etermax.gamescommon.b.l;
import com.etermax.gamescommon.b.y;
import com.etermax.gamescommon.b.z;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.o;
import com.etermax.tools.f.a;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.b.i;
import com.mobileapptracker.h;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            m, k

public abstract class j extends b
    implements y
{

    protected c a;
    protected com.etermax.tools.b.a b;
    protected com.etermax.tools.social.a.b c;
    protected com.etermax.gamescommon.login.datasource.a d;
    protected a e;
    private z f;

    public j()
    {
    }

    static void a(j j1, String s, String s1, String s2)
    {
        j1.a(s, s1, s2);
    }

    private void a(String s, String s1, String s2)
    {
        if (e != null)
        {
            ac ac1 = new ac();
            ac1.a(s);
            ac1.b(s1);
            ac1.c(s2);
        }
    }

    static Object b(j j1)
    {
        return j1.mCallbacks;
    }

    static Object c(j j1)
    {
        return j1.mCallbacks;
    }

    protected void a(l l)
    {
        if (e != null)
        {
            e.a(l);
        }
    }

    public void a(z z)
    {
        f = z;
    }

    protected void a(j j1)
    {
        (new com.etermax.gamescommon.j.a(j1.getString(o.authenticating), c) {

            final j a;

            protected void a(j j2, UserDTO userdto)
            {
                super.a(j2, userdto);
                if (j2.g() == z.c)
                {
                    a.a(new af("login_fb_autolink_existing_user"));
                }
                a.a(a.h());
                j j3 = a;
                String s;
                h h1;
                if (a.d.r())
                {
                    s = "guest";
                } else
                {
                    s = "email";
                }
                com.etermax.gamescommon.login.ui.j.a(j3, "fb_account_no_linked", "login", s);
                ((m)com.etermax.gamescommon.login.ui.j.c(j2)).a_();
                h1 = com.mobileapptracker.h.a();
                h1.d(a.d.f());
                h1.f(a.d.g());
                h1.e(String.valueOf(a.d.e()));
                h1.c(a.d.j());
                h1.a("registration");
            }

            protected void a(j j2, Exception exception)
            {
                if (((com.etermax.gamescommon.login.datasource.b.b)exception).c() == 614)
                {
                    com.etermax.gamescommon.login.ui.k.a(j()).b(j());
                    return;
                } else
                {
                    super.a(j2, exception);
                    return;
                }
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((j)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((j)obj, (UserDTO)obj1);
            }

            protected UserDTO b()
            {
                String s = d.i();
                return a.a.a("Facebook", s, d.f());
            }

            protected void c()
            {
                a.a(new ae());
            }

            protected Object d()
            {
                return b();
            }

            
            {
                a = j.this;
                super(s, b1);
            }
        }).a(this);
    }

    public z g()
    {
        return f;
    }

    public Object getDummyCallbacks()
    {
        return k();
    }

    protected abstract l h();

    protected abstract l i();

    protected void j()
    {
        (new com.etermax.gamescommon.j.a(getString(o.connecting), c) {

            final j a;

            private int c(Exception exception)
            {
                if (!(exception instanceof com.etermax.gamescommon.login.datasource.b.b)) goto _L2; else goto _L1
_L1:
                ((com.etermax.gamescommon.login.datasource.b.b)exception).c();
                JVM INSTR lookupswitch 3: default 48
            //                           303: 52
            //                           608: 50
            //                           609: 52;
                   goto _L2 _L3 _L4 _L3
_L2:
                return -1;
_L4:
                return 1;
_L3:
                return 2;
            }

            protected void a(j j1, UserDTO userdto)
            {
                super.a(j1, userdto);
                ((m)com.etermax.gamescommon.login.ui.j.b(j1)).a_();
                a.a(a.i());
            }

            protected void a(j j1, Exception exception)
            {
                if (!(exception instanceof com.etermax.gamescommon.login.datasource.b.b) || ((com.etermax.gamescommon.login.datasource.b.b)exception).c() != 614) goto _L2; else goto _L1
_L1:
                b(false);
                com.etermax.gamescommon.login.ui.k.a(j()).b(j());
_L4:
                super.a(j1, exception);
                return;
_L2:
                if (!(exception instanceof com.etermax.tools.social.a.a))
                {
                    break; /* Loop/switch isn't completed */
                }
                d.d();
                if (true) goto _L4; else goto _L3
_L3:
                int l = c(exception);
                boolean flag;
                if (l == -1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                b(flag);
                switch (l)
                {
                case 1: // '\001'
                    j1.a(z.c);
                    a.a(j1);
                    break;

                case 2: // '\002'
                    String s = j1.getString(o.dialog_account_to_link);
                    Object aobj[] = new Object[1];
                    aobj[0] = j1.getString(o.app_name);
                    i i1 = com.etermax.tools.widget.b.i.a(String.format(s, aobj), j1.getString(o.link_account), j1.getString(o.no_create_a_new_account_instead_02));
                    i1.setTargetFragment(j1, 0);
                    i1.show(j1.getActivity().getSupportFragmentManager(), "link_dialog");
                    break;
                }
                if (true) goto _L4; else goto _L5
_L5:
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((j)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((j)obj, (UserDTO)obj1);
            }

            protected UserDTO b()
            {
                String s = d.i();
                return a.a.a("Facebook", s, d.f(), d.j());
            }

            protected void c()
            {
                a.a(new ae());
            }

            protected Object d()
            {
                return b();
            }

            
            {
                a = j.this;
                super(s, b1);
            }
        }).a(this);
    }

    public m k()
    {
        return new m() {

            final j a;

            public void a_()
            {
            }

            public void b()
            {
            }

            public void c()
            {
            }

            public void d()
            {
            }

            public void e()
            {
            }

            
            {
                a = j.this;
                super();
            }
        };
    }
}
