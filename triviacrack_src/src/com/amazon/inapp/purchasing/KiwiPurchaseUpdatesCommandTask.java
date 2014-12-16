// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import com.amazon.venezia.command.SuccessResult;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;

// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiBaseCommandTask, Offset, PurchaseUpdatesResponse, Logger, 
//            PurchasingManager, PurchasingObserver

final class KiwiPurchaseUpdatesCommandTask extends KiwiBaseCommandTask
{

    private static final String COMMAND_NAME = "purchase_updates";
    private static final String COMMAND_VERSION = "1.0";
    private static final String TAG = "KiwiPurchaseUpdatesCommandTask";
    private final Offset _offset;

    KiwiPurchaseUpdatesCommandTask(Offset offset, String s)
    {
        super("purchase_updates", "1.0", s);
        _offset = offset;
        String s1;
        if (Offset.BEGINNING.equals(_offset))
        {
            s1 = null;
        } else
        {
            s1 = _offset.toString();
        }
        addCommandData("cursor", s1);
    }

    private PurchaseUpdatesResponse getFailedResponse()
    {
        return new PurchaseUpdatesResponse(getRequestId(), null, PurchaseUpdatesResponse.PurchaseUpdatesRequestStatus.FAILED, null, null, _offset, false);
    }

    private void notifyObserver(final PurchaseUpdatesResponse purchaseUpdatesResponse)
    {
        postRunnableToMainLooper(new Runnable() {

            final KiwiPurchaseUpdatesCommandTask this$0;
            final PurchaseUpdatesResponse val$purchaseUpdatesResponse;

            public void run()
            {
                PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
                if (purchasingobserver != null)
                {
                    if (Logger.isTraceOn())
                    {
                        Logger.trace("KiwiPurchaseUpdatesCommandTask", (new StringBuilder()).append("Invoking onPurchaseUpdatesResponse with ").append(purchaseUpdatesResponse).toString());
                    }
                    purchasingobserver.onPurchaseUpdatesResponse(purchaseUpdatesResponse);
                }
            }

            
            {
                this$0 = KiwiPurchaseUpdatesCommandTask.this;
                purchaseUpdatesResponse = purchaseupdatesresponse;
                super();
            }
        });
    }

    protected void onSuccess(SuccessResult successresult)
    {
        Map map;
        String s;
        String s1;
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseUpdatesCommandTask", "onSuccess");
        }
        map = successresult.getData();
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseUpdatesCommandTask", (new StringBuilder()).append("data: ").append(map).toString());
        }
        s = (String)map.get("errorMessage");
        s1 = (String)map.get("userId");
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiPurchaseUpdatesCommandTask", (new StringBuilder()).append("onSuccess: errorMessage: \"").append(s).append("\"").toString());
        }
        if (!isNullOrEmpty(s)) goto _L2; else goto _L1
_L1:
        int i;
        HashSet hashset;
        HashSet hashset1;
        JSONArray jsonarray;
        JSONArray jsonarray1;
        int j;
        String s2;
        boolean flag;
        Offset offset;
        Offset offset1;
        PurchaseUpdatesResponse.PurchaseUpdatesRequestStatus purchaseupdatesrequeststatus;
        org.json.JSONObject jsonobject;
        Receipt receipt;
        try
        {
            hashset = new HashSet();
            hashset1 = new HashSet();
            jsonarray = new JSONArray((String)map.get("receipts"));
        }
        catch (JSONException jsonexception)
        {
            if (Logger.isErrorOn())
            {
                Logger.error("KiwiPurchaseUpdatesCommandTask", (new StringBuilder()).append("Error parsing purchase updates JSON: ").append(jsonexception.getMessage()).toString());
            }
            sendFailedResponse();
            return;
        }
        i = 0;
_L8:
        if (i < jsonarray.length())
        {
            jsonobject = jsonarray.getJSONObject(i);
            receipt = getReceiptFromReceiptJson(jsonobject);
            if (verifyReceipt(s1, receipt, jsonobject))
            {
                hashset.add(receipt);
            }
            break MISSING_BLOCK_LABEL_399;
        }
        jsonarray1 = new JSONArray((String)map.get("revocations"));
        j = 0;
_L4:
        if (j >= jsonarray1.length())
        {
            break; /* Loop/switch isn't completed */
        }
        hashset1.add(jsonarray1.getString(j));
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        s2 = (String)map.get("cursor");
        flag = "true".equalsIgnoreCase((String)map.get("hasMore"));
        if (!isNullOrEmpty(s2)) goto _L6; else goto _L5
_L5:
        offset1 = Offset.BEGINNING;
_L7:
        purchaseupdatesrequeststatus = PurchaseUpdatesResponse.PurchaseUpdatesRequestStatus.SUCCESSFUL;
        notifyObserver(new PurchaseUpdatesResponse(getRequestId(), s1, purchaseupdatesrequeststatus, hashset, hashset1, offset1, flag));
        return;
_L6:
        offset = Offset.fromString(s2);
        offset1 = offset;
          goto _L7
        i++;
        if (true) goto _L8; else goto _L2
_L2:
    }

    protected void sendFailedResponse()
    {
        notifyObserver(getFailedResponse());
    }
}
