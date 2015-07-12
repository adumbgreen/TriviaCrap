// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.exceptions;

import com.lifestreet.android.lsmsdk.AdType;
import com.lifestreet.android.lsmsdk.ErrorCode;
import com.lifestreet.android.lsmsdk.SlotContext;

public class AdapterException extends Exception
{

    private ErrorCode mErrorCode;
    private SlotContext mSlotContext;

    public AdapterException(String s)
    {
        super(s);
    }

    private ErrorCode getErrorCode(AdType adtype)
    {
        if (adtype == AdType.INTERSTITIAL)
        {
            return ErrorCode.LOAD_NEXT_INTERSTITIAL_ADAPTER_EXCEPTION;
        } else
        {
            return ErrorCode.LOAD_NEXT_ADAPTER_EXCEPTION;
        }
    }

    public ErrorCode getErrorCode()
    {
        return mErrorCode;
    }

    public SlotContext getSlotContext()
    {
        return mSlotContext;
    }

    public void setErrorCode(AdType adtype)
    {
        mErrorCode = getErrorCode(adtype);
    }

    public void setErrorCode(ErrorCode errorcode)
    {
        mErrorCode = errorcode;
    }

    public void setSlotContext(SlotContext slotcontext)
    {
        mSlotContext = slotcontext;
    }
}
