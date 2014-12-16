// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Locale;

// Referenced classes of package com.amazon.device.ads:
//            WebUtils

class 
{

    String encloseHtml(String s, boolean flag)
    {
        if (s != null)
        {
            if (s.indexOf("<html>") == -1)
            {
                s = (new StringBuilder()).append("<html>").append(s).append("</html>").toString();
            }
            if (flag && s.indexOf("<!DOCTYPE html>") == -1)
            {
                s = (new StringBuilder()).append("<!DOCTYPE html>").append(s).toString();
            }
        }
        return s;
    }

    String getScheme(String s)
    {
        String s1 = Uri.parse(s).getScheme();
        if (s1 != null)
        {
            s1 = s1.toLowerCase(Locale.US);
        }
        return s1;
    }

    String getURLDecodedString(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1;
        try
        {
            s1 = URLDecoder.decode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.d(WebUtils.access$000(), "getURLDecodedString threw: %s", unsupportedencodingexception);
            return s;
        }
        return s1;
    }

    String getURLEncodedString(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1;
        try
        {
            s1 = URLEncoder.encode(s, "UTF-8").replace("+", "%20").replace("*", "%2A").replace("%7E", "~");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Log.d(WebUtils.access$000(), "getURLEncodedString threw: %s", unsupportedencodingexception);
            return s;
        }
        return s1;
    }

    boolean launchActivityForIntentLink(String s, Context context)
    {
        if (s == null || s.equals(""))
        {
            s = "about:blank";
        }
        Log.d(WebUtils.access$000(), (new StringBuilder()).append("Launch Intent: ").append(s).toString());
        Intent intent = new Intent();
        if (s.startsWith("intent:"))
        {
            Intent intent1;
            try
            {
                intent1 = Intent.parseUri(s, 1);
            }
            catch (URISyntaxException urisyntaxexception)
            {
                return false;
            }
            intent = intent1;
        } else
        {
            intent.setData(Uri.parse(s));
        }
        intent.setAction("android.intent.action.VIEW");
        intent.setFlags(0x10000000);
        try
        {
            context.startActivity(intent);
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            String s1 = intent.getAction();
            String s2 = WebUtils.access$000();
            StringBuilder stringbuilder = (new StringBuilder()).append("Could not handle ");
            String s3;
            if (s1.startsWith("market://"))
            {
                s3 = "market";
            } else
            {
                s3 = "intent";
            }
            Log.w(s2, stringbuilder.append(s3).append(" action: ").append(s1).toString());
            return false;
        }
        return true;
    }

    ()
    {
    }
}
