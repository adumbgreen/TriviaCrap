// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.view.SurfaceHolder;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASVideoView

class b
    implements Runnable
{

    final int a;
    final int b;
    final SASVideoView c;

    public void run()
    {
        ((android.widget.LayoutParams)c.getLayoutParams()).setMargins(a, b, 0, 0);
        c.getHolder().setFixedSize(SASVideoView.a(c), SASVideoView.b(c));
        c.requestLayout();
        c.invalidate();
    }

    _cls9(SASVideoView sasvideoview, int i, int j)
    {
        c = sasvideoview;
        a = i;
        b = j;
        super();
    }
}
