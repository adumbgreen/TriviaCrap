// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.KeyEvent;
import com.etermax.a.a;
import com.etermax.a.b;
import com.etermax.gamescommon.b.s;
import com.etermax.gamescommon.b.t;
import com.etermax.o;
import com.etermax.tools.i.e;
import com.etermax.tools.widget.b.c;
import com.etermax.tools.widget.b.d;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            l, b

public class k extends c
    implements d
{

    com.etermax.tools.f.a a;

    public k()
    {
        setTargetFragment(this, 0);
    }

    public static k a(FragmentActivity fragmentactivity)
    {
        Object obj = (k)fragmentactivity.getSupportFragmentManager().findFragmentByTag("force_update_tag");
        if (obj == null)
        {
            obj = new l();
            ((k) (obj)).a(fragmentactivity.getString(o.notification_forced_update), fragmentactivity.getString(o.notification_forced_update_txt), fragmentactivity.getString(o.ok));
            ((k) (obj)).setCancelable(true);
        }
        return ((k) (obj));
    }

    private void a(String s1, String s2, String s3)
    {
        setArguments(d(s1, s2, s3, null));
    }

    public void b(FragmentActivity fragmentactivity)
    {
        try
        {
            if (!isVisible())
            {
                show(fragmentactivity.getSupportFragmentManager(), "force_update_tag");
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
        s s1 = new s(t.b);
        s1.a(com.etermax.a.b.d(getActivity()));
        a.a(s1);
        android.app.Application application = getActivity().getApplication();
        if (application instanceof e)
        {
            ((com.etermax.gamescommon.login.ui.b)application).f();
        }
        getActivity().finish();
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        getActivity().finish();
        super.onCancel(dialoginterface);
    }

    public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
    {
        if (i == 84)
        {
            onCancel(dialoginterface);
        }
        return super.onKey(dialoginterface, i, keyevent);
    }

    public void onStart()
    {
        s s1 = new s(t.a);
        s1.a(com.etermax.a.b.d(getActivity()));
        a.a(s1);
        super.onStart();
    }
}
