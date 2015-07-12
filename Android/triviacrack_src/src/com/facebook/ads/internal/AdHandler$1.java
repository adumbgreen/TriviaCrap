// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;


// Referenced classes of package com.facebook.ads.internal:
//            AdHandler

class this._cls0
    implements Runnable
{

    final AdHandler this$0;

    public void run()
    {
        AdHandler.access$002(AdHandler.this, false);
        trySendImpression();
    }

    ()
    {
        this$0 = AdHandler.this;
        super();
    }
}
