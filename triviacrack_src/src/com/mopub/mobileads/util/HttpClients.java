// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util;

import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;

public class HttpClients
{

    public HttpClients()
    {
    }

    public static void safeShutdown(HttpClient httpclient)
    {
        (new Thread(new Runnable(httpclient) {

            final HttpClient a;

            public void run()
            {
                if (a != null && a.getConnectionManager() != null)
                {
                    a.getConnectionManager().shutdown();
                }
            }

            
            {
                a = httpclient;
                super();
            }
        })).start();
    }
}
