// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util;

import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;

// Referenced classes of package com.mopub.mobileads.util:
//            HttpClients

final class a
    implements Runnable
{

    final HttpClient a;

    public void run()
    {
        if (a != null && a.getConnectionManager() != null)
        {
            a.getConnectionManager().shutdown();
        }
    }

    nager(HttpClient httpclient)
    {
        a = httpclient;
        super();
    }
}
