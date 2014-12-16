// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mologiq.analytics;

import android.util.Base64;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

// Referenced classes of package com.mologiq.analytics:
//            ag

public class a
{

    private SecretKey a;

    public a()
    {
    }

    public String a(String s)
    {
        a();
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(1, a);
        return Base64.encodeToString(cipher.doFinal(s.getBytes()), 0);
    }

    public String a(String s, String s1)
    {
        String s2;
        try
        {
            SecretKeySpec secretkeyspec = new SecretKeySpec(Base64.decode(s, 0), "AES");
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(2, secretkeyspec);
            s2 = new String(cipher.doFinal(Base64.decode(s1, 0)));
        }
        catch (Exception exception)
        {
            ag.a("Error");
            return null;
        }
        return s2;
    }

    public void a()
    {
        SecureRandom securerandom = new SecureRandom();
        KeyGenerator keygenerator = KeyGenerator.getInstance("AES");
        keygenerator.init(128, securerandom);
        a = keygenerator.generateKey();
    }

    public String b()
    {
        return new String(Base64.encode(a.getEncoded(), 0));
    }
}
