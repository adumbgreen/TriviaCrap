// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mobileapptracker;

import android.util.Log;
import java.util.concurrent.Semaphore;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.mobileapptracker:
//            c

public class d
    implements Runnable
{

    final c a;
    private String b;
    private String c;
    private JSONObject d;
    private boolean e;

    protected d(c c1, String s, String s1, JSONObject jsonobject, boolean flag)
    {
        a = c1;
        super();
        b = null;
        c = null;
        d = null;
        e = false;
        b = s;
        c = s1;
        d = jsonobject;
        e = flag;
    }

    public void run()
    {
        JSONObject jsonobject;
        com.mobileapptracker.c.a(a).acquire();
        jsonobject = new JSONObject();
        jsonobject.put("link", b);
        jsonobject.put("data", c);
        jsonobject.put("post_body", d);
        jsonobject.put("first_session", e);
        int i = 1 + a.a();
        a.a(i);
        String s = Integer.toString(i);
        a.a(jsonobject, s);
        com.mobileapptracker.c.a(a).release();
        return;
        JSONException jsonexception;
        jsonexception;
        Log.w("MobileAppTracker", "Failed creating event for queueing");
        jsonexception.printStackTrace();
        com.mobileapptracker.c.a(a).release();
        return;
        InterruptedException interruptedexception;
        interruptedexception;
        Log.w("MobileAppTracker", "Interrupted adding event to queue");
        interruptedexception.printStackTrace();
        com.mobileapptracker.c.a(a).release();
        return;
        Exception exception;
        exception;
        com.mobileapptracker.c.a(a).release();
        throw exception;
    }
}
