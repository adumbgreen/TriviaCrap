// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.tools.f.d;
import org.a.a.b.a;
import org.a.a.b.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.ui:
//            SplashActivity

public final class SplashActivity_ extends SplashActivity
    implements a, b
{

    private final c f = new c();

    public SplashActivity_()
    {
    }

    private void a(Bundle bundle)
    {
        b = com.etermax.gamescommon.login.datasource.b.a(this);
        c = com.etermax.tools.f.d.c(this);
        d = com.etermax.gamescommon.shop.d.b(this);
        e = com.etermax.preguntados.g.b.a(this);
        c.a(this);
    }

    static void a(SplashActivity_ splashactivity_)
    {
        splashactivity_.com.etermax.preguntados.ui.SplashActivity.d();
    }

    public void a(a a1)
    {
        b();
    }

    public void d()
    {
        org.a.a.a.a(new org.a.a.b("", 0, "") {

            final SplashActivity_ a;

            public void a()
            {
                try
                {
                    com.etermax.preguntados.ui.SplashActivity_.a(a);
                    return;
                }
                catch (Throwable throwable)
                {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
                }
            }

            
            {
                a = SplashActivity_.this;
                super(s, i, s1);
            }
        });
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(f);
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
        f.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        f.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        f.a(this);
    }
}
