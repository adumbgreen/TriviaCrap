// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import com.amazon.venezia.command.SuccessResult;
import java.util.Map;

// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiBaseCommandTask, Logger, GetUserIdResponse, PurchasingManager, 
//            PurchasingObserver

final class KiwiGetUserIdCommandTask extends KiwiBaseCommandTask
{

    private static final String COMMAND_NAME = "get_userId";
    private static final String COMMAND_VERSION = "1.0";
    private static final String TAG = "KiwiGetUserIdCommandTask";

    KiwiGetUserIdCommandTask(String s)
    {
        super("get_userId", "1.0", s);
    }

    private void notifyObserver(final GetUserIdResponse getUserIdResponse)
    {
        postRunnableToMainLooper(new Runnable() {

            final KiwiGetUserIdCommandTask this$0;
            final GetUserIdResponse val$getUserIdResponse;

            public void run()
            {
                PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
                if (purchasingobserver != null)
                {
                    if (Logger.isTraceOn())
                    {
                        Logger.trace("KiwiGetUserIdCommandTask", (new StringBuilder()).append("Invoking onGetUserIdResponse with ").append(getUserIdResponse).toString());
                    }
                    purchasingobserver.onGetUserIdResponse(getUserIdResponse);
                }
            }

            
            {
                this$0 = KiwiGetUserIdCommandTask.this;
                getUserIdResponse = getuseridresponse;
                super();
            }
        });
    }

    protected void onSuccess(SuccessResult successresult)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiGetUserIdCommandTask", "onSuccess");
        }
        Map map = successresult.getData();
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiGetUserIdCommandTask", (new StringBuilder()).append("data: ").append(map).toString());
        }
        String s = (String)map.get("userId");
        GetUserIdResponse.GetUserIdRequestStatus getuseridrequeststatus;
        String s1;
        if (!isNullOrEmpty(s))
        {
            GetUserIdResponse.GetUserIdRequestStatus getuseridrequeststatus1 = GetUserIdResponse.GetUserIdRequestStatus.SUCCESSFUL;
            s1 = s;
            getuseridrequeststatus = getuseridrequeststatus1;
        } else
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("KiwiGetUserIdCommandTask", "found null or empty user ID");
            }
            getuseridrequeststatus = GetUserIdResponse.GetUserIdRequestStatus.FAILED;
            s1 = null;
        }
        notifyObserver(new GetUserIdResponse(getRequestId(), getuseridrequeststatus, s1));
    }

    protected void sendFailedResponse()
    {
        notifyObserver(new GetUserIdResponse(getRequestId(), GetUserIdResponse.GetUserIdRequestStatus.FAILED, null));
    }
}
