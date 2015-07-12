// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.amazon.android.framework.context.ContextManager;
import com.amazon.android.framework.prompt.PromptContent;
import com.amazon.android.framework.prompt.SimplePrompt;

// Referenced classes of package com.amazon.inapp.purchasing:
//            Logger

class FailurePrompt extends SimplePrompt
{

    private static final String LINK = "http://www.amazon.com/gp/mas/get-appstore/android/ref=mas_mx_mba_iap_dl";
    private static final String PROMPT_TITLE1 = "Amazon Appstore required";
    private static final String PROMPT_TITLE2 = "Amazon Appstore Update Required";
    private static final long SHUTDOWN_EXP_TIME = 0x1e13380L;
    private static final String TAG = "FailurePrompt";
    private ContextManager contextMgr;
    private PromptContent pContent;

    FailurePrompt(PromptContent promptcontent)
    {
        super(promptcontent);
        pContent = promptcontent;
    }

    protected void doAction()
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("FailurePrompt", "doAction");
        }
        if (!"Amazon Appstore required".equalsIgnoreCase(pContent.getTitle()) && !"Amazon Appstore Update Required".equalsIgnoreCase(pContent.getTitle()))
        {
            break MISSING_BLOCK_LABEL_85;
        }
        Activity activity = contextMgr.getVisible();
        if (activity != null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        activity = contextMgr.getRoot();
        activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.amazon.com/gp/mas/get-appstore/android/ref=mas_mx_mba_iap_dl")));
_L1:
        return;
        Exception exception;
        exception;
        if (Logger.isTraceOn())
        {
            Logger.trace("FailurePrompt", (new StringBuilder()).append("Exception in PurchaseItemCommandTask.OnSuccess: ").append(exception).toString());
            return;
        }
          goto _L1
    }

    protected long getExpirationDurationInSeconds()
    {
        return 0x1e13380L;
    }

    public String toString()
    {
        return "FailurePrompt";
    }
}
