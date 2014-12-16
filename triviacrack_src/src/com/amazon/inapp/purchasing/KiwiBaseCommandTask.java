// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import com.amazon.android.Kiwi;
import com.amazon.android.framework.exception.KiwiException;
import com.amazon.android.framework.prompt.PromptContent;
import com.amazon.android.framework.prompt.PromptManager;
import com.amazon.android.framework.task.command.AbstractCommandTask;
import com.amazon.android.licensing.LicenseFailurePromptContentMapper;
import com.amazon.venezia.command.FailureResult;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.amazon.inapp.purchasing:
//            Receipt, SubscriptionPeriod, Logger, FailurePrompt, 
//            HandlerManager, HandlerAdapter

abstract class KiwiBaseCommandTask extends AbstractCommandTask
{

    private static final String DATE_FORMAT = "MM/dd/yyyy HH:mm:ss";
    protected static final String FALSE = "false";
    protected static final String KEY_CURSOR = "cursor";
    protected static final String KEY_DESCRIPTION = "description";
    protected static final String KEY_ERROR_MESSAGE = "errorMessage";
    protected static final String KEY_HAS_CONTENT = "hasContent";
    protected static final String KEY_HAS_MORE = "hasMore";
    protected static final String KEY_ICON_URL = "iconUrl";
    protected static final String KEY_ITEM_TYPE = "itemType";
    protected static final String KEY_ORDER_STATUS = "orderStatus";
    protected static final String KEY_PERIOD_DATE_END = "endDate";
    protected static final String KEY_PERIOD_DATE_START = "startDate";
    protected static final String KEY_PRICE = "price";
    protected static final String KEY_PURCHASE_ITEM_INTENT = "purchaseItemIntent";
    protected static final String KEY_RECEIPT = "receipt";
    protected static final String KEY_RECEIPTS = "receipts";
    protected static final String KEY_REQUEST_ID = "requestId";
    protected static final String KEY_REVOCATIONS = "revocations";
    protected static final String KEY_SDK_VERSION = "sdkVersion";
    protected static final String KEY_SIGNATURE = "signature";
    protected static final String KEY_SKU = "sku";
    protected static final String KEY_SKUS = "skus";
    protected static final String KEY_TITLE = "title";
    protected static final String KEY_TOKEN = "token";
    protected static final String KEY_USER_ID = "userId";
    protected static final String SDK_VERSION = "1.0";
    private static final String TAG = "KiwiBaseCommandTask";
    protected static final String TRUE = "true";
    private final Map _commandData = new HashMap();
    private final String _commandName;
    private final String _commandVersion;
    private final String _requestId;
    private LicenseFailurePromptContentMapper mapper;

    KiwiBaseCommandTask(String s, String s1, String s2)
    {
        mapper = new LicenseFailurePromptContentMapper();
        _requestId = s2;
        _commandName = s;
        _commandVersion = s1;
        _commandData.put("requestId", _requestId);
        _commandData.put("sdkVersion", "1.0");
    }

    protected void addCommandData(String s, Object obj)
    {
        _commandData.put(s, obj);
    }

    protected Map getCommandData()
    {
        return _commandData;
    }

    protected String getCommandName()
    {
        return _commandName;
    }

    protected String getCommandVersion()
    {
        return _commandVersion;
    }

    protected Date getDateFromString(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
        Date date;
        long l;
        try
        {
            date = simpledateformat.parse(s);
            l = date.getTime();
        }
        catch (ParseException parseexception)
        {
            throw new JSONException(parseexception.getMessage());
        }
        if (0L == l)
        {
            date = null;
        }
        return date;
    }

    protected Receipt getReceiptFromReceiptJson(JSONObject jsonobject)
    {
        String s = jsonobject.getString("sku");
        Item.ItemType itemtype = Item.ItemType.valueOf(jsonobject.getString("itemType"));
        String s1 = jsonobject.getString("token");
        SubscriptionPeriod subscriptionperiod;
        if (Item.ItemType.SUBSCRIPTION == itemtype)
        {
            subscriptionperiod = getSubscriptionPeriodFromReceiptJson(jsonobject);
        } else
        {
            subscriptionperiod = null;
        }
        return new Receipt(s, itemtype, false, subscriptionperiod, s1);
    }

    protected String getRequestId()
    {
        return _requestId;
    }

    protected SubscriptionPeriod getSubscriptionPeriodFromReceiptJson(JSONObject jsonobject)
    {
        if (!jsonobject.has("startDate"))
        {
            return null;
        }
        Date date = getDateFromString(jsonobject.getString("startDate"));
        String s = jsonobject.optString("endDate");
        boolean flag = isNullOrEmpty(s);
        Date date1 = null;
        if (!flag)
        {
            date1 = getDateFromString(s);
        }
        return new SubscriptionPeriod(date, date1);
    }

    protected boolean isExecutionNeeded()
    {
        return true;
    }

    protected boolean isNullOrEmpty(String s)
    {
        return s == null || s.trim().length() == 0;
    }

    protected void onException(KiwiException kiwiexception)
    {
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiBaseCommandTask", (new StringBuilder()).append("onException, result: ").append(kiwiexception.getMessage()).toString());
        }
        PromptManager promptmanager = Kiwi.getPromptManager();
        PromptContent promptcontent = mapper.map(kiwiexception);
        if (promptcontent != null)
        {
            promptmanager.present(new FailurePrompt(promptcontent));
        }
        sendFailedResponse();
    }

    protected void onFailure(FailureResult failureresult)
    {
        if (failureresult == null)
        {
            if (Logger.isTraceOn())
            {
                Logger.trace("KiwiBaseCommandTask", "onFailure: null result");
            }
            return;
        }
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiBaseCommandTask", (new StringBuilder()).append("onFailure: result message: ").append(failureresult.getDisplayableMessage()).toString());
        }
        FailurePrompt failureprompt = new FailurePrompt(new PromptContent(failureresult.getDisplayableName(), failureresult.getDisplayableMessage(), failureresult.getButtonLabel(), failureresult.show()));
        Kiwi.getPromptManager().present(failureprompt);
        sendFailedResponse();
    }

    protected void postRunnableToMainLooper(Runnable runnable)
    {
        HandlerManager.getMainHandlerAdapter().post(runnable);
    }

    protected abstract void sendFailedResponse();

    protected boolean verifyReceipt(String s, Receipt receipt, JSONObject jsonobject)
    {
        String s1;
        if (Logger.isTraceOn())
        {
            Logger.trace("KiwiBaseCommandTask", (new StringBuilder()).append("Validating receipt: ").append(receipt).toString());
        }
        s1 = jsonobject.optString("signature");
        if (isNullOrEmpty(s1)) goto _L2; else goto _L1
_L1:
        boolean flag1;
        boolean flag2;
        flag2 = verifySignature(s, receipt.getPurchaseToken(), s1);
        if (!Logger.isTraceOn())
        {
            break MISSING_BLOCK_LABEL_178;
        }
        StringBuilder stringbuilder = (new StringBuilder()).append("signature verification ");
        String s2;
        if (flag2)
        {
            s2 = "succeeded";
        } else
        {
            s2 = "failed";
        }
        Logger.error("KiwiBaseCommandTask", stringbuilder.append(s2).append(" for request ID ").append(getRequestId()).toString());
        flag1 = flag2;
_L4:
        return flag1;
_L2:
        boolean flag;
        flag = Logger.isTraceOn();
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        Logger.error("KiwiBaseCommandTask", (new StringBuilder()).append("a signature was not found in the receipt for request ID ").append(getRequestId()).toString());
        return false;
        return flag2;
    }

    protected boolean verifySignature(String s, String s1, String s2)
    {
        return Kiwi.isSignedByKiwi((new StringBuilder()).append(s).append("-").append(s1).toString(), s2);
    }
}
