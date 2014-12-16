// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.withoutcoins;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.withoutcoins:
//            a

public class g
{

    Context a;
    private SharedPreferences b;

    public g()
    {
    }

    private boolean b()
    {
        return b.getBoolean("show_without_coins", false);
    }

    public void a()
    {
        b = a.getSharedPreferences("without_coins_preferences", 0);
    }

    public void a(FragmentActivity fragmentactivity)
    {
        if (fragmentactivity != null)
        {
            android.support.v4.app.Fragment fragment = fragmentactivity.getSupportFragmentManager().findFragmentByTag("fragment_no_coins");
            FragmentTransaction fragmenttransaction = fragmentactivity.getSupportFragmentManager().beginTransaction();
            if (fragment != null)
            {
                fragmenttransaction.remove(fragment);
            }
            fragmenttransaction.commitAllowingStateLoss();
        }
    }

    public void a(BaseFragmentActivity basefragmentactivity)
    {
        if (b() && basefragmentactivity != null)
        {
            basefragmentactivity.a(com.etermax.preguntados.ui.withoutcoins.a.b(), "fragment_no_coins", true);
            a(false);
        }
    }

    public void a(boolean flag)
    {
        b.edit().putBoolean("show_without_coins", flag).commit();
    }
}
