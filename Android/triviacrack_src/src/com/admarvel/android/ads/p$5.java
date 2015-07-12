// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.media.MediaPlayer;

// Referenced classes of package com.admarvel.android.ads:
//            p

class a
    implements android.media.aPlayer.OnErrorListener
{

    final p a;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        p.c(a, -1);
        p.d(a, -1);
        if (p.e(a) != null)
        {
            p.e(a).k();
        }
        if (p.k(a) != null)
        {
            if (!p.k(a).onError(p.d(a), i, j));
        }
        return true;
    }

    rrorListener(p p1)
    {
        a = p1;
        super();
    }
}
