// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import android.util.Log;
import java.util.concurrent.Semaphore;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.mobileapptracker:
//            c, h

public class e
    implements Runnable
{

    final c a;

    protected e(c c1)
    {
        a = c1;
        super();
    }

    public void run()
    {
        int i;
        i = a.a();
        if (i == 0)
        {
            return;
        }
        c.a(a).acquire();
        int j;
        j = 1;
        if (i > 50)
        {
            j = 1 + (i - 50);
        }
_L17:
        if (j > i) goto _L2; else goto _L1
_L1:
        String s;
        String s1;
        s = Integer.toString(j);
        s1 = a.b(s);
        if (s1 == null) goto _L4; else goto _L3
_L3:
        String s2;
        String s3;
        JSONObject jsonobject1;
        boolean flag;
        JSONObject jsonobject = new JSONObject(s1);
        s2 = jsonobject.getString("link");
        s3 = jsonobject.getString("data");
        jsonobject1 = jsonobject.getJSONObject("post_body");
        flag = jsonobject.getBoolean("first_session");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        synchronized (c.b(a).l)
        {
            c.b(a).l.wait(60000L);
        }
        if (c.b(a) != null)
        {
            if (c.b(a).a(s2, s3, jsonobject1))
            {
                a.a(s);
                c.a(0L);
                break MISSING_BLOCK_LABEL_605;
            }
            break MISSING_BLOCK_LABEL_252;
        }
          goto _L5
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        a.a(s);
        c.a(a).release();
        return;
        exception1;
        executorservice;
        JVM INSTR monitorexit ;
        throw exception1;
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
        c.a(a).release();
        return;
        j--;
        int k = s2.indexOf("&sdk_retry_attempt=");
        if (k <= 0) goto _L7; else goto _L6
_L6:
        int i1;
        int j1;
        int k1;
        i1 = -1;
        j1 = k + 19;
        k1 = j1 + 1;
_L9:
        String s5 = s2.substring(j1, k1);
        int j2 = Integer.parseInt(s5);
        i1 = j2;
        k1++;
        if (true) goto _L9; else goto _L8
_L8:
        StringIndexOutOfBoundsException stringindexoutofboundsexception;
        stringindexoutofboundsexception;
_L15:
        int i2 = i1 + 1;
        String s4 = s2.replaceFirst("&sdk_retry_attempt=\\d+", (new StringBuilder("&sdk_retry_attempt=")).append(i2).toString());
        JSONObject jsonobject2 = new JSONObject(s1);
        jsonobject2.put("link", s4);
        a.a(jsonobject2, s);
_L7:
        if (c.b() != 0L) goto _L11; else goto _L10
_L10:
        c.a(30L);
_L13:
        double d;
        long l;
        d = 1.0D + 0.10000000000000001D * Math.random();
        l = c.b();
        Exception exception;
        long l1 = (long)(1000D * (d * (double)l));
        JSONException jsonexception1;
        try
        {
            Thread.sleep(l1);
        }
        catch (InterruptedException interruptedexception1) { }
        finally
        {
            c.a(a).release();
        }
        break MISSING_BLOCK_LABEL_605;
        jsonexception1;
        jsonexception1.printStackTrace();
        if (true) goto _L7; else goto _L12
_L12:
        throw exception;
_L11:
label0:
        {
            if (c.b() > 30L)
            {
                break label0;
            }
            c.a(90L);
        }
          goto _L13
label1:
        {
            if (c.b() > 90L)
            {
                break label1;
            }
            c.a(600L);
        }
          goto _L13
label2:
        {
            if (c.b() > 600L)
            {
                break label2;
            }
            c.a(3600L);
        }
          goto _L13
label3:
        {
            if (c.b() > 3600L)
            {
                break label3;
            }
            c.a(21600L);
        }
          goto _L13
        c.a(0x15180L);
          goto _L13
_L5:
        Log.d("MobileAppTracker", "Dropping queued request because no MAT object was found");
        a.a(s);
        break MISSING_BLOCK_LABEL_605;
_L4:
        Log.d("MobileAppTracker", "Null request skipped from queue");
        a.a(s);
        break MISSING_BLOCK_LABEL_605;
_L2:
        c.a(a).release();
        return;
        NumberFormatException numberformatexception;
        numberformatexception;
        if (true) goto _L15; else goto _L14
_L14:
        j++;
        if (true) goto _L17; else goto _L16
_L16:
    }
}
