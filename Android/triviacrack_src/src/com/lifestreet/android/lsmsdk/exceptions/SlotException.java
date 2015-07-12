// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.exceptions;

import com.lifestreet.android.lsmsdk.ErrorCode;
import com.lifestreet.android.lsmsdk.SlotContext;

public class SlotException extends Exception
{

    private final ErrorCode mErrorCode;
    private final SlotContext mSlotContext;

    public SlotException(ErrorCode errorcode, String s, SlotContext slotcontext)
    {
        super(s);
        mErrorCode = errorcode;
        mSlotContext = slotcontext;
    }

    public ErrorCode getErrorCode()
    {
        return mErrorCode;
    }

    public SlotContext getSlotContext()
    {
        return mSlotContext;
    }
}
