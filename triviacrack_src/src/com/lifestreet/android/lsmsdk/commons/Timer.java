// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk.commons;

import android.os.Handler;
import android.os.Looper;
import java.util.logging.Logger;

// Referenced classes of package com.lifestreet.android.lsmsdk.commons:
//            LSMLogger

public final class Timer
{

    private static final Handler sTimerHandler = new Handler(Looper.getMainLooper());
    private long mDelay;
    private final Event mEventListener;
    private long mLastTimeMillis;
    private final TimerEvent mTimerEvent;

    public Timer(Event event)
    {
        mDelay = 0L;
        mLastTimeMillis = -1L;
        mTimerEvent = new TimerEvent();
        mEventListener = event;
    }

    public Timer(Event event, long l)
    {
        this(event);
        mDelay = l;
    }

    public long getDelay()
    {
        return mDelay;
    }

    public void pause()
    {
        if (mLastTimeMillis != -1L)
        {
            long l = System.currentTimeMillis() - mLastTimeMillis;
            int i = (int)(mDelay - l / 1000L);
            if (i >= 0)
            {
                mDelay = i;
            }
            stop();
        }
    }

    public void setDelay(long l)
    {
        mDelay = l;
    }

    public void start(boolean flag)
    {
        if (mDelay <= 0L)
        {
            LSMLogger.LOGGER.warning("Timer delay can't be less or equals zero");
            return;
        } else
        {
            stop();
            mLastTimeMillis = System.currentTimeMillis();
            mTimerEvent.setForceRefresh(flag);
            sTimerHandler.postDelayed(mTimerEvent, 1000L * mDelay);
            return;
        }
    }

    public void stop()
    {
        mLastTimeMillis = -1L;
        sTimerHandler.removeCallbacks(mTimerEvent);
    }



    private class TimerEvent
        implements Runnable
    {

        private boolean mForceRefresh;
        final Timer this$0;

        public void run()
        {
            if (mEventListener != null)
            {
                mEventListener.onTimerEvent(Timer.this, mForceRefresh);
            }
        }

        public void setForceRefresh(boolean flag)
        {
            mForceRefresh = flag;
        }

        private TimerEvent()
        {
            this$0 = Timer.this;
            super();
            mForceRefresh = false;
        }


        private class Event
        {

            public abstract void onTimerEvent(Timer timer, boolean flag);
        }

    }

}
