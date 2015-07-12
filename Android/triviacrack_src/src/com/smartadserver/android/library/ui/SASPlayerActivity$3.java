// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.media.MediaPlayer;
import android.widget.ProgressBar;
import com.smartadserver.android.library.h.c;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASPlayerActivity

class a
    implements android.media.edListener
{

    final SASPlayerActivity a;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        c.a("SASPlayerActivity", "onPrepared");
        SASPlayerActivity.g(a).setVisibility(8);
        SASPlayerActivity.h(a);
    }

    (SASPlayerActivity sasplayeractivity)
    {
        a = sasplayeractivity;
        super();
    }
}
