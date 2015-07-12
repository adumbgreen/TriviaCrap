// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.navigation;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import com.etermax.gamescommon.social.e;
import com.etermax.gamescommon.social.k;
import com.etermax.tools.b;

// Referenced classes of package com.etermax.gamescommon.menu.navigation:
//            NavigationPanel, c, b, f

class a
    implements android.widget.ClickListener
{

    final NavigationPanel a;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        c c1;
        c1 = (c)a.getAdapter().getItem(i);
        a.a(c1);
        if (NavigationPanel.a(a) == null || !NavigationPanel.a(a).a(c1)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        FragmentActivity fragmentactivity = (FragmentActivity)a.getContext();
        switch (a[c1.c().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            fragmentactivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(((b)fragmentactivity.getApplication()).q())));
            return;

        case 3: // '\003'
            e e1 = (e)fragmentactivity.getSupportFragmentManager().findFragmentByTag("facebook_dialog");
            if (e1 == null)
            {
                e1 = e.a("dashboard");
            }
            if (!e1.isAdded())
            {
                e1.show(fragmentactivity.getSupportFragmentManager(), "facebook_dialog");
                return;
            }
            break;

        case 4: // '\004'
            k k1 = (k)fragmentactivity.getSupportFragmentManager().findFragmentByTag("twitter_dialog");
            if (k1 == null)
            {
                k1 = k.a();
            }
            if (!k1.isAdded())
            {
                k1.show(fragmentactivity.getSupportFragmentManager(), "twitter_dialog");
                return;
            }
            break;

        case 2: // '\002'
            a.a(fragmentactivity, c1.f());
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    (NavigationPanel navigationpanel)
    {
        a = navigationpanel;
        super();
    }
}
