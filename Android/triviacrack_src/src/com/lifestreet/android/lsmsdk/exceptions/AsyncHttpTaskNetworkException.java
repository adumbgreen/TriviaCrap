// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.exceptions;

import com.lifestreet.android.lsmsdk.ErrorCode;

// Referenced classes of package com.lifestreet.android.lsmsdk.exceptions:
//            AsyncHttpTaskException

public class AsyncHttpTaskNetworkException extends AsyncHttpTaskException
{

    public AsyncHttpTaskNetworkException(String s)
    {
        super(ErrorCode.NO_ERROR, (new StringBuilder()).append("Network error: ").append(s).toString(), null);
    }
}
