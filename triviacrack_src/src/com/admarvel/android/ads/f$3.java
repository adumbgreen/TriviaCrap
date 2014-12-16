// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.media.MediaPlayer;

// Referenced classes of package com.admarvel.android.ads:
//            f

class a
    implements android.media.aPlayer.OnErrorListener
{

    final f a;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        f.a(a, -1);
        f.b(a, -1);
        f.d(a, false);
        if (a.a != null)
        {
            a.a.d();
        }
        if (!f.h(a))
        {
            a.c();
        }
        if (f.i(a) != null)
        {
            if (!f.i(a).onError(f.d(a), i, j));
        }
        return true;
    }

    rrorListener(f f1)
    {
        a = f1;
        super();
    }
}
