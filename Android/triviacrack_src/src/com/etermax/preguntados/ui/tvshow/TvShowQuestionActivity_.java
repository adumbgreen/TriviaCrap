// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.tvshow;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.gamescommon.login.datasource.b;
import com.etermax.preguntados.datasource.e;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.tvshow:
//            TvShowQuestionActivity, f

public final class TvShowQuestionActivity_ extends TvShowQuestionActivity
    implements a
{

    private final c i = new c();

    public TvShowQuestionActivity_()
    {
    }

    public static f a(Context context)
    {
        return new f(context);
    }

    private void a(Bundle bundle)
    {
        i();
        c = com.etermax.gamescommon.login.datasource.b.a(this);
        b = e.a(this);
        b(bundle);
        b();
    }

    private void b(Bundle bundle)
    {
        if (bundle == null)
        {
            return;
        } else
        {
            d = bundle.getLong("mQuestionReceivedTime");
            e = bundle.getInt("mQuestionTimeSeconds");
            return;
        }
    }

    private void i()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null && bundle.containsKey("mPollingIntervalSeconds"))
        {
            a = bundle.getInt("mPollingIntervalSeconds");
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

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putLong("mQuestionReceivedTime", d);
        bundle.putInt("mQuestionTimeSeconds", e);
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
        i();
    }
}
