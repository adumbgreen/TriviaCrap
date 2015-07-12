// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;

// Referenced classes of package com.millennialmedia.android:
//            MMAdImpl, MMLog, MMLayout, MMWebView, 
//            MMAd

class o extends MMAdImpl
{

    final MMLayout o;

    public void addView(MMWebView mmwebview, android.widget.s s)
    {
        MMLog.d("MMLayout", (new StringBuilder()).append("MMLayout adding view (").append(mmwebview).append(") to ").append(this).toString());
        o.addView(mmwebview, s);
    }

    MMAd d()
    {
        return r();
    }

    int e()
    {
        return o.getId();
    }

    MMLayout r()
    {
        return o;
    }

    public void removeView(MMWebView mmwebview)
    {
        o.removeView(mmwebview);
    }

    public void setClickable(boolean flag)
    {
        o.setClickable(flag);
    }

    public (MMLayout mmlayout, Context context)
    {
        o = mmlayout;
        super(context);
    }
}
