// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.view.View;
import android.widget.ImageButton;

// Referenced classes of package com.millennialmedia.android:
//            CachedVideoPlayerActivity, VideoImage

class b
    implements android.view.ayerActivity._cls2
{

    final ImageButton a;
    final VideoImage b;
    final CachedVideoPlayerActivity c;

    public void onClick(View view)
    {
        if (a != null)
        {
            a.setEnabled(false);
        }
        c.h.d = b.e;
        c.e(b.d);
        c.a(b);
    }

    istenerImpl(CachedVideoPlayerActivity cachedvideoplayeractivity, ImageButton imagebutton, VideoImage videoimage)
    {
        c = cachedvideoplayeractivity;
        a = imagebutton;
        b = videoimage;
        super();
    }
}
