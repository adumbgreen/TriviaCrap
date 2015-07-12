// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.a;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.admarvel.android.util.Logging;
import com.admarvel.android.util.b;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class e
{

    static String a(String s)
    {
        String s1;
        try
        {
            s1 = URLEncoder.encode(com.admarvel.android.util.b.b(s.getBytes(), 8), "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Logging.log(Log.getStackTraceString(unsupportedencodingexception));
            return "";
        }
        return s1;
    }

    static boolean a(Context context, String s)
    {
        try
        {
            context.getPackageManager().getApplicationInfo(s, 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        return true;
    }

    static String b(String s)
    {
        String s1;
        try
        {
            s1 = new String(com.admarvel.android.util.b.a(URLDecoder.decode(s, "UTF-8"), 8), "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Logging.log(Log.getStackTraceString(unsupportedencodingexception));
            return "";
        }
        return s1;
    }
}
