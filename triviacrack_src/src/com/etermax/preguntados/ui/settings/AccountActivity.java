// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.settings;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.etermax.gamescommon.i.b.a;
import com.etermax.gamescommon.i.b.b;
import com.etermax.gamescommon.i.b.f;
import com.etermax.preguntados.datasource.d;
import com.etermax.tools.navigation.BaseFragmentActivity;

// Referenced classes of package com.etermax.preguntados.ui.settings:
//            AccountActivity_

public class AccountActivity extends BaseFragmentActivity
    implements b
{

    a a;
    d b;

    public AccountActivity()
    {
    }

    public static Intent a(Context context)
    {
        return new Intent(context, com/etermax/preguntados/ui/settings/AccountActivity_);
    }

    protected Fragment a()
    {
        return f.a();
    }

    public void a(int i)
    {
    }

    public void b()
    {
    }

    public void k_()
    {
        b.h();
    }

    public void onAttachFragment(Fragment fragment)
    {
        if (fragment instanceof a)
        {
            a = (a)fragment;
        }
        super.onAttachFragment(fragment);
    }

    public void onBackPressed()
    {
        if (a != null && a.c())
        {
            a.f();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }
}
