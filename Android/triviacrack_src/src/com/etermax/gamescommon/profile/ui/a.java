// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.profile.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.Toast;
import com.etermax.gamescommon.b.am;
import com.etermax.gamescommon.b.ao;
import com.etermax.gamescommon.b.ap;
import com.etermax.gamescommon.b.au;
import com.etermax.gamescommon.e;
import com.etermax.o;
import com.etermax.tools.navigation.b;
import com.etermax.tools.social.a.c;
import com.etermax.tools.social.a.g;
import java.io.PrintStream;

// Referenced classes of package com.etermax.gamescommon.profile.ui:
//            j, m, h, ProfileUserButtonsView, 
//            ProfileUserHeader, ProfileVersusView, l, ProfilePerformanceView, 
//            b

public abstract class a extends b
    implements j, m, com.etermax.tools.widget.b.b
{

    protected e a;
    protected com.etermax.gamescommon.login.datasource.a b;
    protected com.etermax.tools.f.a c;
    protected com.etermax.gamescommon.datasource.e d;
    protected com.etermax.tools.social.a.b e;
    protected com.etermax.gamescommon.social.a f;
    protected h g;
    protected ProfileUserHeader h;
    protected ProfileVersusView i;
    protected ProfileUserButtonsView j;
    protected ProfilePerformanceView k;
    protected View l;
    protected l m;

    public a()
    {
    }

    static void a(a a1)
    {
        a1.q();
    }

    private void q()
    {
        (new com.etermax.tools.i.a(getResources().getString(o.loading)) {

            final a a;

            static FragmentActivity a(_cls7 _pcls7)
            {
                return _pcls7.j();
            }

            static FragmentActivity b(_cls7 _pcls7)
            {
                return _pcls7.j();
            }

            static FragmentActivity c(_cls7 _pcls7)
            {
                return _pcls7.j();
            }

            public Object a()
            {
                return b();
            }

            protected void a(a a1, Exception exception)
            {
                super.a(a1, exception);
            }

            protected void a(a a1, c ac[])
            {
                int i1 = 0;
                super.a(a1, ac);
                a a2 = a;
                int j1 = o.try_out;
                Object aobj[] = new Object[1];
                aobj[0] = a.getString(o.app_name);
                String s = a2.getString(j1, aobj);
                String s1 = "";
                for (int k1 = Math.min(49, ac.length); i1 < k1; i1++)
                {
                    s1 = (new StringBuilder()).append(s1).append(ac[i1].b()).append(",").toString();
                }

                a.e.a(j(), s, s1, new g(this) {

                    final _cls7 a;

                    public void a()
                    {
                    }

                    public void a(String s)
                    {
                        if (_cls7.a(a) != null)
                        {
                            Toast.makeText(com.etermax.gamescommon.profile.ui._cls7.b(a), o.facebook_invite_failure, 0).show();
                            if (com.etermax.tools.g.a.a())
                            {
                                Toast.makeText(com.etermax.gamescommon.profile.ui._cls7.c(a), (new StringBuilder()).append("Facebook Error: ").append(s).toString(), 0).show();
                            }
                        }
                    }

                    public void b()
                    {
                    }

            
            {
                a = _pcls7;
                super();
            }
                });
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (c[])obj1);
            }

            public c[] b()
            {
                return a.e.k();
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    public com.etermax.gamescommon.profile.ui.b a()
    {
        return new com.etermax.gamescommon.profile.ui.b() {

            final a a;

            public void j_()
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    protected void a(long l1)
    {
        (new com.etermax.tools.i.a(getResources().getString(o.loading), l1) {

            final long a;
            final a b;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, Exception exception)
            {
                super.a(a1, exception);
            }

            protected void a(a a1, Void void1)
            {
                super.a(a1, void1);
                b.g.setFriend(true);
                b.j.setFriendState(b.g.isFriend());
                com.etermax.gamescommon.b.a a2 = new com.etermax.gamescommon.b.a();
                a2.a("profile");
                b.c.a(a2);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            public Void b()
            {
                b.d.a(a);
                return null;
            }

            
            {
                b = a.this;
                a = l1;
                super(s);
            }
        }).a(this);
    }

    public void a(Bundle bundle)
    {
    }

    protected void a(h h1)
    {
        g = h1;
        j.setFriendState(h1.isFriend());
        j.setFacebookFriendsIds(h1.getFacebookFriendsIds());
        h.a(this, h1);
        if (h1.getConsultedUserId() == b.e())
        {
            l.setVisibility(4);
            j.c();
            i.setVisibility(8);
            h.setOwnProfile(true);
        } else
        {
            l.setVisibility(0);
            j.b();
            i.setVisibility(0);
            h.setOwnProfile(false);
        }
        if (h1.isBlocked())
        {
            h.c();
        }
    }

    protected void a(String s)
    {
        ao ao1;
        if (s == null)
        {
            return;
        }
        ao1 = ao.c;
        if (g.getConsultedUserId() != b.e()) goto _L2; else goto _L1
_L1:
        ao1 = ao.a;
_L4:
        am am1 = new am(s, ao1);
        c.a(am1);
        return;
_L2:
        if (g.isFriend())
        {
            ao1 = ao.b;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void b()
    {
        j.setButtonsListener(this);
        c();
    }

    protected void b(long l1)
    {
        (new com.etermax.tools.i.a(getResources().getString(o.loading), l1) {

            final long a;
            final a b;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, Exception exception)
            {
                super.a(a1, exception);
            }

            protected void a(a a1, Void void1)
            {
                super.a(a1, void1);
                b.g.setFriend(false);
                b.j.setFriendState(b.g.isFriend());
                ap ap1 = new ap();
                ap1.a("profile");
                b.c.a(ap1);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            public Void b()
            {
                b.d.b(a);
                return null;
            }

            
            {
                b = a.this;
                a = l1;
                super(s);
            }
        }).a(this);
    }

    protected void c()
    {
        m = new l(l, this, c, a);
        l.setOnClickListener(new android.view.View.OnClickListener() {

            final a a;

            public void onClick(View view)
            {
                a.l.setPressed(true);
                a.m.b(a.g);
                a.m.a(new android.widget.PopupWindow.OnDismissListener(this) {

                    final _cls6 a;

                    public void onDismiss()
                    {
                        a.a.l.setPressed(false);
                    }

            
            {
                a = _pcls6;
                super();
            }
                });
            }

            
            {
                a = a.this;
                super();
            }
        });
        d();
    }

    protected void c(long l1)
    {
        (new com.etermax.tools.i.a(getResources().getString(o.loading), l1) {

            final long a;
            final a b;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, Exception exception)
            {
                super.a(a1, exception);
            }

            protected void a(a a1, Void void1)
            {
                super.a(a1, void1);
                b.g.setBlocked(true);
                b.h.c();
                com.etermax.gamescommon.b.b b1 = new com.etermax.gamescommon.b.b();
                b1.a("profile");
                b.c.a(b1);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            public Void b()
            {
                b.d.c(a);
                return null;
            }

            
            {
                b = a.this;
                a = l1;
                super(s);
            }
        }).a(this);
    }

    public void d()
    {
    }

    protected void d(long l1)
    {
        (new com.etermax.tools.i.a(getResources().getString(o.loading), l1) {

            final long a;
            final a b;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, Exception exception)
            {
                super.a(a1, exception);
            }

            protected void a(a a1, Void void1)
            {
                super.a(a1, void1);
                b.g.setBlocked(false);
                b.h.d();
                au au1 = new au();
                au1.a("profile");
                b.c.a(au1);
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((a)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (Void)obj1);
            }

            public Void b()
            {
                b.d.d(a);
                return null;
            }

            
            {
                b = a.this;
                a = l1;
                super(s);
            }
        }).a(this);
    }

    public void e()
    {
        a(g.getConsultedUserId());
    }

    public void f()
    {
        try
        {
            Bundle bundle = new Bundle();
            bundle.putInt("action", 0);
            int i1 = o.are_you_sure_unfriend;
            Object aobj[] = new Object[1];
            aobj[0] = g.getName();
            com.etermax.tools.widget.b.a a1 = com.etermax.tools.widget.b.a.a(getString(i1, aobj), getString(o.yes), getString(o.no), bundle);
            a1.setTargetFragment(this, 0);
            a1.show(getFragmentManager(), "unfriend_dialog_tag");
            return;
        }
        catch (Exception exception)
        {
            System.out.println("Set 'username' from Profile");
            exception.printStackTrace();
            return;
        }
    }

    public void g()
    {
        try
        {
            Bundle bundle = new Bundle();
            bundle.putInt("action", 1);
            int i1 = o.are_you_sure_block;
            Object aobj[] = new Object[1];
            aobj[0] = g.getName();
            com.etermax.tools.widget.b.a a1 = com.etermax.tools.widget.b.a.a(getString(i1, aobj), getString(o.yes), getString(o.no), bundle);
            a1.setTargetFragment(this, 0);
            a1.show(getFragmentManager(), "block_dialog_tag");
            return;
        }
        catch (Exception exception)
        {
            System.out.println("Set 'username' from Profile");
            exception.printStackTrace();
            return;
        }
    }

    public Object getDummyCallbacks()
    {
        return a();
    }

    public void h()
    {
        d(g.getConsultedUserId());
    }

    public void i()
    {
    }

    public void j()
    {
        f.a(getActivity(), new com.etermax.gamescommon.social.c() {

            final a a;

            public void a()
            {
                a.a(a);
            }

            public void b()
            {
            }

            public void c()
            {
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    public void k()
    {
        a(g.getConsultedUserId());
    }

    public void onAccept(Bundle bundle)
    {
        if (!bundle.containsKey("action")) goto _L2; else goto _L1
_L1:
        bundle.getInt("action");
        JVM INSTR tableswitch 0 1: default 36
    //                   0 37
    //                   1 51;
           goto _L2 _L3 _L4
_L2:
        return;
_L3:
        b(g.getConsultedUserId());
        return;
_L4:
        c(g.getConsultedUserId());
        return;
    }

    public void onActivityResult(int i1, int j1, Intent intent)
    {
        super.onActivityResult(i1, j1, intent);
        h.a(i1, j1, intent);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }
}
