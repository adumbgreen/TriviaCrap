// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.widget.ImageView;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Utils;
import java.util.Arrays;
import java.util.WeakHashMap;

// Referenced classes of package com.mopub.nativeads:
//            n, i

class m
{

    private static final WeakHashMap a = new WeakHashMap();

    static WeakHashMap a()
    {
        return a;
    }

    static void a(String s, ImageView imageview)
    {
        if (imageview == null)
        {
            MoPubLog.d("Attempted to load an image into a null ImageView");
        } else
        {
            imageview.setImageDrawable(null);
            if (s != null)
            {
                long l = Utils.generateUniqueId();
                a.put(imageview, Long.valueOf(l));
                i.a(Arrays.asList(new String[] {
                    s
                }), new n(s, imageview, l));
                return;
            }
        }
    }

}
