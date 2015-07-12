// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.app.Activity;
import android.content.Intent;
import com.amazon.android.framework.context.ContextManager;
import com.amazon.android.framework.task.Task;
import com.amazon.android.framework.task.TaskManager;
import com.amazon.android.framework.task.pipeline.TaskPipelineId;
import com.amazon.venezia.command.SuccessResult;
import java.util.Map;

// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiBaseCommandTask, Logger, PurchasingManager, PurchaseResponse, 
//            PurchasingObserver

final class KiwiPurchaseRequestCommandTask extends KiwiBaseCommandTask
{

    private static final String COMMAND_NAME = "purchase_item";
    private static final String COMMAND_VERSION = "1.0";
    private static final String TAG = "KiwiPurchaseRequestCommandTask";
    private final String _sku;
    private ContextManager contextMgr;
    private TaskManager taskManager;

    KiwiPurchaseRequestCommandTask(String s, String s1)
    {
        super("purchase_item", "1.0", s1);
        _sku = s;
        addCommandData("sku", _sku);
    }

    protected void onSuccess(SuccessResult successresult)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseRequestCommandTask", "onSuccess");
        }
        Map map = successresult.getData();
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseRequestCommandTask", (new StringBuilder()).append("data: ").append(map).toString());
        }
        if (map.containsKey("purchaseItemIntent"))
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("KiwiPurchaseRequestCommandTask", "found intent");
            }
            final Intent intent = (Intent)map.remove("purchaseItemIntent");
            taskManager.enqueueAtFront(TaskPipelineId.FOREGROUND, new Task() {

                final KiwiPurchaseRequestCommandTask this$0;
                final Intent val$intent;

                public void execute()
                {
                    Activity activity = contextMgr.getVisible();
                    if (activity != null)
                    {
                        break MISSING_BLOCK_LABEL_30;
                    }
                    activity = contextMgr.getRoot();
                    if (Logger.isTraceOn())
                    {
                        Logger.trace("KiwiPurchaseRequestCommandTask", (new StringBuilder()).append("About to fire intent with activity ").append(activity).toString());
                    }
                    activity.startActivity(intent);
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

            
            {
                this$0 = KiwiPurchaseRequestCommandTask.this;
                intent = intent1;
                super();
            }
            });
        } else
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseRequestCommandTask", "did not find intent");
            return;
        }
    }

    protected void sendFailedResponse()
    {
        postRunnableToMainLooper(new Runnable() {

            final KiwiPurchaseRequestCommandTask this$0;

            public void run()
            {
                PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
                PurchaseResponse purchaseresponse = new PurchaseResponse(getRequestId(), null, null, PurchaseResponse.PurchaseRequestStatus.FAILED);
                if (purchasingobserver != null)
                {
                    if (Logger.isTraceOn())
                    {
                        Logger.trace("KiwiPurchaseRequestCommandTask", (new StringBuilder()).append("Invoking onPurchaseResponse with ").append(purchaseresponse).toString());
                    }
                    purchasingobserver.onPurchaseResponse(purchaseresponse);
                }
            }

            
            {
                this$0 = KiwiPurchaseRequestCommandTask.this;
                super();
            }
        });
    }

}
