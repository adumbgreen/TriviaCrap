// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.rankings;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.preguntados.sharing.o;
import com.etermax.tools.social.a.j;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.rankings:
//            RankingsActivity, d

public final class RankingsActivity_ extends RankingsActivity
    implements a
{

    private final c c = new c();

    public RankingsActivity_()
    {
    }

    private void a(Bundle bundle)
    {
        a = j.a(this);
        b = o.a(this);
    }

    public static d b(Context context)
    {
        return new d(context);
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = org.a.a.b.c.a(c);
        a(bundle);
        super.onCreate(bundle);
        org.a.a.b.c.a(c1);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (org.a.a.c.a() < 5 && i == 4 && keyevent.getRepeatCount() == 0)
        {
            onBackPressed();
        }
        return super.onKeyDown(i, keyevent);
    }

    public void setContentView(int i)
    {
        super.setContentView(i);
        c.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        c.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        c.a(this);
    }
}
