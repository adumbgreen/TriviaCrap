// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.a;

import android.os.AsyncTask;
import android.os.Environment;
import java.io.File;

// Referenced classes of package com.admarvel.android.a:
//            e

public class c extends AsyncTask
{

    private static long a = 0x337f9800L;

    public c()
    {
    }

    protected transient Object doInBackground(Object aobj[])
    {
        if (!"mounted".equals(Environment.getExternalStorageState())) goto _L2; else goto _L1
_L1:
        File file = new File(Environment.getExternalStorageDirectory(), (new StringBuilder()).append("/").append(e.a("adm_tracker_dir")).toString());
        if (!file.exists()) goto _L2; else goto _L3
_L3:
        File afile[];
        int i;
        afile = file.listFiles();
        i = afile.length;
        int j = 0;
_L4:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        File file1 = afile[j];
        if (System.currentTimeMillis() - file1.lastModified() > a)
        {
            file1.delete();
        }
        j++;
        if (true) goto _L4; else goto _L2
        Exception exception;
        exception;
        exception.printStackTrace();
_L2:
        return null;
    }

}
