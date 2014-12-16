// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            MMWebView

class a
    implements android.view.bTouchListener
{

    WeakReference a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        MMWebView mmwebview = (MMWebView)a.get();
        boolean flag;
        if (motionevent.getAction() == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (mmwebview != null)
        {
            return flag && mmwebview.f();
        } else
        {
            return flag;
        }
    }

    (MMWebView mmwebview)
    {
        a = new WeakReference(mmwebview);
    }
}
