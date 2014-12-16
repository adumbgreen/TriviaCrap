// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.net.Uri;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            VideoPlayerActivity, MMActivity, OverlaySettings

class e extends e
{

    WeakReference f;

    public OverlaySettings getOverlaySettings()
    {
        VideoPlayerActivity videoplayeractivity = (VideoPlayerActivity)f.get();
        if (videoplayeractivity != null && videoplayeractivity.i != null)
        {
            OverlaySettings overlaysettings = new OverlaySettings();
            overlaysettings.c = videoplayeractivity.i;
            return overlaysettings;
        } else
        {
            return null;
        }
    }

    public boolean isHandlingMMVideo(Uri uri)
    {
        VideoPlayerActivity videoplayeractivity = (VideoPlayerActivity)f.get();
        if (videoplayeractivity != null)
        {
            videoplayeractivity.runOnUiThread(new Runnable(videoplayeractivity) {

                final VideoPlayerActivity a;
                final VideoPlayerActivity.VideoRedirectionListener b;

                public void run()
                {
                    a.i();
                }

            
            {
                b = VideoPlayerActivity.VideoRedirectionListener.this;
                a = videoplayeractivity;
                super();
            }
            });
            if (uri != null && VideoPlayerActivity.a(videoplayeractivity, uri))
            {
                videoplayeractivity.d(uri.getHost());
                return true;
            }
        }
        return false;
    }

    public _cls1.a(VideoPlayerActivity videoplayeractivity)
    {
        if (videoplayeractivity != null)
        {
            f = new WeakReference(videoplayeractivity);
            if (videoplayeractivity.c != null)
            {
                e = videoplayeractivity.c.a;
            }
        }
    }
}
