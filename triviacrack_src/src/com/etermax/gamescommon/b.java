// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.text.Html;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.o;
import com.etermax.tools.a.a.g;
import java.io.File;
import java.util.ArrayList;
import java.util.Locale;

public class b
{

    Context a;
    a b;
    g c;
    com.etermax.tools.j.a d;

    public b()
    {
    }

    public Intent a(String s)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        String as[] = new String[1];
        as[0] = a.getString(o.support_email);
        intent.putExtra("android.intent.extra.EMAIL", as);
        File file = c.b();
        String s8;
        if (file.exists())
        {
            Uri uri = Uri.fromFile(file);
            File file1 = c.c();
            String s1;
            long l;
            String s2;
            String s3;
            String s4;
            String s5;
            String s6;
            String s7;
            String s9;
            String s10;
            StringBuilder stringbuilder;
            if (file1.exists())
            {
                intent = new Intent("android.intent.action.SEND_MULTIPLE");
                String as1[] = new String[1];
                as1[0] = a.getString(o.support_email);
                intent.putExtra("android.intent.extra.EMAIL", as1);
                Uri uri1 = Uri.fromFile(file1);
                ArrayList arraylist = new ArrayList();
                arraylist.add(uri);
                arraylist.add(uri1);
                intent.putExtra("android.intent.extra.STREAM", arraylist);
            } else
            {
                intent.putExtra("android.intent.extra.STREAM", uri);
            }
        }
        s1 = b.g();
        l = b.e();
        s2 = com.etermax.a.b.a();
        s3 = com.etermax.a.b.b();
        s4 = a.getString(o.app_name);
        s5 = Locale.getDefault().getLanguage().toUpperCase(Locale.ENGLISH);
        s6 = a();
        s7 = com.etermax.a.b.d(a);
        if (d.c())
        {
            s8 = "PRO";
        } else
        {
            s8 = "LITE";
        }
        s9 = b();
        s10 = c();
        if (TextUtils.isEmpty(s))
        {
            s = b.f();
        }
        intent.putExtra("android.intent.extra.SUBJECT", (new StringBuilder()).append(s4).append(" [").append(s5).append("] Android ").append(s6).append(" ").append(s7).append(" ").append(s8).toString());
        stringbuilder = new StringBuilder();
        if (!TextUtils.isEmpty(s1))
        {
            stringbuilder.append("Username: ").append(s1);
            stringbuilder.append(" [").append(l).append("]").append("<br/>");
        }
        if (!TextUtils.isEmpty(s))
        {
            stringbuilder.append("Email: ").append(s).append("<br/>");
        }
        stringbuilder.append("Device: ").append(s2);
        stringbuilder.append(" [").append(s6).append("]").append("<br/>");
        stringbuilder.append("OS: ").append(s3).append("<br/>");
        stringbuilder.append("Game version: ").append(s7);
        stringbuilder.append(" [").append(s8).append("]").append("<br/>");
        stringbuilder.append("Language: ").append(s5).append("<br/>");
        if (!TextUtils.isEmpty(s9))
        {
            stringbuilder.append("Connection: ").append(s9).append("<br/>");
        }
        if (!TextUtils.isEmpty(s10))
        {
            stringbuilder.append("Carrier: ").append(s10).append("<br/>").append("<br/>");
        }
        stringbuilder.append("<b>");
        stringbuilder.append(a.getString(o.issue_description));
        stringbuilder.append("</b>").append("<br/>").append("<br/>");
        intent.putExtra("android.intent.extra.TEXT", Html.fromHtml(stringbuilder.toString()));
        intent.setType("message/rfc822");
        return Intent.createChooser(intent, a.getString(o.send_feedback));
    }

    public String a()
    {
        DisplayMetrics displaymetrics = a.getResources().getDisplayMetrics();
        if (displaymetrics.densityDpi >= 480)
        {
            return "xxhdpi";
        }
        if (displaymetrics.densityDpi >= 320)
        {
            return "xhdpi";
        }
        if (displaymetrics.densityDpi >= 240)
        {
            return "hdpi";
        }
        if (displaymetrics.densityDpi >= 213)
        {
            return "tvdpi";
        }
        if (displaymetrics.densityDpi >= 160)
        {
            return "mdpi";
        } else
        {
            return "ldpi";
        }
    }

    public String b()
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)a.getSystemService("connectivity");
        if (connectivitymanager == null) goto _L2; else goto _L1
_L1:
        NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
        if (networkinfo == null) goto _L2; else goto _L3
_L3:
        networkinfo.getType();
        JVM INSTR tableswitch 0 9: default 84
    //                   0 92
    //                   1 88
    //                   2 248
    //                   3 252
    //                   4 176
    //                   5 244
    //                   6 256
    //                   7 264
    //                   8 268
    //                   9 260;
           goto _L2 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L2:
        return "";
_L5:
        return "WIFI";
_L4:
        networkinfo.getSubtype();
        JVM INSTR tableswitch 0 15: default 176
    //                   0 240
    //                   1 196
    //                   2 188
    //                   3 236
    //                   4 184
    //                   5 200
    //                   6 204
    //                   7 180
    //                   8 212
    //                   9 224
    //                   10 216
    //                   11 228
    //                   12 208
    //                   13 232
    //                   14 192
    //                   15 220;
           goto _L8 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29
_L8:
        return "MOBILE_DUN";
_L21:
        return "1xRTT";
_L18:
        return "CDMA";
_L16:
        return "EDGE";
_L28:
        return "EHRPD";
_L15:
        return "GPRS";
_L19:
        return "EVDO_0";
_L20:
        return "EVDO_A";
_L26:
        return "EVDO_B";
_L22:
        return "HSDPA";
_L24:
        return "HSPA";
_L29:
        return "HSPAP";
_L23:
        return "HSUPA";
_L25:
        return "IDEN";
_L27:
        return "LTE";
_L17:
        return "UMTS";
_L14:
        return "MOBILE_UNKNOWN";
_L9:
        return "MOBILE_HIPRI";
_L6:
        return "MOBILE_MMS";
_L7:
        return "MOBILE_SUPL";
_L10:
        return "WIMAX";
_L13:
        return "ETHERNET";
_L11:
        return "BLUETOOTH";
_L12:
        return "DUMMY";
    }

    public String c()
    {
        return ((TelephonyManager)a.getSystemService("phone")).getNetworkOperatorName();
    }
}
