// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import java.io.ObjectInputStream;
import java.util.Date;

// Referenced classes of package com.millennialmedia.android:
//            AdCache, CachedAd, MMLog

final class erator extends erator
{

    boolean a(String s, int i, Date date, String s1, long l, ObjectInputStream objectinputstream)
    {
        if (date != null && date.getTime() <= System.currentTimeMillis())
        {
            try
            {
                CachedAd cachedad = (CachedAd)objectinputstream.readObject();
                Object aobj[] = new Object[1];
                aobj[0] = cachedad.e();
                MMLog.e("AdCache", String.format("Deleting expired ad %s.", aobj));
            }
            catch (Exception exception)
            {
                MMLog.a("AdCache", String.format("There was a problem reading the cached ad %s.", new Object[] {
                    s
                }), exception);
                return true;
            }
        }
        return true;
    }

    erator()
    {
    }
}
