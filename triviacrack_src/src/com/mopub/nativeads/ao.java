// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.graphics.Rect;
import android.os.SystemClock;
import android.view.View;

class ao
{

    private final Rect a = new Rect();

    ao()
    {
    }

    boolean a(long l, int i)
    {
        return SystemClock.uptimeMillis() - l >= (long)i;
    }

    boolean a(View view, int i)
    {
        if (view != null && view.getVisibility() == 0 && view.getParent() != null && view.getGlobalVisibleRect(a))
        {
            long l = (long)a.height() * (long)a.width();
            long l1 = (long)view.getHeight() * (long)view.getWidth();
            if (l1 > 0L && l * 100L >= l1 * (long)i)
            {
                return true;
            }
        }
        return false;
    }
}
