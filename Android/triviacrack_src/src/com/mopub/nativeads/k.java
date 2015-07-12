// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import com.mopub.common.DownloadResponse;
import com.mopub.common.logging.MoPubLog;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.mopub.nativeads:
//            ai, l, i

class k
    implements ai
{

    private final l a;
    private final Map b;

    k(l l1, Map map)
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
        android.graphics.Bitmap bitmap;
        String s;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); b.put(s, bitmap))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            bitmap = i.asBitmap((DownloadResponse)entry.getValue(), i.a());
            s = (String)entry.getKey();
            if (bitmap == null)
            {
                MoPubLog.d((new StringBuilder()).append("Error decoding image for url: ").append((String)entry.getKey()).toString());
                onFail();
                return;
            }
            i.a(s, bitmap, ((DownloadResponse)entry.getValue()).getByteArray());
        }

        a.onSuccess(b);
    }
}
