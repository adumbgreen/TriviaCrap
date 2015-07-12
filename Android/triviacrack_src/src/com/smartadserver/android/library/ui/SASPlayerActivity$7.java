// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.media.MediaPlayer;
import android.widget.ImageView;
import com.smartadserver.android.library.controller.mraid.SASMRAIDVideoConfig;
import com.smartadserver.android.library.g.a;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASPlayerActivity

class a
    implements android.media.tionListener
{

    final SASPlayerActivity a;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        if (SASPlayerActivity.l(a) != null)
        {
            SASPlayerActivity.l(a).setImageBitmap(a.c);
        }
        if (SASPlayerActivity.m(a).f())
        {
            a.finish();
        } else
        if (SASPlayerActivity.m(a).c())
        {
            SASPlayerActivity.j(a);
            return;
        }
    }

    IDVideoConfig(SASPlayerActivity sasplayeractivity)
    {
        a = sasplayeractivity;
        super();
    }
}
