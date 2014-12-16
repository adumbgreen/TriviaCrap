// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


// Referenced classes of package com.millennialmedia.android:
//            HttpGetRequest, MMLog

final class a
    implements Runnable
{

    final String a[];

    public void run()
    {
        String as[] = a;
        int i = as.length;
        int j = 0;
        while (j < i) 
        {
            String s = as[j];
            MMLog.a("HttpGetRequest", String.format("Logging event to: %s", new Object[] {
                s
            }));
            try
            {
                (new HttpGetRequest()).a(s);
            }
            catch (Exception exception)
            {
                MMLog.a("HttpGetRequest", "Logging request failed.", exception);
            }
            j++;
        }
    }

    (String as[])
    {
        a = as;
        super();
    }
}
