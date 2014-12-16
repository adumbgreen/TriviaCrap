// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.exceptions;

import com.lifestreet.android.lsmsdk.ErrorCode;

// Referenced classes of package com.lifestreet.android.lsmsdk.exceptions:
//            AsyncHttpTaskException

public final class AsyncHttpTaskCanceledException extends AsyncHttpTaskException
{

    public AsyncHttpTaskCanceledException()
    {
        super(ErrorCode.NO_ERROR, "Http task has been cancelled", null);
    }
}
