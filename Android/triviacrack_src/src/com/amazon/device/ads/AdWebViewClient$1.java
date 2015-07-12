// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdWebViewClient, AdControlAccessor

class this._cls0
    implements Runnable
{

    final AdWebViewClient this$0;

    public void run()
    {
        AdWebViewClient.access$000(AdWebViewClient.this).reload();
    }

    ()
    {
        this$0 = AdWebViewClient.this;
        super();
    }
}
