// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.exceptions;

import com.lifestreet.android.lsmsdk.ErrorCode;
import com.lifestreet.android.lsmsdk.SlotContext;

// Referenced classes of package com.lifestreet.android.lsmsdk.exceptions:
//            SlotResponseException

public final class InvalidNetworkParameterException extends SlotResponseException
{

    public InvalidNetworkParameterException(ErrorCode errorcode, String s, SlotContext slotcontext)
    {
        super(errorcode, s, slotcontext);
    }

    public InvalidNetworkParameterException(String s, SlotContext slotcontext)
    {
        super(s, slotcontext);
    }
}
