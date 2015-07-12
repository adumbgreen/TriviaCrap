// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import com.amazon.android.Kiwi;
import java.util.Set;

// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiRequestHandler, KiwiGetItemDataRequestCommandTask

class val.requestId
    implements Runnable
{

    final KiwiRequestHandler this$0;
    final String val$requestId;
    final Set val$skus;

    public void run()
    {
        Kiwi.addCommandToCommandTaskPipeline(new KiwiGetItemDataRequestCommandTask(val$skus, val$requestId));
    }

    tCommandTask()
    {
        this$0 = final_kiwirequesthandler;
        val$skus = set;
        val$requestId = String.this;
        super();
    }
}
