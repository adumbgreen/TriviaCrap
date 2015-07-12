// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import android.net.Uri;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.Utils;
import com.lifestreet.android.lsmsdk.exceptions.AdapterException;
import com.lifestreet.android.lsmsdk.exceptions.SlotException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            ErrorCode, SlotContext, SlotController

public final class ErrorReporter
{

    private final Throwable mException;
    private final String mMessage;

    public ErrorReporter(Throwable throwable, String s)
    {
        mException = throwable;
        mMessage = s;
    }

    private String getClassName(Throwable throwable)
    {
        StackTraceElement astacktraceelement[] = throwable.getStackTrace();
        String s = null;
        if (astacktraceelement != null)
        {
            s = astacktraceelement[0].getClassName();
        }
        return s;
    }

    private String getErrorCode(Throwable throwable, String s)
    {
        ErrorCode errorcode = ErrorCode.NO_ERROR;
        if (!(throwable instanceof SlotException)) goto _L2; else goto _L1
_L1:
        errorcode = ((SlotException)throwable).getErrorCode();
_L4:
        return String.valueOf(errorcode.toInt());
_L2:
        if (throwable instanceof AdapterException)
        {
            errorcode = ((AdapterException)throwable).getErrorCode();
        } else
        if ("Uncaught exception".equals(s))
        {
            errorcode = ErrorCode.UNHANDLED_EXCEPTION;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private String getLineNumber(Throwable throwable)
    {
        StackTraceElement astacktraceelement[] = throwable.getStackTrace();
        String s = null;
        if (astacktraceelement != null)
        {
            s = String.valueOf(astacktraceelement[0].getLineNumber());
        }
        return s;
    }

    private String getPstTime()
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("MM-dd-yyyy HH:mm:ss", Locale.US);
        simpledateformat.setTimeZone(TimeZone.getTimeZone("US/Pacific"));
        return simpledateformat.format(new Date());
    }

    private SlotContext getSlotContext(Throwable throwable)
    {
        SlotContext slotcontext;
        if (throwable instanceof SlotException)
        {
            slotcontext = ((SlotException)throwable).getSlotContext();
        } else
        {
            boolean flag = throwable instanceof AdapterException;
            slotcontext = null;
            if (flag)
            {
                return ((AdapterException)throwable).getSlotContext();
            }
        }
        return slotcontext;
    }

    private String getSlotTag(SlotContext slotcontext)
    {
        String s = null;
        if (slotcontext != null)
        {
            String s1 = slotcontext.getSlotTag();
            s = null;
            if (s1 != null)
            {
                s = Uri.parse(s1).getLastPathSegment();
            }
        }
        return s;
    }

    public void report()
    {
        SlotContext slotcontext = getSlotContext(mException);
        boolean flag = true;
        if (slotcontext != null && slotcontext.getContext() != null)
        {
            flag = Utils.isConnectionAvailable(slotcontext.getContext());
        }
        if (flag)
        {
            HashMap hashmap;
            String s;
            if (slotcontext != null)
            {
                hashmap = new HashMap(slotcontext.getSlotQueryParams());
            } else
            {
                hashmap = new HashMap();
            }
            hashmap.put("slot", getSlotTag(slotcontext));
            hashmap.put("sdkerror_class", getClassName(mException));
            hashmap.put("sdkerrorline", getLineNumber(mException));
            hashmap.put("sdkerror", getErrorCode(mException, mMessage));
            hashmap.put("sdkerror_reason", mException.getMessage());
            hashmap.put("sdkerror_time", getPstTime());
            s = Utils.getUriWithQueryParams("http://mobile-android.lfstmedia.com/sdkerror", hashmap).toString();
            LSMLogger.LOGGER.info((new StringBuilder()).append("Report error URL: ").append(s).toString());
            Utils.httpGetUrl(s, SlotController.USER_AGENT);
        }
    }
}
