// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.amazon.inapp.purchasing:
//            RequestHandler, Logger, PurchasingManager, Offset, 
//            PurchasingObserver, PurchaseResponse, ItemDataResponse, ContentDownloadResponse, 
//            PurchaseUpdatesResponse

final class SandboxRequestHandler
    implements RequestHandler
{

    private static final String TAG = "SandboxRequestHandler";

    SandboxRequestHandler()
    {
    }

    public void sendContentDownloadRequest(String s, String s1, String s2)
    {
    }

    public void sendGetUserIdRequest(String s)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("SandboxRequestHandler", "sendGetUserIdRequest");
        }
        try
        {
            Bundle bundle = new Bundle();
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("requestId", s);
            jsonobject.put("packageName", PurchasingManager.getObserverContext().getPackageName());
            bundle.putString("userInput", jsonobject.toString());
            Intent intent = new Intent("com.amazon.testclient.iap.appUserId");
            intent.addFlags(0x10000000);
            intent.putExtras(bundle);
            PurchasingManager.getObserverContext().startService(intent);
            return;
        }
        catch (JSONException jsonexception)
        {
            Logger.error("SandboxRequestHandler", "Error in sendGetUserIdRequest.");
        }
    }

    public void sendItemDataRequest(Set set, String s)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("SandboxRequestHandler", "sendItemDataRequest");
        }
        try
        {
            Bundle bundle = new Bundle();
            JSONObject jsonobject = new JSONObject();
            JSONArray jsonarray = new JSONArray(set);
            jsonobject.put("requestId", s);
            jsonobject.put("packageName", PurchasingManager.getObserverContext().getPackageName());
            jsonobject.put("skus", jsonarray);
            bundle.putString("itemDataInput", jsonobject.toString());
            Intent intent = new Intent("com.amazon.testclient.iap.itemData");
            intent.addFlags(0x10000000);
            intent.putExtras(bundle);
            PurchasingManager.getObserverContext().startService(intent);
            return;
        }
        catch (JSONException jsonexception)
        {
            Logger.error("SandboxRequestHandler", "Error in sendItemDataRequest.");
        }
    }

    public void sendPurchaseRequest(String s, String s1)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("SandboxRequestHandler", "sendPurchaseRequest");
        }
        try
        {
            Bundle bundle = new Bundle();
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("sku", s);
            jsonobject.put("requestId", s1);
            jsonobject.put("packageName", PurchasingManager.getObserverContext().getPackageName());
            bundle.putString("purchaseInput", jsonobject.toString());
            Intent intent = new Intent("com.amazon.testclient.iap.purchase");
            intent.addFlags(0x10000000);
            intent.putExtras(bundle);
            PurchasingManager.getObserverContext().startService(intent);
            return;
        }
        catch (JSONException jsonexception)
        {
            Logger.error("SandboxRequestHandler", "Error in sendPurchaseRequest.");
        }
    }

    public void sendPurchaseResponseReceivedRequest(String s)
    {
    }

    public void sendPurchaseUpdatesRequest(Offset offset, String s)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("SandboxRequestHandler", "sendPurchaseUpdatesRequest");
        }
        try
        {
            Bundle bundle = new Bundle();
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("requestId", s);
            jsonobject.put("packageName", PurchasingManager.getObserverContext().getPackageName());
            jsonobject.put("offset", offset.toString());
            bundle.putString("purchaseUpdatesInput", jsonobject.toString());
            Intent intent = new Intent("com.amazon.testclient.iap.purchaseUpdates");
            intent.addFlags(0x10000000);
            intent.putExtras(bundle);
            PurchasingManager.getObserverContext().startService(intent);
            return;
        }
        catch (JSONException jsonexception)
        {
            Logger.error("SandboxRequestHandler", "Error in sendPurchaseUpdatesRequest.");
        }
    }

    // Unreferenced inner class com/amazon/inapp/purchasing/SandboxRequestHandler$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final SandboxRequestHandler this$0;
        final String val$location;
        final String val$sku;

        public void run()
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("SandboxRequestHandler", (new StringBuilder()).append("Running runnable for sentContentDonwloadRequest with sku ").append(sku).append(" and location ").append(location).toString());
            }
            if (PurchasingManager.getPurchasingObserver() == null);
        }

            
            {
                this$0 = SandboxRequestHandler.this;
                sku = s;
                location = s1;
                super();
            }
    }


    // Unreferenced inner class com/amazon/inapp/purchasing/SandboxRequestHandler$2

/* anonymous class */
    class _cls2
        implements Runnable
    {

        final SandboxRequestHandler this$0;
        final String val$requestId;
        final PurchaseResponse val$response;
        final String val$sku;

        public void run()
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("SandboxRequestHandler", (new StringBuilder()).append("Running Runnable for sendPurchaseRequest with requestId: ").append(requestId).append(" sku: ").append(sku).toString());
            }
            PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
            if (purchasingobserver != null)
            {
                purchasingobserver.onPurchaseResponse(response);
            }
        }

            
            {
                this$0 = SandboxRequestHandler.this;
                requestId = s;
                sku = s1;
                response = purchaseresponse;
                super();
            }
    }


    // Unreferenced inner class com/amazon/inapp/purchasing/SandboxRequestHandler$3

/* anonymous class */
    class _cls3
        implements Runnable
    {

        final SandboxRequestHandler this$0;
        final ItemDataResponse val$response;
        final Set val$skus;

        public void run()
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("SandboxRequestHandler", (new StringBuilder()).append("Running Runnable for sendItemDataRequest with SKUs: ").append(skus).toString());
            }
            PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
            if (purchasingobserver != null)
            {
                purchasingobserver.onItemDataResponse(response);
            }
        }

            
            {
                this$0 = SandboxRequestHandler.this;
                skus = set;
                response = itemdataresponse;
                super();
            }
    }


    // Unreferenced inner class com/amazon/inapp/purchasing/SandboxRequestHandler$4

/* anonymous class */
    class _cls4
        implements Runnable
    {

        final SandboxRequestHandler this$0;
        final String val$location;
        final ContentDownloadResponse val$response;
        final String val$sku;

        public void run()
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("SandboxRequestHandler", (new StringBuilder()).append("Running runnable for sentContentDonwloadRequest with sku ").append(sku).append(" and location ").append(location).toString());
            }
            PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
            if (purchasingobserver != null)
            {
                purchasingobserver.onContentDownloadResponse(response);
            }
        }

            
            {
                this$0 = SandboxRequestHandler.this;
                sku = s;
                location = s1;
                response = contentdownloadresponse;
                super();
            }
    }


    // Unreferenced inner class com/amazon/inapp/purchasing/SandboxRequestHandler$5

/* anonymous class */
    class _cls5
        implements Runnable
    {

        final SandboxRequestHandler this$0;
        final Offset val$offset;
        final PurchaseUpdatesResponse val$response;

        public void run()
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("SandboxRequestHandler", (new StringBuilder()).append("Running runnable for sendPurchaseUpdatesRequest with offset ").append(offset.toString()).toString());
            }
            PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
            if (purchasingobserver != null)
            {
                purchasingobserver.onPurchaseUpdatesResponse(response);
            }
        }

            
            {
                this$0 = SandboxRequestHandler.this;
                offset = offset1;
                response = purchaseupdatesresponse;
                super();
            }
    }

}
