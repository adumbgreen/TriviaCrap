// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdController, AdContainer

class val.preload
    implements Runnable
{

    final AdController this$0;
    final String val$javascript;
    final boolean val$preload;

    public void run()
    {
        getAdContainer().injectJavascript(val$javascript, val$preload);
    }

    ()
    {
        this$0 = final_adcontroller;
        val$javascript = s;
        val$preload = Z.this;
        super();
    }
}
