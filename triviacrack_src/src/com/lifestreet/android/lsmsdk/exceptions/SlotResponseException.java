// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.exceptions;

import com.lifestreet.android.lsmsdk.ErrorCode;
import com.lifestreet.android.lsmsdk.SlotContext;

// Referenced classes of package com.lifestreet.android.lsmsdk.exceptions:
//            SlotException

public class SlotResponseException extends SlotException
{

    public SlotResponseException(ErrorCode errorcode, String s)
    {
        this(errorcode, s, null);
    }

    public SlotResponseException(ErrorCode errorcode, String s, SlotContext slotcontext)
    {
        super(errorcode, s, slotcontext);
    }

    public SlotResponseException(String s, SlotContext slotcontext)
    {
        this(ErrorCode.NETWORK_INFO_INVALID, s, slotcontext);
    }
}
