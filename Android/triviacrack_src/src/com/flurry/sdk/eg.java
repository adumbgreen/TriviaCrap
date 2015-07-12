// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class eg
    implements X509TrustManager
{

    private X509TrustManager a;

    public eg(KeyStore keystore)
    {
        a = null;
        TrustManagerFactory trustmanagerfactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustmanagerfactory.init(keystore);
        javax.net.ssl.TrustManager atrustmanager[] = trustmanagerfactory.getTrustManagers();
        if (atrustmanager.length == 0)
        {
            throw new NoSuchAlgorithmException("no trust manager found");
        } else
        {
            a = (X509TrustManager)atrustmanager[0];
            return;
        }
    }

    public void checkClientTrusted(X509Certificate ax509certificate[], String s)
    {
        a.checkClientTrusted(ax509certificate, s);
    }

    public void checkServerTrusted(X509Certificate ax509certificate[], String s)
    {
        if (ax509certificate != null && ax509certificate.length == 1)
        {
            ax509certificate[0].checkValidity();
            return;
        } else
        {
            a.checkServerTrusted(ax509certificate, s);
            return;
        }
    }

    public X509Certificate[] getAcceptedIssuers()
    {
        return a.getAcceptedIssuers();
    }
}
