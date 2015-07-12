// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.settings;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.view.View;
import com.etermax.gamescommon.EtermaxGamesApplication;
import com.etermax.gamescommon.i.b.h;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.i;
import com.etermax.preguntados.ui.help.HelpActivity;
import com.etermax.tools.navigation.BaseFragmentActivity;
import java.util.ArrayList;

// Referenced classes of package com.etermax.preguntados.ui.settings:
//            SettingsActivity_, a, AccountActivity

public class SettingsActivity extends BaseFragmentActivity
    implements h
{

    c a;

    public SettingsActivity()
    {
    }

    public static Intent a(Context context)
    {
        return new Intent(context, com/etermax/preguntados/ui/settings/SettingsActivity_);
    }

    protected Fragment a()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(Integer.valueOf(i.btn_help));
        return com.etermax.preguntados.ui.settings.a.a(arraylist, true);
    }

    public void a(int j)
    {
    }

    public void b()
    {
    }

    public void c()
    {
        a.a(this);
        ((EtermaxGamesApplication)getApplication()).b(this);
    }

    public boolean d()
    {
        return false;
    }

    public void l_()
    {
        startActivity(AccountActivity.a(getApplicationContext()));
    }

    public void onHelpSectionClicked(View view)
    {
        if (view.getId() == i.btn_help)
        {
            startActivity(HelpActivity.a(this));
        }
    }

    public void onViewCreated(View view)
    {
    }
}
