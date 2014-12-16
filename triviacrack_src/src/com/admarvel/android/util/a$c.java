// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.util;

import android.content.Context;
import android.os.AsyncTask;
import com.admarvel.android.ads.a;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.admarvel.android.util:
//            a, c, OptionalUtils

public class ng extends AsyncTask
{

    final com.admarvel.android.util.a a;
    private final String b;
    private final String c;

    protected transient String a(Integer ainteger[])
    {
        int i;
        File afile[];
        int j;
        ArrayList arraylist;
        ArrayList arraylist1;
        int k;
        int l;
        Context context;
        String s;
        String s1;
        String s2;
        String s3;
        int i1;
        int j1;
        int k1;
        String as[];
        Iterator iterator;
        int l1;
        String s4;
        String s6;
        String s7;
        String s11;
        int i2;
        try
        {
            i = ainteger[0].intValue();
            afile = com.admarvel.android.util.a.a(a).listFiles();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        if (afile == null) goto _L2; else goto _L1
_L1:
        if (afile.length != 0) goto _L3; else goto _L2
_L3:
        if (i <= com.admarvel.android.util.a.b(a)) goto _L5; else goto _L4
_L4:
        j = com.admarvel.android.util.a.b(a);
_L14:
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        k = afile.length;
        l = 0;
_L7:
        if (l >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist1.add(afile[l]);
        l++;
        if (true) goto _L7; else goto _L6
_L6:
        context = (Context)com.admarvel.android.util.a.a().get();
        s = (new StringBuilder()).append(com.admarvel.android.util.a.a(a).getAbsolutePath()).append("/log_").toString();
        s1 = (new StringBuilder()).append(com.admarvel.android.util.a.a(a).getAbsolutePath()).append("/ss_").toString();
        s2 = (new StringBuilder()).append(com.admarvel.android.util.a.a(a).getAbsolutePath()).append("/sse_").toString();
        s3 = (new StringBuilder()).append(com.admarvel.android.util.a.a(a).getAbsolutePath()).append("/ssr_").toString();
        if (context == null) goto _L9; else goto _L8
_L8:
        i1 = com.admarvel.android.util.a.a(a, context);
        j1 = 0;
_L15:
        k1 = j1 + 1;
        if (j1 == j) goto _L9; else goto _L10
_L10:
        if (i1 > 0)
        {
            break MISSING_BLOCK_LABEL_280;
        }
        i1 = com.admarvel.android.util.a.b(a);
        File file = new File((new StringBuilder()).append(s).append(i1).append(".txt").toString());
        if (file.exists())
        {
            arraylist.add(file.getAbsolutePath());
        }
        File file1 = new File((new StringBuilder()).append(s1).append(i1).append(".jpg").toString());
        if (file1.exists())
        {
            arraylist.add(file1.getAbsolutePath());
        }
        File file2 = new File((new StringBuilder()).append(s2).append(i1).append(".jpg").toString());
        if (file2.exists())
        {
            arraylist.add(file2.getAbsolutePath());
        }
        File file3 = new File((new StringBuilder()).append(s3).append(i1).append(".jpg").toString());
        if (file3.exists())
        {
            arraylist.add(file3.getAbsolutePath());
        }
        break MISSING_BLOCK_LABEL_811;
_L9:
        as = new String[arraylist.size()];
        iterator = arraylist.iterator();
        l1 = 0;
_L12:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        s11 = (String)iterator.next();
        i2 = l1 + 1;
        as[l1] = s11;
        l1 = i2;
        if (true) goto _L12; else goto _L11
_L11:
        s4 = (new StringBuilder()).append(com.admarvel.android.util.a.a(a).getAbsolutePath()).append("/").append(b).toString();
        (new c(as, s4)).a();
        String s5 = (new StringBuilder()).append("http://sdk-rh.admarvel.com/adhistory/upload?").append("platform=android").toString();
        s6 = (new StringBuilder()).append(s5).append("&deviceid=").append(OptionalUtils.getId(context)).toString();
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_796;
        }
        s7 = (new StringBuilder()).append(s6).append("&appid=").append(context.getPackageName()).toString();
_L13:
        String s8 = (new StringBuilder()).append(s7).append("&zipguid=").append(c).toString();
        String s9 = (new StringBuilder()).append(s8).append("&timestamp=").append(System.currentTimeMillis()).toString();
        String s10 = (new StringBuilder()).append(s9).append(a.a).toString();
        com.admarvel.android.util.a.a(a, s10, s4);
        return s4;
        s7 = s6;
          goto _L13
_L5:
        j = i;
          goto _L14
_L2:
        return null;
        i1--;
        j1 = k1;
          goto _L15
    }

    protected void a(String s)
    {
        super.onPostExecute(s);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Integer[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((String)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
    }

    public onalUtils(com.admarvel.android.util.a a1, String s)
    {
        a = a1;
        super();
        c = s;
        b = (new StringBuilder()).append(c).append(".zip").toString();
    }
}
