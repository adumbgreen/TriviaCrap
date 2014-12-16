// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.etermax.gamescommon.b.as;
import com.etermax.gamescommon.b.at;
import com.etermax.o;
import com.etermax.tools.i.e;
import com.etermax.tools.widget.b.a;
import com.etermax.tools.widget.b.b;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            v, b

public class u extends a
    implements b
{

    com.etermax.tools.f.a a;

    public u()
    {
        setTargetFragment(this, 0);
    }

    public static u a(FragmentActivity fragmentactivity)
    {
        Object obj = (u)fragmentactivity.getSupportFragmentManager().findFragmentByTag("suggest_update_tag");
        if (obj == null)
        {
            obj = new v();
            ((u) (obj)).b(fragmentactivity.getString(o.notification_forced_update), fragmentactivity.getString(o.notification_forced_update_txt), fragmentactivity.getString(o.ok), fragmentactivity.getString(o.later));
            ((u) (obj)).setCancelable(true);
        }
        return ((u) (obj));
    }

    private void b(String s, String s1, String s2, String s3)
    {
        setArguments(b(s, s1, s2, s3, null));
    }

    public void a(Bundle bundle)
    {
        as as1 = new as(at.b);
        as1.d();
        a.a(as1);
    }

    public void b(FragmentActivity fragmentactivity)
    {
        try
        {
            if (!isVisible())
            {
                show(fragmentactivity.getSupportFragmentManager(), "suggest_update_tag");
            }
            return;
        }
        catch (Exception exception)
        {
            com.etermax.a.a.a("SuggestUpdateDialogFragment", exception.getMessage(), exception);
        }
    }

    public void onAccept(Bundle bundle)
    {
        android.app.Application application = getActivity().getApplication();
        if (application instanceof e)
        {
            ((com.etermax.gamescommon.login.ui.b)application).f();
        }
        as as1 = new as(at.b);
        as1.c();
        a.a(as1);
    }

    public void onStart()
    {
        as as1 = new as(at.a);
        as1.a(com.etermax.a.b.d(getActivity()));
        a.a(as1);
        super.onStart();
    }
}
