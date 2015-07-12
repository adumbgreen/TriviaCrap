// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.os.AsyncTask;
import java.io.File;
import java.lang.ref.WeakReference;

class d extends AsyncTask
{

    private final WeakReference a;
    private final File b;

    public d(Context context, File file)
    {
        a = new WeakReference(context);
        b = file;
    }

    void a(File file)
    {
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            int i = afile.length;
            for (int j = 0; j < i; j++)
            {
                a(afile[j]);
            }

        }
        if (System.currentTimeMillis() - file.lastModified() > 0x278d00L)
        {
            file.delete();
        }
    }

    protected transient Object doInBackground(Object aobj[])
    {
        if ((Context)a.get() != null) goto _L2; else goto _L1
_L1:
        File file;
        return null;
_L2:
        File afile[];
        int i;
        if (!(file = new File(b, "/data/com.admarvel.android.admarvelcachedads/cachedads")).exists())
        {
            continue; /* Loop/switch isn't completed */
        }
        afile = file.listFiles();
        i = afile.length;
        int j = 0;
        while (j < i) 
        {
            try
            {
                a(afile[j]);
            }
            catch (Exception exception)
            {
                return null;
            }
            j++;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }
}
