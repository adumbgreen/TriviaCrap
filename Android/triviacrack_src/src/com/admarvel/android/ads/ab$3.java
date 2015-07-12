// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import java.io.File;
import java.util.Calendar;

// Referenced classes of package com.admarvel.android.ads:
//            ab, AdMarvelUtils

final class a
    implements Runnable
{

    final Context a;

    public void run()
    {
        int i = 0;
        File file = a.getDir("adm_cache_files", 0);
        if (!file.isDirectory())
        {
            break MISSING_BLOCK_LABEL_89;
        }
        File afile[];
        int j;
        File file1;
        try
        {
            afile = file.listFiles();
            j = afile.length;
        }
        catch (Exception exception)
        {
            break; /* Loop/switch isn't completed */
        }
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        file1 = afile[i];
        if (System.currentTimeMillis() - file1.lastModified() > 0xcd140L)
        {
            file1.delete();
        }
        i++;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L1
_L1:
        AdMarvelUtils.setPreferenceValueLong(a, "adm_viewport", "adm_video_cleanup_timestamp", Calendar.getInstance().getTimeInMillis());
    }

    velUtils(Context context)
    {
        a = context;
        super();
    }
}
