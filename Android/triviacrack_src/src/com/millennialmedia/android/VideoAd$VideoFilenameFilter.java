// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import java.io.File;
import java.io.FilenameFilter;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            VideoAd

class a
    implements FilenameFilter
{

    private WeakReference a;

    public boolean accept(File file, String s)
    {
        VideoAd videoad = (VideoAd)a.get();
        if (videoad != null)
        {
            String s1 = videoad.e();
            if (s1 == null)
            {
                return false;
            } else
            {
                return s.startsWith(s1);
            }
        } else
        {
            return false;
        }
    }

    public (VideoAd videoad)
    {
        a = new WeakReference(videoad);
    }
}
