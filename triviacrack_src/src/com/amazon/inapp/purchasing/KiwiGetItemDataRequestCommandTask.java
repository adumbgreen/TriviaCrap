// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import com.amazon.venezia.command.SuccessResult;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.amazon.inapp.purchasing:
//            KiwiBaseCommandTask, ItemDataResponse, Logger, Item, 
//            PurchasingManager, PurchasingObserver

final class KiwiGetItemDataRequestCommandTask extends KiwiBaseCommandTask
{

    private static final String COMMAND_NAME = "getItem_data";
    private static final String COMMAND_VERSION = "1.0";
    private static final String TAG = "KiwiGetItemDataRequestCommandTask";
    private final Set _skus;

    KiwiGetItemDataRequestCommandTask(Set set, String s)
    {
        super("getItem_data", "1.0", s);
        _skus = set;
        addCommandData("skus", _skus);
    }

    private ItemDataResponse getFailedResponse()
    {
        return new ItemDataResponse(getRequestId(), null, ItemDataResponse.ItemDataRequestStatus.FAILED, null);
    }

    private void notifyObserver(final ItemDataResponse itemDataResponse)
    {
        postRunnableToMainLooper(new Runnable() {

            final KiwiGetItemDataRequestCommandTask this$0;
            final ItemDataResponse val$itemDataResponse;

            public void run()
            {
                PurchasingObserver purchasingobserver = PurchasingManager.getPurchasingObserver();
                if (purchasingobserver != null)
                {
                    if (Logger.isTraceOn())
                    {
                        Logger.trace("KiwiGetItemDataRequestCommandTask", (new StringBuilder()).append("Invoking onItemDataResponse with ").append(itemDataResponse).toString());
                    }
                    purchasingobserver.onItemDataResponse(itemDataResponse);
                }
            }

            
            {
                this$0 = KiwiGetItemDataRequestCommandTask.this;
                itemDataResponse = itemdataresponse;
                super();
            }
        });
    }

    protected void onSuccess(SuccessResult successresult)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiGetItemDataRequestCommandTask", "onSuccess");
        }
        Map map = successresult.getData();
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiGetItemDataRequestCommandTask", (new StringBuilder()).append("data: ").append(map).toString());
        }
        String s = (String)map.get("errorMessage");
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiGetItemDataRequestCommandTask", (new StringBuilder()).append("onSuccess: errorMessage: \"").append(s).append("\"").toString());
        }
        if (isNullOrEmpty(s))
        {
            HashSet hashset = new HashSet();
            HashMap hashmap = new HashMap();
            Iterator iterator = _skus.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s1 = (String)iterator.next();
                if (!map.containsKey(s1))
                {
                    hashset.add(s1);
                } else
                {
                    try
                    {
                        JSONObject jsonobject = new JSONObject((String)map.get(s1));
                        String s2 = jsonobject.getString("title");
                        String s3 = jsonobject.getString("description");
                        String s4 = jsonobject.getString("iconUrl");
                        hashmap.put(s1, new Item(s1, jsonobject.optString("price"), Item.ItemType.valueOf(jsonobject.getString("itemType")), s2, s3, s4));
                    }
                    catch (JSONException jsonexception)
                    {
                        hashset.add(s1);
                        if (Logger.isErrorOn())
                        {
                            Logger.error("KiwiGetItemDataRequestCommandTask", (new StringBuilder()).append("Error parsing JSON for SKU ").append(s1).append(": ").append(jsonexception.getMessage()).toString());
                        }
                    }
                }
            } while (true);
            ItemDataResponse.ItemDataRequestStatus itemdatarequeststatus;
            if (hashset.isEmpty())
            {
                itemdatarequeststatus = ItemDataResponse.ItemDataRequestStatus.SUCCESSFUL;
            } else
            {
                itemdatarequeststatus = ItemDataResponse.ItemDataRequestStatus.SUCCESSFUL_WITH_UNAVAILABLE_SKUS;
            }
            notifyObserver(new ItemDataResponse(getRequestId(), hashset, itemdatarequeststatus, hashmap));
            return;
        }
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiGetItemDataRequestCommandTask", (new StringBuilder()).append("found error message: ").append(s).toString());
        }
        sendFailedResponse();
    }

    protected void sendFailedResponse()
    {
        notifyObserver(getFailedResponse());
    }
}
