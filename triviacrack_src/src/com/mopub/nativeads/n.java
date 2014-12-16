// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.mopub.common.logging.MoPubLog;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;

// Referenced classes of package com.mopub.nativeads:
//            l, m

class n
    implements l
{

    private final WeakReference a;
    private final String b;
    private final long c;

    n(String s, ImageView imageview, long l1)
    {
        b = s;
        a = new WeakReference(imageview);
        c = l1;
    }

    public void onFail()
    {
        MoPubLog.d("Failed to load image for ImageView");
    }

    public void onSuccess(Map map)
    {
        ImageView imageview = (ImageView)a.get();
        Long long1;
        if (imageview != null && map != null && map.containsKey(b))
        {
            if ((long1 = (Long)m.a().get(imageview)) != null && c == long1.longValue())
            {
                imageview.setImageBitmap((Bitmap)map.get(b));
                return;
            }
        }
    }
}
