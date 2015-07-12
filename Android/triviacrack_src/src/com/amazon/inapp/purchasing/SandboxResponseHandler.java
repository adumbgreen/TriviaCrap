// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.amazon.inapp.purchasing:
//            ResponseHandler, HandlerManager, Item, ItemDataResponse, 
//            PurchaseResponse, PurchaseUpdatesResponse, Offset, SubscriptionPeriod, 
//            Receipt, GetUserIdResponse, HandlerAdapter, Logger, 
//            PurchasingManager, PurchasingObserver

final class SandboxResponseHandler
    implements ResponseHandler
{

    private static final String TAG = "SandboxResponseHandler";
    private final HandlerAdapter _handler = HandlerManager.getMainHandlerAdapter();

    SandboxResponseHandler()
    {
    }

    private Item getItem(String s, JSONObject jsonobject)
    {
        Item.ItemType itemtype = Item.ItemType.valueOf(jsonobject.optString("itemType"));
        return new Item(s, jsonobject.optString("price"), itemtype, jsonobject.optString("title"), jsonobject.optString("description"), jsonobject.optString("smallIconUrl"));
    }

    private ItemDataResponse getItemDataResponse(Intent intent)
    {
        ItemDataResponse.ItemDataRequestStatus itemdatarequeststatus = ItemDataResponse.ItemDataRequestStatus.FAILED;
        JSONObject jsonobject;
        String s1;
        jsonobject = new JSONObject(intent.getStringExtra("itemDataOutput"));
        s1 = jsonobject.optString("requestId");
        HashSet hashset;
        itemdatarequeststatus = ItemDataResponse.ItemDataRequestStatus.valueOf(jsonobject.optString("status"));
        if (itemdatarequeststatus == ItemDataResponse.ItemDataRequestStatus.FAILED)
        {
            break MISSING_BLOCK_LABEL_307;
        }
        hashset = new HashSet();
        HashMap hashmap1 = new HashMap();
        JSONArray jsonarray = jsonobject.optJSONArray("unavailableSkus");
        if (jsonarray == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L3:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        hashset.add(jsonarray.getString(i));
        i++;
        if (true) goto _L3; else goto _L2
_L2:
        JSONObject jsonobject1 = jsonobject.optJSONObject("items");
        if (jsonobject1 == null) goto _L5; else goto _L4
_L4:
        String s2;
        for (Iterator iterator = jsonobject1.keys(); iterator.hasNext(); hashmap1.put(s2, getItem(s2, jsonobject1.optJSONObject(s2))))
        {
            s2 = (String)iterator.next();
        }

          goto _L5
        Exception exception3;
        exception3;
        Exception exception1;
        ItemDataResponse.ItemDataRequestStatus itemdatarequeststatus1;
        HashMap hashmap;
        String s;
        hashmap = hashmap1;
        itemdatarequeststatus1 = itemdatarequeststatus;
        s = s1;
        exception1 = exception3;
_L8:
        Log.e("SandboxResponseHandler", "Error parsing item data output", exception1);
_L7:
        return new ItemDataResponse(s, hashset, itemdatarequeststatus1, hashmap);
_L5:
        HashSet hashset1;
        hashmap = hashmap1;
        hashset1 = hashset;
_L9:
        hashset = hashset1;
        itemdatarequeststatus1 = itemdatarequeststatus;
        s = s1;
        if (true) goto _L7; else goto _L6
_L6:
        Exception exception;
        exception;
        exception1 = exception;
        itemdatarequeststatus1 = itemdatarequeststatus;
        hashmap = null;
        hashset = null;
        s = null;
          goto _L8
        Exception exception2;
        exception2;
        ItemDataResponse.ItemDataRequestStatus itemdatarequeststatus2 = itemdatarequeststatus;
        s = s1;
        exception1 = exception2;
        itemdatarequeststatus1 = itemdatarequeststatus2;
        hashmap = null;
        hashset = null;
          goto _L8
        Exception exception4;
        exception4;
        itemdatarequeststatus1 = itemdatarequeststatus;
        s = s1;
        exception1 = exception4;
        hashmap = null;
          goto _L8
        hashmap = null;
        hashset1 = null;
          goto _L9
    }

    private PurchaseResponse getPurchaseResponse(Intent intent)
    {
        PurchaseResponse.PurchaseRequestStatus purchaserequeststatus = PurchaseResponse.PurchaseRequestStatus.FAILED;
        JSONObject jsonobject;
        String s2;
        jsonobject = new JSONObject(intent.getStringExtra("purchaseOutput"));
        s2 = jsonobject.optString("requestId");
        String s1 = s2;
        String s3 = jsonobject.optString("userId");
        String s = s3;
        PurchaseResponse.PurchaseRequestStatus purchaserequeststatus2 = PurchaseResponse.PurchaseRequestStatus.valueOf(jsonobject.optString("purchaseStatus"));
        PurchaseResponse.PurchaseRequestStatus purchaserequeststatus1 = purchaserequeststatus2;
        JSONObject jsonobject1 = jsonobject.optJSONObject("receipt");
        Receipt receipt;
        receipt = null;
        if (jsonobject1 == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        Receipt receipt1 = getReceipt(jsonobject1);
        receipt = receipt1;
_L2:
        return new PurchaseResponse(s1, s, receipt, purchaserequeststatus1);
        Exception exception;
        exception;
        Exception exception1;
        s = null;
        s1 = null;
        purchaserequeststatus1 = purchaserequeststatus;
        exception1 = exception;
_L3:
        Log.e("SandboxResponseHandler", "Error parsing purchase output", exception1);
        receipt = null;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception2;
        exception2;
        exception1 = exception2;
        purchaserequeststatus1 = purchaserequeststatus;
        s = null;
          goto _L3
        Exception exception3;
        exception3;
        purchaserequeststatus1 = purchaserequeststatus;
        exception1 = exception3;
          goto _L3
        exception1;
          goto _L3
    }

    private PurchaseUpdatesResponse getPurchaseUpdatesResponse(Intent intent)
    {
        String s;
        PurchaseUpdatesResponse.PurchaseUpdatesRequestStatus purchaseupdatesrequeststatus;
        s = null;
        purchaseupdatesrequeststatus = PurchaseUpdatesResponse.PurchaseUpdatesRequestStatus.FAILED;
        JSONObject jsonobject;
        String s4;
        jsonobject = new JSONObject(intent.getStringExtra("purchaseUpdatesOutput"));
        s4 = jsonobject.optString("requestId");
        String s5;
        purchaseupdatesrequeststatus = PurchaseUpdatesResponse.PurchaseUpdatesRequestStatus.valueOf(jsonobject.optString("status"));
        s5 = jsonobject.optString("offset");
        boolean flag1 = jsonobject.optBoolean("isMore");
        boolean flag = flag1;
        String s6 = jsonobject.optString("userId");
        if (purchaseupdatesrequeststatus != PurchaseUpdatesResponse.PurchaseUpdatesRequestStatus.SUCCESSFUL) goto _L2; else goto _L1
_L1:
        HashSet hashset2 = new HashSet();
        HashSet hashset3 = new HashSet();
        JSONArray jsonarray = jsonobject.optJSONArray("receipts");
        if (jsonarray == null) goto _L4; else goto _L3
_L3:
        int j = 0;
_L5:
        if (j >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        hashset2.add(getReceipt(jsonarray.optJSONObject(j)));
        j++;
        if (true) goto _L5; else goto _L4
_L4:
        JSONArray jsonarray1 = jsonobject.optJSONArray("revokedSkus");
        int i = 0;
        if (jsonarray1 == null) goto _L7; else goto _L6
_L6:
        if (i >= jsonarray1.length())
        {
            break; /* Loop/switch isn't completed */
        }
        hashset3.add(jsonarray1.getString(i));
        i++;
        if (true) goto _L6; else goto _L7
_L7:
        HashSet hashset4 = hashset2;
_L12:
        HashSet hashset;
        HashSet hashset1;
        String s1;
        String s3;
        s1 = s6;
        hashset = hashset3;
        hashset1 = hashset4;
        s = s4;
        s3 = s5;
_L9:
        return new PurchaseUpdatesResponse(s, s1, purchaseupdatesrequeststatus, hashset1, hashset, Offset.fromString(s3), flag);
        Exception exception;
        exception;
        Exception exception1;
        String s2;
        exception1 = exception;
        hashset = null;
        hashset1 = null;
        flag = false;
        s1 = null;
        s2 = null;
_L10:
        Log.e("SandboxResponseHandler", "Error parsing purchase updates output", exception1);
        s3 = s2;
        if (true) goto _L9; else goto _L8
_L8:
        Exception exception2;
        exception2;
        s = s4;
        exception1 = exception2;
        s2 = null;
        s1 = null;
        hashset1 = null;
        hashset = null;
        flag = false;
          goto _L10
        Exception exception3;
        exception3;
        s2 = s5;
        s = s4;
        exception1 = exception3;
        s1 = null;
        hashset1 = null;
        hashset = null;
        flag = false;
          goto _L10
        Exception exception4;
        exception4;
        s = s4;
        exception1 = exception4;
        s2 = s5;
        s1 = null;
        hashset1 = null;
        hashset = null;
          goto _L10
        Exception exception5;
        exception5;
        s1 = s6;
        s = s4;
        exception1 = exception5;
        s2 = s5;
        hashset1 = null;
        hashset = null;
          goto _L10
        Exception exception7;
        exception7;
        s2 = s5;
        hashset1 = hashset2;
        s1 = s6;
        s = s4;
        exception1 = exception7;
        hashset = null;
          goto _L10
        Exception exception6;
        exception6;
        s = s4;
        exception1 = exception6;
        s1 = s6;
        hashset = hashset3;
        s2 = s5;
        hashset1 = hashset2;
          goto _L10
_L2:
        hashset3 = null;
        hashset4 = null;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private Receipt getReceipt(JSONObject jsonobject)
    {
        String s = jsonobject.optString("sku");
        Item.ItemType itemtype = Item.ItemType.valueOf(jsonobject.optString("itemType"));
        JSONObject jsonobject1 = jsonobject.optJSONObject("subscripionPeriod");
        SubscriptionPeriod subscriptionperiod;
        if (itemtype == Item.ItemType.SUBSCRIPTION)
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
            java.util.Date date = simpledateformat.parse(jsonobject1.optString("startTime"));
            String s1 = jsonobject1.optString("endTime");
            java.util.Date date1 = null;
            if (s1 != null)
            {
                int i = s1.length();
                date1 = null;
                if (i != 0)
                {
                    date1 = simpledateformat.parse(s1);
                }
            }
            subscriptionperiod = new SubscriptionPeriod(date, date1);
        } else
        {
            subscriptionperiod = null;
        }
        return new Receipt(s, itemtype, false, subscriptionperiod, jsonobject.optString("token"));
    }

    private GetUserIdResponse getUserIdResponse(Intent intent)
    {
        GetUserIdResponse.GetUserIdRequestStatus getuseridrequeststatus = GetUserIdResponse.GetUserIdRequestStatus.FAILED;
        JSONObject jsonobject;
        String s2;
        jsonobject = new JSONObject(intent.getStringExtra("userOutput"));
        s2 = jsonobject.optString("requestId");
        String s = s2;
        GetUserIdResponse.GetUserIdRequestStatus getuseridrequeststatus3 = GetUserIdResponse.GetUserIdRequestStatus.valueOf(jsonobject.optString("status"));
        GetUserIdResponse.GetUserIdRequestStatus getuseridrequeststatus1 = getuseridrequeststatus3;
        GetUserIdResponse.GetUserIdRequestStatus getuseridrequeststatus4 = GetUserIdResponse.GetUserIdRequestStatus.SUCCESSFUL;
        String s3;
        s3 = null;
        if (getuseridrequeststatus1 != getuseridrequeststatus4)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        String s4 = jsonobject.optString("userId");
        s3 = s4;
        GetUserIdResponse.GetUserIdRequestStatus getuseridrequeststatus2;
        String s1;
        GetUserIdResponse.GetUserIdRequestStatus getuseridrequeststatus5 = getuseridrequeststatus1;
        s1 = s3;
        getuseridrequeststatus2 = getuseridrequeststatus5;
_L2:
        return new GetUserIdResponse(s, getuseridrequeststatus2, s1);
        Exception exception;
        exception;
        Exception exception1;
        s = null;
        exception1 = exception;
        getuseridrequeststatus1 = getuseridrequeststatus;
_L3:
        Log.e("SandboxResponseHandler", "Error parsing userid output", exception1);
        getuseridrequeststatus2 = getuseridrequeststatus1;
        s1 = null;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception2;
        exception2;
        getuseridrequeststatus1 = getuseridrequeststatus;
        exception1 = exception2;
          goto _L3
        exception1;
          goto _L3
    }

    private void handleItemDataResponse(Intent intent)
    {
        Runnable runnable = new Runnable() {

            final SandboxResponseHandler this$0;
            final ItemDataResponse val$response;

            public void run()
            {
                if (Logger.isTraceOn())
                {
                    Logger.trace("SandboxResponseHandler", (new StringBuilder()).append("Running Runnable for itemDataResponse with requestId: ").append(response.getRequestId()).toString());
                }
                PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
                if (purchasingobserver != null)
                {
                    purchasingobserver.onItemDataResponse(response);
                }
            }

            
            {
                this$0 = SandboxResponseHandler.this;
                response = itemdataresponse;
                super();
            }
        };
        _handler.post(runnable);
    }

    private void handlePurchaseResponse(Intent intent)
    {
        Runnable runnable = new Runnable() {

            final SandboxResponseHandler this$0;
            final PurchaseResponse val$response;

            public void run()
            {
                if (Logger.isTraceOn())
                {
                    Logger.trace("SandboxResponseHandler", (new StringBuilder()).append("Running Runnable for purchaseResponse with requestId: ").append(response.getRequestId()).toString());
                }
                PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
                if (purchasingobserver != null)
                {
                    purchasingobserver.onPurchaseResponse(response);
                }
            }

            
            {
                this$0 = SandboxResponseHandler.this;
                response = purchaseresponse;
                super();
            }
        };
        _handler.post(runnable);
    }

    private void handlePurchaseUpdatesResponse(Intent intent)
    {
        Runnable runnable = new Runnable() {

            final SandboxResponseHandler this$0;
            final PurchaseUpdatesResponse val$response;

            public void run()
            {
                if (Logger.isTraceOn())
                {
                    Logger.trace("SandboxResponseHandler", (new StringBuilder()).append("Running Runnable for purchaseUpdatesResponse with requestId: ").append(response.getRequestId()).toString());
                }
                PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
                if (purchasingobserver != null)
                {
                    purchasingobserver.onPurchaseUpdatesResponse(response);
                }
            }

            
            {
                this$0 = SandboxResponseHandler.this;
                response = purchaseupdatesresponse;
                super();
            }
        };
        _handler.post(runnable);
    }

    private void handleUserIdResponse(Intent intent)
    {
        Runnable runnable = new Runnable() {

            final SandboxResponseHandler this$0;
            final GetUserIdResponse val$response;

            public void run()
            {
                if (Logger.isTraceOn())
                {
                    Logger.trace("SandboxResponseHandler", (new StringBuilder()).append("Running Runnable for userIdResponse with requestId: ").append(response.getRequestId()).toString());
                }
                PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
                if (purchasingobserver != null)
                {
                    purchasingobserver.onGetUserIdResponse(response);
                }
            }

            
            {
                this$0 = SandboxResponseHandler.this;
                response = getuseridresponse;
                super();
            }
        };
        _handler.post(runnable);
    }

    public void handleResponse(Context context, Intent intent)
    {
        String s;
        if (Logger.isTraceOn())
        {
            Logger.trace("SandboxResponseHandler", "handleResponse");
        }
        try
        {
            s = intent.getExtras().getString("responseType");
            if (s.equalsIgnoreCase("com.amazon.testclient.iap.purchase"))
            {
                handlePurchaseResponse(intent);
                return;
            }
        }
        catch (Exception exception)
        {
            Log.e("SandboxResponseHandler", "Error handling response.", exception);
            return;
        }
        if (s.equalsIgnoreCase("com.amazon.testclient.iap.appUserId"))
        {
            handleUserIdResponse(intent);
            return;
        }
        if (s.equalsIgnoreCase("com.amazon.testclient.iap.itemData"))
        {
            handleItemDataResponse(intent);
            return;
        }
        if (s.equalsIgnoreCase("com.amazon.testclient.iap.purchaseUpdates"))
        {
            handlePurchaseUpdatesResponse(intent);
        }
        return;
    }
}
