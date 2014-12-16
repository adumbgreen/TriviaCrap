// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import android.media.MediaPlayer;
import android.widget.ProgressBar;

// Referenced classes of package com.smartadserver.android.library.controller.mraid:
//            f

class a
    implements android.media.aPlayer.OnPreparedListener
{

    final f a;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        f.p(a).setVisibility(8);
    }

    (f f1)
    {
        a = f1;
        super();
    }
}
