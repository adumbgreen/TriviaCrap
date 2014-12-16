// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.app.Activity;
import android.content.Intent;
import com.amazon.android.framework.context.ContextManager;
import com.amazon.android.framework.task.Task;

// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiPurchaseRequestCommandTask, Logger

class val.intent
    implements Task
{

    final KiwiPurchaseRequestCommandTask this$0;
    final Intent val$intent;

    public void execute()
    {
        Activity activity = KiwiPurchaseRequestCommandTask.access$000(KiwiPurchaseRequestCommandTask.this).getVisible();
        if (activity != null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        activity = KiwiPurchaseRequestCommandTask.access$000(KiwiPurchaseRequestCommandTask.this).getRoot();
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseRequestCommandTask", (new StringBuilder()).append("About to fire intent with activity ").append(activity).toString());
        }
        activity.startActivity(val$intent);
_L1:
        return;
        Exception exception;
        exception;
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseRequestCommandTask", (new StringBuilder()).append("Exception when attempting to fire intent: ").append(exception).toString());
            return;
        }
          goto _L1
    }

    ()
    {
        this$0 = final_kiwipurchaserequestcommandtask;
        val$intent = Intent.this;
        super();
    }
}
