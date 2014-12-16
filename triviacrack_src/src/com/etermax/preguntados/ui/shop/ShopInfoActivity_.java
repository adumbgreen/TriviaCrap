// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.shop;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui.shop:
//            ShopInfoActivity

public final class ShopInfoActivity_ extends ShopInfoActivity
    implements a
{

    private final c a = new c();

    public ShopInfoActivity_()
    {
    }

    private void a(Bundle bundle)
    {
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(a);
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
        a.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        a.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        a.a(this);
    }
}
