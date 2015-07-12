// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.Activity;
import android.net.Uri;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            MMAdImpl, HandShake

class e extends e
{

    WeakReference f;

    public boolean isActivityStartable(Uri uri)
    {
        MMAdImpl mmadimpl = (MMAdImpl)f.get();
        if (mmadimpl != null)
        {
            android.content.Context context = mmadimpl.j();
            if (context != null && (context instanceof Activity) && ((Activity)context).isFinishing())
            {
                return false;
            }
        }
        return true;
    }

    public void startingActivity(Uri uri)
    {
        super.tartingActivity(uri);
        if (uri.getScheme().equalsIgnoreCase("http") || uri.getScheme().equalsIgnoreCase("https"))
        {
            MMAdImpl mmadimpl = (MMAdImpl)f.get();
            if (mmadimpl != null)
            {
                f(mmadimpl);
            }
        }
    }

    public void updateLastVideoViewedTime()
    {
        MMAdImpl mmadimpl = (MMAdImpl)f.get();
        if (mmadimpl != null && mmadimpl.f != null)
        {
            HandShake.a(mmadimpl.j()).b(mmadimpl.j(), mmadimpl.f);
        }
    }

    public (MMAdImpl mmadimpl)
    {
        if (mmadimpl != null)
        {
            f = new WeakReference(mmadimpl);
            e = mmadimpl.h;
        }
    }
}
