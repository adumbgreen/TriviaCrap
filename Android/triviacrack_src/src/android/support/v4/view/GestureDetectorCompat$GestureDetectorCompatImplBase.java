// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

// Referenced classes of package android.support.v4.view:
//            MotionEventCompat, VelocityTrackerCompat

class init
    implements init
{

    private static final int DOUBLE_TAP_TIMEOUT = 0;
    private static final int LONGPRESS_TIMEOUT = 0;
    private static final int LONG_PRESS = 2;
    private static final int SHOW_PRESS = 1;
    private static final int TAP = 3;
    private static final int TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
    private boolean mAlwaysInBiggerTapRegion;
    private boolean mAlwaysInTapRegion;
    private MotionEvent mCurrentDownEvent;
    private boolean mDeferConfirmSingleTap;
    private android.view.atImplBase.DOUBLE_TAP_TIMEOUT mDoubleTapListener;
    private int mDoubleTapSlopSquare;
    private float mDownFocusX;
    private float mDownFocusY;
    private final Handler mHandler;
    private boolean mInLongPress;
    private boolean mIsDoubleTapping;
    private boolean mIsLongpressEnabled;
    private float mLastFocusX;
    private float mLastFocusY;
    private final android.view.atImplBase.DOUBLE_TAP_TIMEOUT mListener;
    private int mMaximumFlingVelocity;
    private int mMinimumFlingVelocity;
    private MotionEvent mPreviousUpEvent;
    private boolean mStillDown;
    private int mTouchSlopSquare;
    private VelocityTracker mVelocityTracker;

    private void cancel()
    {
        mHandler.removeMessages(1);
        mHandler.removeMessages(2);
        mHandler.removeMessages(3);
        mVelocityTracker.recycle();
        mVelocityTracker = null;
        mIsDoubleTapping = false;
        mStillDown = false;
        mAlwaysInTapRegion = false;
        mAlwaysInBiggerTapRegion = false;
        mDeferConfirmSingleTap = false;
        if (mInLongPress)
        {
            mInLongPress = false;
        }
    }

    private void cancelTaps()
    {
        mHandler.removeMessages(1);
        mHandler.removeMessages(2);
        mHandler.removeMessages(3);
        mIsDoubleTapping = false;
        mAlwaysInTapRegion = false;
        mAlwaysInBiggerTapRegion = false;
        mDeferConfirmSingleTap = false;
        if (mInLongPress)
        {
            mInLongPress = false;
        }
    }

    private void dispatchLongPress()
    {
        mHandler.removeMessages(3);
        mDeferConfirmSingleTap = false;
        mInLongPress = true;
        mListener.mListener(mCurrentDownEvent);
    }

    private void init(Context context)
    {
        if (context == null)
        {
            throw new IllegalArgumentException("Context must not be null");
        }
        if (mListener == null)
        {
            throw new IllegalArgumentException("OnGestureListener must not be null");
        } else
        {
            mIsLongpressEnabled = true;
            ViewConfiguration viewconfiguration = ViewConfiguration.get(context);
            int i = viewconfiguration.getScaledTouchSlop();
            int j = viewconfiguration.getScaledDoubleTapSlop();
            mMinimumFlingVelocity = viewconfiguration.getScaledMinimumFlingVelocity();
            mMaximumFlingVelocity = viewconfiguration.getScaledMaximumFlingVelocity();
            mTouchSlopSquare = i * i;
            mDoubleTapSlopSquare = j * j;
            return;
        }
    }

    private boolean isConsideredDoubleTap(MotionEvent motionevent, MotionEvent motionevent1, MotionEvent motionevent2)
    {
        if (mAlwaysInBiggerTapRegion && motionevent2.getEventTime() - motionevent1.getEventTime() <= (long)DOUBLE_TAP_TIMEOUT)
        {
            int i = (int)motionevent.getX() - (int)motionevent2.getX();
            int j = (int)motionevent.getY() - (int)motionevent2.getY();
            if (i * i + j * j < mDoubleTapSlopSquare)
            {
                return true;
            }
        }
        return false;
    }

    public boolean isLongpressEnabled()
    {
        return mIsLongpressEnabled;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int k;
        float f2;
        float f3;
        int i = motionevent.getAction();
        if (mVelocityTracker == null)
        {
            mVelocityTracker = VelocityTracker.obtain();
        }
        mVelocityTracker.addMovement(motionevent);
        boolean flag;
        int j;
        int l;
        float f;
        float f1;
        if ((i & 0xff) == 6)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            j = MotionEventCompat.getActionIndex(motionevent);
        } else
        {
            j = -1;
        }
        k = MotionEventCompat.getPointerCount(motionevent);
        l = 0;
        f = 0.0F;
        f1 = 0.0F;
        while (l < k) 
        {
            if (j != l)
            {
                f1 += MotionEventCompat.getX(motionevent, l);
                f += MotionEventCompat.getY(motionevent, l);
            }
            l++;
        }
        int i1;
        if (flag)
        {
            i1 = k - 1;
        } else
        {
            i1 = k;
        }
        f2 = f1 / (float)i1;
        f3 = f / (float)i1;
        i & 0xff;
        JVM INSTR tableswitch 0 6: default 192
    //                   0 376
    //                   1 867
    //                   2 640
    //                   3 1135
    //                   4 192
    //                   5 201
    //                   6 231;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L7
_L1:
        return false;
_L6:
        mLastFocusX = f2;
        mDownFocusX = f2;
        mLastFocusY = f3;
        mDownFocusY = f3;
        cancelTaps();
        return false;
_L7:
        int j2;
        float f8;
        float f9;
        int l2;
        mLastFocusX = f2;
        mDownFocusX = f2;
        mLastFocusY = f3;
        mDownFocusY = f3;
        mVelocityTracker.computeCurrentVelocity(1000, mMaximumFlingVelocity);
        j2 = MotionEventCompat.getActionIndex(motionevent);
        int k2 = MotionEventCompat.getPointerId(motionevent, j2);
        f8 = VelocityTrackerCompat.getXVelocity(mVelocityTracker, k2);
        f9 = VelocityTrackerCompat.getYVelocity(mVelocityTracker, k2);
        l2 = 0;
_L11:
        if (l2 >= k) goto _L1; else goto _L8
_L8:
        if (l2 != j2) goto _L10; else goto _L9
_L9:
        int i3;
        l2++;
          goto _L11
_L10:
        if (f8 * VelocityTrackerCompat.getXVelocity(mVelocityTracker, i3 = MotionEventCompat.getPointerId(motionevent, l2)) + f9 * VelocityTrackerCompat.getYVelocity(mVelocityTracker, i3) >= 0.0F) goto _L9; else goto _L12
_L12:
        mVelocityTracker.clear();
        return false;
_L2:
        if (mDoubleTapListener == null) goto _L14; else goto _L13
_L13:
        boolean flag5;
        flag5 = mHandler.hasMessages(3);
        if (flag5)
        {
            mHandler.removeMessages(3);
        }
        if (mCurrentDownEvent == null || mPreviousUpEvent == null || !flag5 || !isConsideredDoubleTap(mCurrentDownEvent, mPreviousUpEvent, motionevent)) goto _L16; else goto _L15
_L15:
        boolean flag4;
        mIsDoubleTapping = true;
        flag4 = false | mDoubleTapListener.mDoubleTapListener(mCurrentDownEvent) | mDoubleTapListener.(motionevent);
_L17:
        mLastFocusX = f2;
        mDownFocusX = f2;
        mLastFocusY = f3;
        mDownFocusY = f3;
        if (mCurrentDownEvent != null)
        {
            mCurrentDownEvent.recycle();
        }
        mCurrentDownEvent = MotionEvent.obtain(motionevent);
        mAlwaysInTapRegion = true;
        mAlwaysInBiggerTapRegion = true;
        mStillDown = true;
        mInLongPress = false;
        mDeferConfirmSingleTap = false;
        if (mIsLongpressEnabled)
        {
            mHandler.removeMessages(2);
            mHandler.sendEmptyMessageAtTime(2, mCurrentDownEvent.getDownTime() + (long)TAP_TIMEOUT + (long)LONGPRESS_TIMEOUT);
        }
        mHandler.sendEmptyMessageAtTime(1, mCurrentDownEvent.getDownTime() + (long)TAP_TIMEOUT);
        return flag4 | mListener.mListener(motionevent);
_L16:
        mHandler.sendEmptyMessageDelayed(3, DOUBLE_TAP_TIMEOUT);
_L14:
        flag4 = false;
          goto _L17
_L4:
        if (!mInLongPress)
        {
            float f6 = mLastFocusX - f2;
            float f7 = mLastFocusY - f3;
            if (mIsDoubleTapping)
            {
                return false | mDoubleTapListener.(motionevent);
            }
            if (mAlwaysInTapRegion)
            {
                int k1 = (int)(f2 - mDownFocusX);
                int l1 = (int)(f3 - mDownFocusY);
                int i2 = k1 * k1 + l1 * l1;
                MotionEvent motionevent1;
                VelocityTracker velocitytracker;
                int j1;
                float f4;
                float f5;
                boolean flag1;
                boolean flag2;
                boolean flag3;
                if (i2 > mTouchSlopSquare)
                {
                    flag3 = mListener.mListener(mCurrentDownEvent, motionevent, f6, f7);
                    mLastFocusX = f2;
                    mLastFocusY = f3;
                    mAlwaysInTapRegion = false;
                    mHandler.removeMessages(3);
                    mHandler.removeMessages(1);
                    mHandler.removeMessages(2);
                } else
                {
                    flag3 = false;
                }
                if (i2 > mTouchSlopSquare)
                {
                    mAlwaysInBiggerTapRegion = false;
                }
                return flag3;
            }
            if (Math.abs(f6) >= 1.0F || Math.abs(f7) >= 1.0F)
            {
                flag2 = mListener.mListener(mCurrentDownEvent, motionevent, f6, f7);
                mLastFocusX = f2;
                mLastFocusY = f3;
                return flag2;
            }
        }
          goto _L1
_L3:
        mStillDown = false;
        motionevent1 = MotionEvent.obtain(motionevent);
        if (mIsDoubleTapping)
        {
            flag1 = false | mDoubleTapListener.(motionevent);
        } else
        if (mInLongPress)
        {
            mHandler.removeMessages(3);
            mInLongPress = false;
            flag1 = false;
        } else
        if (mAlwaysInTapRegion)
        {
            flag1 = mListener.mListener(motionevent);
            if (mDeferConfirmSingleTap && mDoubleTapListener != null)
            {
                mDoubleTapListener.rmed(motionevent);
            }
        } else
        {
            velocitytracker = mVelocityTracker;
            j1 = MotionEventCompat.getPointerId(motionevent, 0);
            velocitytracker.computeCurrentVelocity(1000, mMaximumFlingVelocity);
            f4 = VelocityTrackerCompat.getYVelocity(velocitytracker, j1);
            f5 = VelocityTrackerCompat.getXVelocity(velocitytracker, j1);
            if (Math.abs(f4) > (float)mMinimumFlingVelocity || Math.abs(f5) > (float)mMinimumFlingVelocity)
            {
                flag1 = mListener.mListener(mCurrentDownEvent, motionevent, f5, f4);
            } else
            {
                flag1 = false;
            }
        }
        if (mPreviousUpEvent != null)
        {
            mPreviousUpEvent.recycle();
        }
        mPreviousUpEvent = motionevent1;
        if (mVelocityTracker != null)
        {
            mVelocityTracker.recycle();
            mVelocityTracker = null;
        }
        mIsDoubleTapping = false;
        mDeferConfirmSingleTap = false;
        mHandler.removeMessages(1);
        mHandler.removeMessages(2);
        return flag1;
_L5:
        cancel();
        return false;
    }

    public void setIsLongpressEnabled(boolean flag)
    {
        mIsLongpressEnabled = flag;
    }

    public void setOnDoubleTapListener(android.view.atImplBase atimplbase)
    {
        mDoubleTapListener = atimplbase;
    }

    static 
    {
        LONGPRESS_TIMEOUT = ViewConfiguration.getLongPressTimeout();
        DOUBLE_TAP_TIMEOUT = ViewConfiguration.getDoubleTapTimeout();
    }







/*
    static boolean access$502(GestureHandler gesturehandler, boolean flag)
    {
        gesturehandler.mDeferConfirmSingleTap = flag;
        return flag;
    }

*/

    public GestureHandler.this._cls0(Context context, android.view.atImplBase atimplbase, Handler handler)
    {
        class GestureHandler extends Handler
        {

            final GestureDetectorCompat.GestureDetectorCompatImplBase this$0;

            public void handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 1 3: default 32
            //                           1 59
            //                           2 79
            //                           3 87;
                   goto _L1 _L2 _L3 _L4
_L1:
                throw new RuntimeException((new StringBuilder()).append("Unknown message ").append(message).toString());
_L2:
                mListener.onShowPress(mCurrentDownEvent);
_L6:
                return;
_L3:
                dispatchLongPress();
                return;
_L4:
                if (mDoubleTapListener != null)
                {
                    if (!mStillDown)
                    {
                        mDoubleTapListener.onSingleTapConfirmed(mCurrentDownEvent);
                        return;
                    } else
                    {
                        mDeferConfirmSingleTap = true;
                        return;
                    }
                }
                if (true) goto _L6; else goto _L5
_L5:
            }

            GestureHandler()
            {
                this$0 = GestureDetectorCompat.GestureDetectorCompatImplBase.this;
                super();
            }

            GestureHandler(Handler handler)
            {
                this$0 = GestureDetectorCompat.GestureDetectorCompatImplBase.this;
                super(handler.getLooper());
            }
        }

        if (handler != null)
        {
            mHandler = new GestureHandler(handler);
        } else
        {
            mHandler = new GestureHandler();
        }
        mListener = atimplbase;
        if (atimplbase instanceof android.view.atImplBase.mListener)
        {
            setOnDoubleTapListener((android.view.atImplBase.setOnDoubleTapListener)atimplbase);
        }
        init(context);
    }
}
