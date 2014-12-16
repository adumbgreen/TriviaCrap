// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.ui;

import android.media.MediaPlayer;

// Referenced classes of package com.smartadserver.android.library.ui:
//            SASPlayerActivity

class a
    implements android.media.istener
{

    final SASPlayerActivity a;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        a.finish();
        return true;
    }

    (SASPlayerActivity sasplayeractivity)
    {
        a = sasplayeractivity;
        super();
    }
}
