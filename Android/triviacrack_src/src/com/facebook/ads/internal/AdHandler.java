// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;

import android.content.Context;
import android.os.Handler;

// Referenced classes of package com.facebook.ads.internal:
//            AdUtilities, AdDataModel

public abstract class AdHandler
{

    protected AdDataModel adDataModel;
    private Context context;
    private final Handler handler = new Handler();
    protected final ImpressionHelper impressionHelper;
    private volatile boolean impressionRetryScheduled;
    private volatile boolean impressionSent;
    private final long sendImpressionDelay;
    private final Runnable sendImpressionRunnable = new Runnable() {

        final AdHandler this$0;

        public void run()
        {
            impressionRetryScheduled = false;
            trySendImpression();
        }

            
            {
                this$0 = AdHandler.this;
                super();
            }
    };

    public AdHandler(ImpressionHelper impressionhelper, long l, Context context1)
    {
        context = context1;
        impressionHelper = impressionhelper;
        sendImpressionDelay = l;
    }

    public void cancelImpressionRetry()
    {
        this;
        JVM INSTR monitorenter ;
        if (impressionRetryScheduled)
        {
            handler.removeCallbacks(sendImpressionRunnable);
            impressionRetryScheduled = false;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public AdDataModel getAdDataModel()
    {
        return adDataModel;
    }

    public void scheduleImpressionRetry()
    {
        this;
        JVM INSTR monitorenter ;
        if (impressionSent || impressionRetryScheduled) goto _L2; else goto _L1
_L1:
        AdDataModel addatamodel = adDataModel;
        if (addatamodel != null) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        handler.postDelayed(sendImpressionRunnable, sendImpressionDelay);
        impressionRetryScheduled = true;
        if (true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    protected abstract void sendImpression();

    public void setAdDataModel(AdDataModel addatamodel)
    {
        adDataModel = addatamodel;
        impressionSent = false;
        impressionRetryScheduled = false;
    }

    public void trySendImpression()
    {
        this;
        JVM INSTR monitorenter ;
        if (adDataModel == null) goto _L2; else goto _L1
_L1:
        boolean flag = impressionSent;
        if (!flag) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        if (impressionHelper == null || impressionHelper.shouldSendImpression())
        {
            break MISSING_BLOCK_LABEL_52;
        }
        scheduleImpressionRetry();
          goto _L2
        Exception exception;
        exception;
        throw exception;
        if (impressionHelper != null)
        {
            impressionHelper.onLoggingImpression();
        }
        sendImpression();
        impressionSent = true;
        AdUtilities.displayDebugMessage(context, "Impression logged");
          goto _L2
    }


/*
    static boolean access$002(AdHandler adhandler, boolean flag)
    {
        adhandler.impressionRetryScheduled = flag;
        return flag;
    }

*/

    private class ImpressionHelper
    {

        public abstract void afterImpressionSent();

        public abstract void onLoggingImpression();

        public abstract boolean shouldSendImpression();
    }

}
