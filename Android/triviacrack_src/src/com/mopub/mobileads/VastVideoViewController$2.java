// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.view.View;
import com.mopub.mobileads.util.vast.VastCompanionAd;

// Referenced classes of package com.mopub.mobileads:
//            VastVideoViewController

class a
    implements android.view.ller._cls2
{

    final VastVideoViewController a;

    public void onClick(View view)
    {
        if (VastVideoViewController.c(a) != null)
        {
            VastVideoViewController.a(a, VastVideoViewController.c(a).getClickTrackers(), VastVideoViewController.c(a).getClickThroughUrl());
        }
    }

    (VastVideoViewController vastvideoviewcontroller)
    {
        a = vastvideoviewcontroller;
        super();
    }
}
