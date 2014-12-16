// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.graphics.Bitmap;
import com.mopub.common.logging.MoPubLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.mopub.nativeads:
//            ai, l, i, g, 
//            k

class j
    implements ai
{

    private final l a;
    private final Map b;

    j(l l1, Map map)
    {
        a = l1;
        b = map;
    }

    public void onFail()
    {
        a.onFail();
    }

    public void onSuccess(Map map)
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (entry.getValue() == null)
            {
                arraylist.add(entry.getKey());
            } else
            {
                i.a((String)entry.getKey(), (Bitmap)entry.getValue());
                b.put(entry.getKey(), entry.getValue());
            }
        }

        if (arraylist.isEmpty())
        {
            a.onSuccess(b);
            return;
        }
        g g1;
        try
        {
            g1 = new g(arraylist, new k(a, b), i.a());
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            MoPubLog.d("Unable to initialize ImageDownloadTaskManager", illegalargumentexception);
            a.onFail();
            return;
        }
        g1.a();
    }
}
