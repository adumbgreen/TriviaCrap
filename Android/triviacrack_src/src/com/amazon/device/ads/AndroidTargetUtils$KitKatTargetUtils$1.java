// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.webkit.WebView;

final class val.enable
    implements Runnable
{

    final boolean val$enable;

    public void run()
    {
        WebView.setWebContentsDebuggingEnabled(val$enable);
    }

    ()
    {
        val$enable = flag;
        super();
    }
}
