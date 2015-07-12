// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.admarvel.android.ads:
//            ac, AdMarvelWebView, AdMarvelInternalWebView

class a
    implements Runnable
{

    SimpleDateFormat a;
    Long b;
    Long c;
    String d;
    String e;
    String f;
    String g;
    String h;
    String i;
    int j;
    private final WeakReference k;
    private final WeakReference l;

    String a()
    {
        if (ac.a() >= 8)
        {
            return "content://com.android.calendar/";
        } else
        {
            return "content://calendar/";
        }
    }

    public void run()
    {
        AdMarvelWebView admarvelwebview;
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelwebview = (AdMarvelWebView)k.get();
        admarvelinternalwebview = (AdMarvelInternalWebView)l.get();
        if (admarvelwebview != null && admarvelinternalwebview != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ContentResolver contentresolver = admarvelwebview.getContext().getContentResolver();
        Cursor cursor1 = contentresolver.query(Uri.parse((new StringBuilder()).append(a()).append("calendars").toString()), new String[] {
            "_id", "displayname"
        }, null, null, null);
        Cursor cursor = cursor1;
        if (cursor == null) goto _L4; else goto _L3
_L3:
        if (!cursor.moveToFirst()) goto _L4; else goto _L5
_L5:
        String as[];
        int ai[];
        as = new String[cursor.getCount()];
        ai = new int[cursor.getCount()];
        int i1 = 0;
_L7:
        if (i1 >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        ai[i1] = cursor.getInt(0);
        as[i1] = cursor.getString(1);
        cursor.moveToNext();
        i1++;
        if (true) goto _L7; else goto _L6
_L6:
        Uri uri1;
        Uri uri2;
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("calendar_id", Integer.valueOf(ai[0]));
        if (d != null)
        {
            contentvalues.put("title", d);
        }
        if (e != null)
        {
            contentvalues.put("description", e);
        }
        if (f != null)
        {
            contentvalues.put("eventLocation", f);
        }
        if (b != null)
        {
            contentvalues.put("dtstart", b);
        }
        if (c != null)
        {
            contentvalues.put("dtend", c);
        }
        if (g != null && (g.toLowerCase().equals("true") || g.toLowerCase().equals("yes")))
        {
            contentvalues.put("allDay", Integer.valueOf(1));
        }
        if (j <= 0)
        {
            contentvalues.put("hasAlarm", Integer.valueOf(1));
        }
        if (h != null && h.length() > 0)
        {
            contentvalues.put("eventTimezone", h);
        }
        Uri uri = Uri.parse((new StringBuilder()).append(a()).append("events").toString());
        uri1 = Uri.parse((new StringBuilder()).append(a()).append("reminders").toString());
        uri2 = contentresolver.insert(uri, contentvalues);
        if (uri2 == null) goto _L9; else goto _L8
_L8:
        if (j <= 0)
        {
            ContentValues contentvalues1 = new ContentValues();
            contentvalues1.put("event_id", Long.valueOf(Long.parseLong(uri2.getLastPathSegment())));
            contentvalues1.put("method", Integer.valueOf(1));
            contentvalues1.put("minutes", Integer.valueOf(Math.abs(j)));
            contentresolver.insert(uri1, contentvalues1);
        }
        if (i != null && i.length() > 0)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(i).append("(\"YES\")").toString());
        }
_L4:
        if (cursor == null) goto _L1; else goto _L10
_L10:
        cursor.close();
        return;
_L9:
        if (i == null || i.length() <= 0) goto _L4; else goto _L11
_L11:
        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(i).append("(\"NO\")").toString());
          goto _L4
        Exception exception;
        exception;
_L15:
        if (i != null && i.length() > 0)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(i).append("(\"NO\")").toString());
        }
        exception.printStackTrace();
        if (cursor == null) goto _L1; else goto _L12
_L12:
        cursor.close();
        return;
        Exception exception1;
        exception1;
        cursor = null;
_L14:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception1;
        exception1;
        if (true) goto _L14; else goto _L13
_L13:
        exception;
        cursor = null;
          goto _L15
    }

    public bView(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s, String s1, String s2)
    {
        a = new SimpleDateFormat("yyyyMMddhhmm");
        b = null;
        c = null;
        j = 1;
        k = new WeakReference(admarvelwebview);
        l = new WeakReference(admarvelinternalwebview);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        b = Long.valueOf(a.parse(s).getTime());
        c = Long.valueOf(0x36ee80L + a.parse(s).getTime());
        d = s1;
        e = s2;
        return;
        Exception exception;
        exception;
        Logging.log(Log.getStackTraceString(exception));
        return;
    }

    public bView(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s, String s1, String s2, String s3, String s4, 
            String s5, int i1)
    {
        a = new SimpleDateFormat("yyyyMMddhhmm");
        b = null;
        c = null;
        j = 1;
        k = new WeakReference(admarvelwebview);
        l = new WeakReference(admarvelinternalwebview);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        b = Long.valueOf(a.parse(s).getTime());
        if (s5 == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        c = Long.valueOf(a.parse(s5).getTime());
_L1:
        d = s1;
        e = s2;
        f = s3;
        g = s4;
        if (i1 <= 0)
        {
            try
            {
                j = i1 / 60;
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        break MISSING_BLOCK_LABEL_173;
        c = Long.valueOf(0x36ee80L + a.parse(s).getTime());
          goto _L1
    }

    public bView(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s, String s1, String s2, String s3, String s4, 
            String s5, int i1, String s6, String s7, String s8, String s9, int j1, 
            int k1, String s10)
    {
        a = new SimpleDateFormat("yyyyMMddhhmm");
        b = null;
        c = null;
        j = 1;
        k = new WeakReference(admarvelwebview);
        l = new WeakReference(admarvelinternalwebview);
        if (s != null)
        {
            try
            {
                b = Long.valueOf(a.parse(s).getTime());
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                return;
            }
        }
        if (s5 == null)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        c = Long.valueOf(a.parse(s5).getTime());
_L1:
        d = s1;
        e = s2;
        f = s3;
        g = s4;
        if (i1 > 0)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        j = i1 / 60;
        if (s6 == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        if (s6.length() > 0)
        {
            h = s6;
        }
        i = s10;
        return;
        c = Long.valueOf(0x36ee80L + a.parse(s).getTime());
          goto _L1
    }
}
