// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.a;

import android.content.Context;
import com.smartadserver.android.library.b.a;
import com.smartadserver.android.library.b.d;
import com.smartadserver.android.library.h.c;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.TimeZone;
import org.apache.http.client.methods.HttpGet;

public class i
{

    private static int a = 200;

    private static String a()
    {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
        return c.d((new StringBuilder()).append("#").append(calendar.get(11)).append("#").append(calendar.get(6)).append("#sm@RT4dserv3r").toString());
    }

    private static String a(Context context, String s, String s1, String s2, String s3)
    {
        String s4 = c.e(s1);
        if (s3.length() > a)
        {
            s3 = s3.substring(0, a);
        }
        String s5 = c.e(s3.replaceAll("<", "&lt;").replaceAll(">", "&gt;"));
        String s6 = c.e(s);
        String s7 = c.e(c.c());
        String s8 = (new StringBuilder()).append("SDKAndroid%204.2.2%20").append(c.d()).toString();
        String s9 = c.e(c.b(context));
        String s10 = c.e(s2);
        String s12;
        try
        {
            String s11 = a();
            s12 = "http://mobile.smartadserver.com".concat("/Diffx/ErrorHandler/RemoteErrorHandler.ashx").concat("?PoolId=").concat("17").concat("&ServerFront=").concat("SDKAndroid").concat("&UserHostAddress=").concat(s7).concat("&UserAgent=").concat(s6).concat("&Categorie=").concat(s8).concat("&Cookies=").concat(s9).concat("&RemoteURL=").concat(s4).concat("&Domain=").concat("MobileSDK").concat("&Path=").concat(s10).concat("&URLReferrer=").concat(c.a(context)).concat("&Key=").concat(s11).concat("&Message=").concat(s5);
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            return null;
        }
        return s12;
    }

    public static void a(Context context, String s, Exception exception, String s1, String s2)
    {
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        String s4;
        HttpGet httpget;
        try
        {
            String s3 = exception.getClass().getSimpleName();
            if (exception.getMessage() != null)
            {
                s3 = s3.concat(" : ").concat(exception.getMessage());
            }
            s4 = a(context, s1, s, s2, s3);
        }
        catch (Exception exception1)
        {
            c.c((new StringBuilder()).append("Log RemoteError failed: ").append(exception1.getMessage()).toString());
            return;
        }
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        httpget = new HttpGet(s4);
        (new a(s1)).a(httpget, new d(s2, s4) {

            final String a;
            final String b;

            public void a(Exception exception2)
            {
                c.a(a, (new StringBuilder()).append("logRemoteError failed: ").append(exception2.getMessage()).toString());
            }

            public void a(String s5)
            {
                c.a(a, (new StringBuilder()).append("logRemoteError called: ").append(b).toString());
            }

            
            {
                a = s;
                b = s1;
                super();
            }
        });
    }

}
