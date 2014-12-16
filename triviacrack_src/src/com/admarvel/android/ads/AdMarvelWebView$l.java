// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelWebView, AdMarvelInternalWebView

class n
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
    String j;
    String k;
    int l;
    int m;
    int n;
    private final WeakReference o;
    private final WeakReference p;

    public void run()
    {
        AdMarvelWebView admarvelwebview;
        AdMarvelInternalWebView admarvelinternalwebview;
        admarvelwebview = (AdMarvelWebView)o.get();
        admarvelinternalwebview = (AdMarvelInternalWebView)p.get();
        if (admarvelwebview != null && admarvelinternalwebview != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ContentResolver contentresolver = admarvelwebview.getContext().getContentResolver();
        Cursor cursor1 = contentresolver.query(android.provider.alendars.CONTENT_URI, new String[] {
            "_id", "calendar_displayName"
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
        ContentValues contentvalues;
        contentvalues = new ContentValues();
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
        if (l <= 0)
        {
            contentvalues.put("hasAlarm", Integer.valueOf(1));
        }
        if (h == null || h.length() <= 0) goto _L9; else goto _L8
_L8:
        contentvalues.put("eventTimezone", h);
_L13:
        Uri uri;
        if (i != null && i.length() > 0)
        {
            contentvalues.put("rrule", i);
        }
        if (j != null && j.length() > 0)
        {
            contentvalues.put("exdate", j);
        }
        contentvalues.put("eventStatus", Integer.valueOf(m));
        contentvalues.put("availability", Integer.valueOf(n));
        uri = contentresolver.insert(android.provider.vents.CONTENT_URI, contentvalues);
        if (uri == null) goto _L11; else goto _L10
_L10:
        if (l <= 0)
        {
            ContentValues contentvalues1 = new ContentValues();
            contentvalues1.put("event_id", Long.valueOf(Long.parseLong(uri.getLastPathSegment())));
            contentvalues1.put("method", Integer.valueOf(1));
            contentvalues1.put("minutes", Integer.valueOf(Math.abs(l)));
            contentresolver.insert(android.provider.eminders.CONTENT_URI, contentvalues1);
        }
        if (k != null && k.length() > 0)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"YES\")").toString());
        }
_L16:
        if (cursor == null) goto _L1; else goto _L12
_L12:
        cursor.close();
        return;
_L9:
        contentvalues.put("eventTimezone", TimeZone.getDefault().getID());
          goto _L13
        Exception exception;
        exception;
_L19:
        exception.printStackTrace();
        if (k != null && k.length() > 0)
        {
            admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"NO\")").toString());
        }
        if (cursor == null) goto _L1; else goto _L14
_L14:
        cursor.close();
        return;
_L11:
        if (k == null || k.length() <= 0) goto _L16; else goto _L15
_L15:
        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"NO\")").toString());
          goto _L16
        Exception exception1;
        exception1;
_L18:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception1;
_L4:
        if (k == null || k.length() <= 0) goto _L16; else goto _L17
_L17:
        admarvelinternalwebview.loadUrl((new StringBuilder()).append("javascript:").append(k).append("(\"NO\")").toString());
          goto _L16
        exception1;
        cursor = null;
          goto _L18
        exception;
        cursor = null;
          goto _L19
    }

    public bView(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s, String s1, String s2)
    {
        a = new SimpleDateFormat("yyyyMMddhhmm");
        b = null;
        c = null;
        l = 1;
        m = 0;
        n = 0;
        o = new WeakReference(admarvelwebview);
        p = new WeakReference(admarvelinternalwebview);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        b = Long.valueOf(a.parse(s).getTime());
        c = Long.valueOf(0x36ee80L + a.parse(s).getTime());
        d = s1;
        e = s2;
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    public bView(AdMarvelInternalWebView admarvelinternalwebview, AdMarvelWebView admarvelwebview, String s, String s1, String s2, String s3, String s4, 
            String s5, int i1)
    {
        a = new SimpleDateFormat("yyyyMMddhhmm");
        b = null;
        c = null;
        l = 1;
        m = 0;
        n = 0;
        o = new WeakReference(admarvelwebview);
        p = new WeakReference(admarvelinternalwebview);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        b = Long.valueOf(a.parse(s).getTime());
        if (s5 == null)
        {
            break MISSING_BLOCK_LABEL_151;
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
                l = i1 / 60;
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        break MISSING_BLOCK_LABEL_183;
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
        l = 1;
        m = 0;
        n = 0;
        o = new WeakReference(admarvelwebview);
        p = new WeakReference(admarvelinternalwebview);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        b = Long.valueOf(a.parse(s).getTime());
        if (s5 == null) goto _L2; else goto _L1
_L1:
        c = Long.valueOf(a.parse(s5).getTime());
_L11:
        d = s1;
        e = s2;
        f = s3;
        g = s4;
        if (i1 > 0)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        l = i1 / 60;
        if (s6 == null) goto _L4; else goto _L3
_L3:
        int l1 = s6.length();
        if (l1 <= 0) goto _L4; else goto _L5
_L5:
        String as[] = s6.split(":");
        if (as.length != 2) goto _L7; else goto _L6
_L6:
        if (!as[0].startsWith("+")) goto _L9; else goto _L8
_L8:
        int j2 = 60 * Integer.parseInt(as[0].substring(1)) + Integer.parseInt(as[1]);
_L13:
        String as1[] = TimeZone.getAvailableIDs(1000 * (j2 * 60));
        if (as1 == null) goto _L4; else goto _L10
_L10:
        if (as1.length > 0)
        {
            h = as1[0];
        }
          goto _L4
_L2:
        c = Long.valueOf(0x36ee80L + a.parse(s).getTime());
          goto _L11
_L4:
        try
        {
            i = s8;
            j = s9;
            k = s10;
            m = j1;
            n = k1;
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        return;
_L9:
        boolean flag1 = as[0].startsWith("-");
        j2 = 0;
        if (!flag1) goto _L13; else goto _L12
_L12:
        j2 = -1 * (60 * Integer.parseInt(as[0].substring(1)) + Integer.parseInt(as[1]));
          goto _L13
_L7:
        int i2 = as.length;
        j2 = 0;
        if (i2 != 1) goto _L13; else goto _L14
_L14:
label0:
        {
            if (!as[0].startsWith("+"))
            {
                break label0;
            }
            j2 = 60 * Integer.parseInt(as[0].substring(1));
        }
          goto _L13
        boolean flag = as[0].startsWith("-");
        j2 = 0;
        if (!flag) goto _L13; else goto _L15
_L15:
        int k2 = Integer.parseInt(as[0].substring(1));
        j2 = -1 * (k2 * 60);
          goto _L13
        Exception exception1;
        exception1;
        exception1.printStackTrace();
          goto _L4
    }
}
