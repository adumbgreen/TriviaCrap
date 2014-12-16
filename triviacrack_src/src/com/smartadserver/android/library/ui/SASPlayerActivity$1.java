// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.content.Context;
import android.widget.RelativeLayout;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASPlayerActivity, SASVideoView

class a extends RelativeLayout
{

    final SASPlayerActivity a;

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (SASPlayerActivity.a(a) != null)
        {
            SASPlayerActivity.b(a);
            SASPlayerActivity.a(a).a(SASPlayerActivity.c(a), SASPlayerActivity.d(a), SASPlayerActivity.e(a), SASPlayerActivity.f(a));
        }
    }

    (SASPlayerActivity sasplayeractivity, Context context)
    {
        a = sasplayeractivity;
        super(context);
    }
}
