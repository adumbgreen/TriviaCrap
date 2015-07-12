// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.mopub.common.util.Visibility;

// Referenced classes of package com.mopub.mobileads:
//            MoPubView

class r extends BroadcastReceiver
{

    final MoPubView a;

    public void onReceive(Context context, Intent intent)
    {
        if (Visibility.isScreenVisible(MoPubView.a(a)) && intent != null)
        {
            String s = intent.getAction();
            if ("android.intent.action.USER_PRESENT".equals(s))
            {
                MoPubView.a(a, 0);
                return;
            }
            if ("android.intent.action.SCREEN_OFF".equals(s))
            {
                MoPubView.a(a, 8);
                return;
            }
        }
    }

    (MoPubView mopubview)
    {
        a = mopubview;
        super();
    }
}
