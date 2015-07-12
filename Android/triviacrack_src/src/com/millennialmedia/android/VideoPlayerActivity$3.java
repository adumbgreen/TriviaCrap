// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.view.View;
import android.widget.Button;
import android.widget.VideoView;

// Referenced classes of package com.millennialmedia.android:
//            VideoPlayerActivity

class a
    implements android.view.ayerActivity._cls3
{

    final VideoPlayerActivity a;

    public void onClick(View view)
    {
label0:
        {
            if (a.g != null)
            {
                if (!a.g.isPlaying())
                {
                    break label0;
                }
                a.n();
                a.l.setBackgroundResource(0x1080024);
            }
            return;
        }
        if (a.f)
        {
            a.a(0);
        } else
        if (a.p && !a.f)
        {
            a.g();
        } else
        {
            a.a(a.e);
        }
        a.l.setBackgroundResource(0x1080023);
    }

    (VideoPlayerActivity videoplayeractivity)
    {
        a = videoplayeractivity;
        super();
    }
}
