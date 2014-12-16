// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import com.amazon.android.Kiwi;

// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiRequestHandler, KiwiPurchaseUpdatesCommandTask, Offset

class val.requestId
    implements Runnable
{

    final KiwiRequestHandler this$0;
    final Offset val$offset;
    final String val$requestId;

    public void run()
    {
        Kiwi.addCommandToCommandTaskPipeline(new KiwiPurchaseUpdatesCommandTask(val$offset, val$requestId));
    }

    mmandTask()
    {
        this$0 = final_kiwirequesthandler;
        val$offset = offset1;
        val$requestId = String.this;
        super();
    }
}
