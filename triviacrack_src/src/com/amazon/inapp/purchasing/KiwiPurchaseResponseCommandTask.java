// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import com.amazon.venezia.command.SuccessResult;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiBaseCommandTask, Logger, PurchaseResponse, PurchasingManager, 
//            PurchasingObserver, ImplementationFactory, RequestHandler

final class KiwiPurchaseResponseCommandTask extends KiwiBaseCommandTask
{

    private static final String COMMAND_NAME = "purchase_response";
    private static final String COMMAND_VERSION = "1.0";
    private static final String TAG = "KiwiPurchaseResponseCommandTask";

    KiwiPurchaseResponseCommandTask(String s)
    {
        super("purchase_response", "1.0", s);
    }

    protected void onSuccess(SuccessResult successresult)
    {
        String s1;
        String s2;
        PurchaseResponse.PurchaseRequestStatus purchaserequeststatus;
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseResponseCommandTask", "onSuccess");
        }
        Map map = successresult.getData();
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseResponseCommandTask", (new StringBuilder()).append("data: ").append(map).toString());
        }
        String s = (String)map.get("errorMessage");
        s1 = (String)map.get("userId");
        s2 = (String)map.get("receipt");
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseResponseCommandTask", (new StringBuilder()).append("onSuccess: errorMessage: \"").append(s).append("\" receipt: \"").append(s2).append("\"").toString());
        }
        purchaserequeststatus = PurchaseResponse.PurchaseRequestStatus.FAILED;
        if (!isNullOrEmpty(s) || isNullOrEmpty(s2))
        {
            break MISSING_BLOCK_LABEL_351;
        }
        JSONObject jsonobject;
        String s3;
        jsonobject = new JSONObject(s2);
        s3 = jsonobject.getString("orderStatus");
        PurchaseResponse.PurchaseRequestStatus purchaserequeststatus2 = PurchaseResponse.PurchaseRequestStatus.valueOf(s3);
        PurchaseResponse.PurchaseRequestStatus purchaserequeststatus1 = purchaserequeststatus2;
_L3:
        if (PurchaseResponse.PurchaseRequestStatus.SUCCESSFUL != purchaserequeststatus1) goto _L2; else goto _L1
_L1:
        Receipt receipt1;
        receipt1 = getReceiptFromReceiptJson(jsonobject);
        if (verifyReceipt(s1, receipt1, jsonobject))
        {
            break MISSING_BLOCK_LABEL_223;
        }
        purchaserequeststatus1 = PurchaseResponse.PurchaseRequestStatus.FAILED;
        receipt1 = null;
_L5:
        Receipt receipt = receipt1;
_L4:
        postRunnableToMainLooper(new Runnable() {

            final KiwiPurchaseResponseCommandTask this$0;
            final PurchaseResponse val$purchaseResponse;

            public void run()
            {
                PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
                if (Logger.isTraceOn())
                {
                    Logger.trace("KiwiPurchaseResponseCommandTask", (new StringBuilder()).append("About to invoke onPurchaseResponse with PurchasingObserver: ").append(purchasingobserver).toString());
                }
                if (purchasingobserver != null)
                {
                    if (Logger.isTraceOn())
                    {
                        Logger.trace("KiwiPurchaseResponseCommandTask", (new StringBuilder()).append("Invoking onPurchaseResponse with ").append(purchaseResponse).toString());
                    }
                    purchasingobserver.onPurchaseResponse(purchaseResponse);
                    if (Logger.isTraceOn())
                    {
                        Logger.trace("KiwiPurchaseResponseCommandTask", "No exceptions were thrown when invoking onPurchaseResponse");
                    }
                    ImplementationFactory.getRequestHandler().sendPurchaseResponseReceivedRequest(getRequestId());
                }
            }

            
            {
                this$0 = KiwiPurchaseResponseCommandTask.this;
                purchaseResponse = purchaseresponse;
                super();
            }
        });
        return;
        Exception exception;
        exception;
        if (Logger.isErrorOn())
        {
            Logger.error("KiwiPurchaseResponseCommandTask", (new StringBuilder()).append("Invalid order status ").append(s3).toString());
        }
        purchaserequeststatus1 = PurchaseResponse.PurchaseRequestStatus.FAILED;
          goto _L3
        JSONException jsonexception;
        jsonexception;
        if (Logger.isErrorOn())
        {
            Logger.error("KiwiPurchaseResponseCommandTask", (new StringBuilder()).append("Error parsing receipt JSON: ").append(jsonexception.getMessage()).toString());
        }
        purchaserequeststatus1 = PurchaseResponse.PurchaseRequestStatus.FAILED;
        receipt = null;
          goto _L4
_L2:
        receipt1 = null;
          goto _L5
        purchaserequeststatus1 = purchaserequeststatus;
        receipt = null;
          goto _L4
    }

    protected void sendFailedResponse()
    {
        postRunnableToMainLooper(new Runnable() {

            final KiwiPurchaseResponseCommandTask this$0;

            public void run()
            {
                PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
                PurchaseResponse purchaseresponse = new PurchaseResponse(getRequestId(), null, null, PurchaseResponse.PurchaseRequestStatus.FAILED);
                if (purchasingobserver != null)
                {
                    if (Logger.isTraceOn())
                    {
                        Logger.trace("KiwiPurchaseResponseCommandTask", (new StringBuilder()).append("Invoking onPurchaseResponse with ").append(purchaseresponse).toString());
                    }
                    purchasingobserver.onPurchaseResponse(purchaseresponse);
                }
            }

            
            {
                this$0 = KiwiPurchaseResponseCommandTask.this;
                super();
            }
        });
    }
}
