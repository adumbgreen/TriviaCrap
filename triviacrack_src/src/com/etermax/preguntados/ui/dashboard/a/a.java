// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.dashboard.a;

import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.etermax.gamescommon.b.p;
import com.etermax.gamescommon.social.h;
import com.etermax.i;
import com.etermax.o;
import com.etermax.preguntados.a.c.c;
import com.etermax.preguntados.datasource.d;
import com.etermax.preguntados.datasource.dto.LivesDTO;
import com.etermax.preguntados.ui.dashboard.DashboardActivity;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.preguntados.ui.dashboard.a:
//            c, d, b

public class a extends b
{

    com.etermax.tools.f.a a;
    com.etermax.gamescommon.social.a b;
    com.etermax.gamescommon.login.datasource.a c;
    h d;
    d e;
    com.etermax.preguntados.b.a f;
    ImageView g;
    private CountDownTimer h;

    public a()
    {
    }

    public static Fragment a()
    {
        return com.etermax.preguntados.ui.dashboard.a.c.e().a();
    }

    static void a(a a1)
    {
        a1.g();
    }

    static void a(a a1, String s)
    {
        a1.b(s);
    }

    private void b(String s)
    {
        p p1 = new p();
        p1.a(s);
        a.a(p1);
    }

    private void e()
    {
        if (h != null)
        {
            h.cancel();
        }
        h = new CountDownTimer(1000 * e.q().getNextIncrement(), 250L) {

            final a a;

            public void onFinish()
            {
                ((TextView)a.getView().findViewById(i.get_more_lives_remaining_time_textview)).setText(a.getString(o.full));
            }

            public void onTick(long l)
            {
                String s = com.etermax.preguntados.h.c.a(l);
                ((TextView)a.getView().findViewById(i.get_more_lives_remaining_time_textview)).setText(s);
            }

            
            {
                a = a.this;
                super(l, l1);
            }
        };
        h.start();
    }

    private void f()
    {
        if (getActivity() instanceof DashboardActivity)
        {
            ((DashboardActivity)getActivity()).x();
        }
    }

    private void g()
    {
        String s;
        if (c.j() == null)
        {
            int k = o.user_request;
            Object aobj1[] = new Object[1];
            aobj1[0] = (new StringBuilder()).append("@").append(c.g()).toString();
            s = getString(k, aobj1);
        } else
        {
            int j = o.user_request;
            Object aobj[] = new Object[1];
            aobj[0] = c.k();
            s = getString(j, aobj);
        }
        d.a(this, s, com.etermax.gamescommon.gifting.dto.GiftActionDTO.Action.ASK, 0, com.etermax.gamescommon.gifting.dto.GiftItemDTO.GiftType.LIFE, new com.etermax.gamescommon.social.i() {

            final a a;

            public void a()
            {
            }

            public void a(Exception exception)
            {
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    public void a(String s)
    {
        c c1 = new c();
        c1.a(s);
        a.a(c1);
    }

    public com.etermax.preguntados.ui.dashboard.a.b b()
    {
        return new com.etermax.preguntados.ui.dashboard.a.b() {

            final a a;

            
            {
                a = a.this;
                super();
            }
        };
    }

    public void c()
    {
        f();
        a("close_popup");
        FragmentManager fragmentmanager = getActivity().getSupportFragmentManager();
        fragmentmanager.popBackStackImmediate();
        fragmentmanager.beginTransaction().remove(this).commitAllowingStateLoss();
    }

    public void d()
    {
        a("ask_live");
        b.a(getActivity(), new com.etermax.gamescommon.social.c() {

            final a a;

            public void a()
            {
                a.a(a, "click_ask_friends");
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

    public Object getDummyCallbacks()
    {
        return b();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public void onDetach()
    {
        f();
        super.onDetach();
    }

    public void onLowMemory()
    {
        super.onLowMemory();
    }

    public void onPause()
    {
        super.onPause();
        if (h != null)
        {
            h.cancel();
        }
    }

    public void onResume()
    {
        super.onResume();
        if (e.q().getQuantity() >= e.q().getMax())
        {
            ((TextView)getView().findViewById(i.get_more_lives_remaining_time_textview)).setText(getString(o.full));
            return;
        } else
        {
            e();
            return;
        }
    }
}
