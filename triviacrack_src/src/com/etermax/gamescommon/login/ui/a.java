// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.gamescommon.b.ad;
import com.etermax.gamescommon.b.af;
import com.etermax.gamescommon.b.ah;
import com.etermax.gamescommon.b.l;
import com.etermax.gamescommon.b.y;
import com.etermax.gamescommon.b.z;
import com.etermax.i;
import com.etermax.k;
import com.etermax.tools.widget.b.j;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            j, c, m

public class a extends com.etermax.gamescommon.login.ui.j
    implements y, j
{

    private z f;

    public a()
    {
    }

    public static a a()
    {
        return new c();
    }

    public void a(Bundle bundle)
    {
        ((m)mCallbacks).e();
    }

    public void a(z z)
    {
        f = z;
    }

    public void b()
    {
        a(new ad("login_show"));
        if (com.etermax.tools.g.a.a())
        {
            getView().findViewById(i.debug_button).setVisibility(0);
        }
    }

    public void b(Bundle bundle)
    {
        a(this);
    }

    protected void c()
    {
        a(new ad("login_email_click"));
        ((m)mCallbacks).b();
    }

    protected void d()
    {
        ((m)mCallbacks).d();
    }

    protected void e()
    {
        ((m)mCallbacks).c();
    }

    protected void f()
    {
        a(new ad("login_facebook_click"));
        j();
    }

    public z g()
    {
        return f;
    }

    protected l h()
    {
        return new ah("register_fb_ok");
    }

    protected l i()
    {
        return new af("login_fb_ok");
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.login_choose_fragment, null);
        TextView textview = (TextView)view.findViewById(i.support_button);
        textview.setPaintFlags(8 | textview.getPaintFlags());
        return view;
    }
}
