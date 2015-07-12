// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.view.View;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASPlayerActivity, SASVideoView

class a
    implements android.view.
{

    final SASPlayerActivity a;

    public void onClick(View view)
    {
        if (SASPlayerActivity.a(a).isPlaying())
        {
            SASPlayerActivity.i(a);
            return;
        } else
        {
            SASPlayerActivity.j(a);
            return;
        }
    }

    (SASPlayerActivity sasplayeractivity)
    {
        a = sasplayeractivity;
        super();
    }
}
