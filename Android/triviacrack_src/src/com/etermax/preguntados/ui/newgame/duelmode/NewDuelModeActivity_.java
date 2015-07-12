// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.newgame.duelmode;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.preguntados.datasource.e;
import com.etermax.preguntados.ui.game.duelmode.g;
import com.etermax.tools.f.d;
import java.util.ArrayList;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.newgame.duelmode:
//            NewDuelModeActivity, a

public final class NewDuelModeActivity_ extends NewDuelModeActivity
    implements a
{

    private final c i = new c();

    public NewDuelModeActivity_()
    {
    }

    public static com.etermax.preguntados.ui.newgame.duelmode.a a(Context context)
    {
        return new com.etermax.preguntados.ui.newgame.duelmode.a(context);
    }

    private void a(Bundle bundle)
    {
        d();
        g = b.a(this);
        e = e.a(this);
        h = com.etermax.tools.f.d.c(this);
        f = com.etermax.gamescommon.c.b.b(this);
    }

    private void d()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null)
        {
            if (bundle.containsKey("mDuelName"))
            {
                a = bundle.getString("mDuelName");
            }
            if (bundle.containsKey("mSelectedLanguage"))
            {
                b = (Language)bundle.getSerializable("mSelectedLanguage");
            }
            if (bundle.containsKey("mPreselectedFriends"))
            {
                c = (ArrayList)bundle.getSerializable("mPreselectedFriends");
            }
            if (bundle.containsKey("mTheme"))
            {
                d = (g)bundle.getSerializable("mTheme");
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(i);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
    }

    public boolean onKeyDown(int j, KeyEvent keyevent)
    {
        if (org.a.a.c.a() < 5 && j == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
        }
        return super.onKeyDown(j, keyevent);
    }

    public void setContentView(int j)
    {
        super.setContentView(j);
        i.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        i.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        i.a(this);
    }

    public void setIntent(Intent intent)
    {
        super.setIntent(intent);
        d();
    }
}
