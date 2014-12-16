// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;
import android.widget.Button;

class d
    implements Runnable
{

    int a;
    int b;
    int c;
    int d;
    private final Button e;

    public void run()
    {
        Rect rect = new Rect();
        e.getHitRect(rect);
        rect.top = rect.top + a;
        rect.right = rect.right + d;
        rect.bottom = rect.bottom + c;
        rect.left = rect.left + b;
        TouchDelegate touchdelegate = new TouchDelegate(rect, e);
        if (android/view/View.isInstance(e.getParent()))
        {
            ((View)e.getParent()).setTouchDelegate(touchdelegate);
        }
    }

    (Button button, int i, int j, int k, int l)
    {
        e = button;
        a = i;
        b = j;
        c = k;
        d = l;
    }
}
