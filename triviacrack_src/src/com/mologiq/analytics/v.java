// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.util.Base64;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class v
{

    private PublicKey a;
    private Cipher b;

    public v()
    {
        try
        {
            a = a("MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJHz5rYyjP4OdTotQP4QUKHHk0YP+YM/axTmaG2FO+AS0WG9vtLijYptdMACMeIvPANrey0HmQBqYmsCCFY7HO8CAwEAAQ==");
            b = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public PublicKey a(String s)
    {
        X509EncodedKeySpec x509encodedkeyspec = new X509EncodedKeySpec(Base64.decode(s, 0));
        return KeyFactory.getInstance("RSA").generatePublic(x509encodedkeyspec);
    }

    public String b(String s)
    {
        String s1;
        if (b == null || a == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        b.init(1, a);
        s1 = Base64.encodeToString(b.doFinal(s.getBytes()), 0);
        return s1;
        Exception exception;
        exception;
        exception.printStackTrace();
        return null;
    }
}
