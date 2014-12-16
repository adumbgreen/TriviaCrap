// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import com.etermax.gamescommon.b.aj;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.f.a;
import com.etermax.tools.social.a.b;
import com.etermax.tools.widget.b.g;
import com.etermax.tools.widget.b.h;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            h

public class i extends g
    implements h
{

    com.etermax.gamescommon.i.b.h a;
    private com.etermax.gamescommon.login.datasource.a b;
    private c c;
    private b d;
    private a e;
    private boolean f;

    private i(b b1, c c1, com.etermax.gamescommon.login.datasource.a a1, a a2)
    {
        setTargetFragment(this, 0);
        d = b1;
        c = c1;
        b = a1;
        e = a2;
        f = false;
    }

    public static i a(Context context, com.etermax.gamescommon.i.b.h h1, b b1, c c1, com.etermax.gamescommon.login.datasource.a a1, a a2)
    {
        i j = new i(b1, c1, a1, a2);
        j.setArguments(b(context.getString(o.logging_out), context.getString(o.dialog_logout), context.getString(o.sign_up), context.getString(o.facebook_link), context.getString(o.logout), k.guest_three_vertical_buttons_dialog, null));
        j.a(h1);
        return j;
    }

    private void a(String s)
    {
        if (e != null)
        {
            aj aj1 = new aj();
            aj1.a(s);
            e.a(aj1);
            f = true;
        }
    }

    public void a(Bundle bundle)
    {
        a.a(1);
        a("email_signup");
        a.l_();
    }

    public void a(FragmentManager fragmentmanager)
    {
        super.show(fragmentmanager, "logout_dialog");
    }

    public void a(com.etermax.gamescommon.i.b.h h1)
    {
        a = h1;
    }

    public void b(Bundle bundle)
    {
        a("link_with_facebook");
        (new com.etermax.gamescommon.j.c(getString(o.loading), d, c, b, e, "logout") {

            final i a;

            
            {
                a = i.this;
                super(s, b1, c1, a1, a2, s1);
            }
        }).a(this);
    }

    public void c(Bundle bundle)
    {
        a.a(1);
        a("logout");
        a.c();
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        super.onDismiss(dialoginterface);
        if (!f)
        {
            a("cancel");
        }
    }
}
