// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.adapters;

import com.lifestreet.android.lsmsdk.Adapter;
import com.lifestreet.android.lsmsdk.commons.AsyncHttpTaskListener;
import com.lifestreet.android.lsmsdk.commons.AsyncHttpTaskResponse;
import com.lifestreet.android.lsmsdk.commons.LSMLogger;
import com.lifestreet.android.lsmsdk.commons.StringUtils;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.adapters:
//            LSMParameters, Lifestreet2Parameters

public abstract class Lifestreet2AbstractAdapter
    implements Adapter, AsyncHttpTaskListener
{

    private boolean mDestroyed;

    public Lifestreet2AbstractAdapter()
    {
        mDestroyed = false;
    }

    protected LSMParameters createLSMParameters(String s, String s1, String s2)
    {
        LSMParameters lsmparameters = new LSMParameters();
        lsmparameters.html = s;
        lsmparameters.baseUrl = s1;
        lsmparameters.showCloseButton = s2;
        return lsmparameters;
    }

    public Class getParametersClass()
    {
        return com/lifestreet/android/lsmsdk/adapters/Lifestreet2Parameters;
    }

    protected boolean isInvalidContentType(AsyncHttpTaskResponse asynchttptaskresponse)
    {
        String s = asynchttptaskresponse.getContentType();
        return s == null || !StringUtils.containsIgnoreCase(s, "html");
    }

    protected boolean isMraid(String s)
    {
        return StringUtils.containsIgnoreCase(s, "mraid");
    }

    public void onDestroy()
    {
        LSMLogger.LOGGER.info("onDestroy");
        mDestroyed = true;
    }

    public boolean shouldCancelAsyncHttpTask()
    {
        return mDestroyed;
    }

    protected boolean slotTagIsNotValid(String s)
    {
        return !StringUtils.containsIgnoreCase(s, "lfstmedia.com");
    }
}
