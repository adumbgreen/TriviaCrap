// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.Activity;
import android.view.animation.Animation;
import android.widget.Button;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            AdViewOverlayView, MMLog

class a
    implements android.view.animation.ener
{

    private WeakReference a;

    public void onAnimationEnd(Animation animation)
    {
        AdViewOverlayView adviewoverlayview = (AdViewOverlayView)a.get();
        if (adviewoverlayview != null)
        {
            Activity activity = (Activity)adviewoverlayview.getContext();
            MMLog.b("AdViewOverlayView", "Finishing overlay this is in w/ anim finishOverLayWithAnim()");
            activity.finish();
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        AdViewOverlayView adviewoverlayview = (AdViewOverlayView)a.get();
        if (adviewoverlayview != null && AdViewOverlayView.b(adviewoverlayview) != null)
        {
            AdViewOverlayView.b(adviewoverlayview).setVisibility(8);
        }
    }

    public (AdViewOverlayView adviewoverlayview)
    {
        a = new WeakReference(adviewoverlayview);
    }
}
