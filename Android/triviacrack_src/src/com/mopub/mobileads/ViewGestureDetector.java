// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.mopub.common.logging.MoPubLog;

// Referenced classes of package com.mopub.mobileads:
//            AdAlertGestureListener, bk, AdConfiguration

public class ViewGestureDetector extends GestureDetector
{

    private final View a;
    private AdAlertGestureListener b;
    private bk c;

    private ViewGestureDetector(Context context, View view, AdAlertGestureListener adalertgesturelistener)
    {
        super(context, adalertgesturelistener);
        b = adalertgesturelistener;
        a = view;
        setIsLongpressEnabled(false);
    }

    public ViewGestureDetector(Context context, View view, AdConfiguration adconfiguration)
    {
        this(context, view, new AdAlertGestureListener(view, adconfiguration));
    }

    private boolean a(MotionEvent motionevent, View view)
    {
        if (motionevent != null && view != null)
        {
            float f = motionevent.getX();
            float f1 = motionevent.getY();
            if (f >= 0.0F && f <= (float)view.getWidth() && f1 >= 0.0F && f1 <= (float)view.getHeight())
            {
                return true;
            }
        }
        return false;
    }

    void a()
    {
        b.b();
    }

    void a(MotionEvent motionevent)
    {
        switch (motionevent.getAction())
        {
        default:
            return;

        case 1: // '\001'
            if (c != null)
            {
                c.onUserClick();
            } else
            {
                MoPubLog.d("View's onUserClick() is not registered.");
            }
            b.a();
            return;

        case 0: // '\0'
            onTouchEvent(motionevent);
            return;

        case 2: // '\002'
            break;
        }
        if (a(motionevent, a))
        {
            onTouchEvent(motionevent);
            return;
        } else
        {
            a();
            return;
        }
    }

    void a(bk bk1)
    {
        c = bk1;
    }
}
