// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.shop;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.shop:
//            ShopActivity

public final class ShopActivity_ extends ShopActivity
    implements a
{

    private final c e = new c();

    public ShopActivity_()
    {
    }

    private void a(Bundle bundle)
    {
        b();
        d = d.c(this);
        c = com.etermax.gamescommon.shop.d.b(this);
    }

    private void b()
    {
        Bundle bundle = getIntent().getExtras();
        if (bundle != null)
        {
            if (bundle.containsKey("mExtraShots"))
            {
                a = bundle.getInt("mExtraShots");
            }
            if (bundle.containsKey("mFrom"))
            {
                b = bundle.getString("mFrom");
            }
        }
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(e);
        a(bundle);
        super.onCreate(bundle);
        c.a(c1);
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
        e.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        e.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        e.a(this);
    }

    public void setIntent(Intent intent)
    {
        super.setIntent(intent);
        b();
    }
}
