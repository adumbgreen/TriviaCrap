// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.twitter;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import org.a.a.b.a;
import org.a.a.b.c;

// Referenced classes of package com.etermax.tools.social.twitter:
//            TwitterLoginActivity, d

public final class TwitterLoginActivity_ extends TwitterLoginActivity
    implements a
{

    private final c d = new c();

    public TwitterLoginActivity_()
    {
    }

    private void a(Bundle bundle)
    {
        c = com.etermax.tools.social.twitter.d.a(this);
    }

    public void onCreate(Bundle bundle)
    {
        c c1 = c.a(d);
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
        d.a(this);
    }

    public void setContentView(View view)
    {
        super.setContentView(view);
        d.a(this);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.setContentView(view, layoutparams);
        d.a(this);
    }
}
