// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;

// Referenced classes of package com.etermax.tools.widget:
//            b

public class ProfileProgressBar extends RelativeLayout
{

    android.widget.RelativeLayout.LayoutParams a;
    protected TextView b;
    TextView c;
    RelativeLayout d;
    RelativeLayout e;
    RelativeLayout f;
    int g;
    int h;
    int i;
    int j;

    public ProfileProgressBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        g = 0;
        h = 0;
        i = 100;
        j = 10;
    }

    public ProfileProgressBar(Context context, AttributeSet attributeset, int k)
    {
        super(context, attributeset, k);
        g = 0;
        h = 0;
        i = 100;
        j = 10;
    }

    private void a(RelativeLayout relativelayout, int k)
    {
        a = (android.widget.RelativeLayout.LayoutParams)relativelayout.getLayoutParams();
        a.width = k;
        relativelayout.setLayoutParams(a);
    }

    static void a(ProfileProgressBar profileprogressbar)
    {
        profileprogressbar.c();
    }

    static void a(ProfileProgressBar profileprogressbar, RelativeLayout relativelayout, int k)
    {
        profileprogressbar.a(relativelayout, k);
    }

    private void c()
    {
        a = (android.widget.RelativeLayout.LayoutParams)d.getLayoutParams();
        a.width = 0;
        d.setLayoutParams(a);
        a = (android.widget.RelativeLayout.LayoutParams)e.getLayoutParams();
        a.width = 0;
        e.setLayoutParams(a);
    }

    protected void a()
    {
        b.setText(String.valueOf(0));
        c.setText(String.valueOf(0));
    }

    public void b()
    {
        (new b(this)).execute(new Void[0]);
    }

    public void setCycles(int k)
    {
        i = k;
    }

    public void setLoses(int k)
    {
        h = k;
    }

    public void setSleepTime(int k)
    {
        j = k;
    }

    public void setWins(int k)
    {
        g = k;
    }
}
