// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.amazon.android.Kiwi;

// Referenced classes of package com.amazon.inapp.purchasing:
//            Logger, KiwiPurchaseResponseCommandTask, KiwiResponseHandler

class this._cls0 extends this._cls0
{

    final KiwiResponseHandler this$0;

    public void run()
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiResponseHandler", "PurchaseResponseHandlerRunnable.run()");
        }
        String s = getIntent().getExtras().getString("requestId");
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiResponseHandler", (new StringBuilder()).append("PurchaseResponseHandlerRunnable.run: requestId: ").append(s).toString());
        }
        if (s != null && s.trim().length() > 0)
        {
            Kiwi.addCommandToCommandTaskPipeline(new KiwiPurchaseResponseCommandTask(s));
        }
    }

    public (Context context, Intent intent)
    {
        this$0 = KiwiResponseHandler.this;
        super(KiwiResponseHandler.this, context, intent);
    }
}
