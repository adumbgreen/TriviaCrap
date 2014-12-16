// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.smartadserver.android.library.a.i;
import com.smartadserver.android.library.h.b;
import com.smartadserver.android.library.h.c;
import java.io.File;
import java.io.InterruptedIOException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.Vector;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.smartadserver.android.library.b:
//            a, d

public class e
{

    private static final String a = com/smartadserver/android/library/b/e.getSimpleName();
    private static final Object b = new Object();
    private static e c;
    private static long m = 5000L;
    private HttpClient d;
    private Context e;
    private BroadcastReceiver f;
    private Vector g;
    private Vector h;
    private Hashtable i;
    private int j;
    private Timer k;
    private TimerTask l;
    private String n;

    public e(Context context)
    {
        j = 3;
        g = new Vector();
        h = new Vector();
        i = new Hashtable();
        n = com.smartadserver.android.library.h.c.e(context);
        b(context);
        Vector vector;
        synchronized (b)
        {
            vector = (Vector)com.smartadserver.android.library.h.b.b(e, "SmartAdServerCache", "pendingURLCalls.bin");
            com.smartadserver.android.library.h.b.a(new File(e.getDir("SmartAdServerCache", 0), "pendingURLCalls.bin"));
        }
        if (vector != null)
        {
            for (Iterator iterator = vector.iterator(); iterator.hasNext(); a((String)iterator.next(), true)) { }
        }
        break MISSING_BLOCK_LABEL_146;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static e a(Context context)
    {
        boolean flag = true;
        com/smartadserver/android/library/b/e;
        JVM INSTR monitorenter ;
        if (context == null) goto _L2; else goto _L1
_L1:
        if (c != null) goto _L4; else goto _L3
_L3:
        c = new e(context);
_L7:
        if (!flag) goto _L2; else goto _L5
_L5:
        (new Thread(new Runnable(context) {

            final Context a;

            public void run()
            {
                try
                {
                    com.smartadserver.android.library.h.c.a(a, true);
                    return;
                }
                catch (NoClassDefFoundError noclassdeffounderror)
                {
                    com.smartadserver.android.library.h.c.a((new StringBuilder()).append("Missing Google play services framework : ").append(noclassdeffounderror.getMessage()).toString());
                }
            }

            
            {
                a = context;
                super();
            }
        })).start();
_L2:
        e e1 = c;
        com/smartadserver/android/library/b/e;
        JVM INSTR monitorexit ;
        return e1;
_L4:
        if (c.e == null)
        {
            c.b(context);
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_82;
        Exception exception;
        exception;
        throw exception;
        flag = false;
        if (true) goto _L7; else goto _L6
_L6:
    }

    static void a(e e1)
    {
        e1.b();
    }

    static void a(e e1, HttpGet httpget)
    {
        e1.a(httpget);
    }

    private void a(HttpGet httpget)
    {
        synchronized (b)
        {
            g.add(httpget);
            h.add(httpget.getURI().toString());
            com.smartadserver.android.library.h.b.a(e, h, "SmartAdServerCache", "pendingURLCalls.bin");
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(HttpGet httpget, boolean flag)
    {
        a a1 = new a(n);
        if (d != null)
        {
            a1.a(d);
        }
        a1.a(httpget, new d(httpget, flag) {

            final HttpGet a;
            final boolean b;
            final e c;

            public void a(Exception exception)
            {
label0:
                {
label1:
                    {
                        boolean flag1;
                        Integer integer;
                        if ((exception instanceof UnknownHostException) || (exception instanceof InterruptedIOException))
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        if (!flag1 || !b)
                        {
                            break label0;
                        }
                        com.smartadserver.android.library.h.c.a("SASHttpRequestManager", (new StringBuilder()).append("retry to call url:").append(a.getURI()).toString());
                        integer = (Integer)com.smartadserver.android.library.b.e.b(c).get(a);
                        if (integer != null)
                        {
                            if (integer.intValue() <= 0)
                            {
                                break label1;
                            }
                            e.a(c, a);
                            com.smartadserver.android.library.b.e.b(c).put(a, Integer.valueOf(-1 + integer.intValue()));
                            c.a();
                        }
                        return;
                    }
                    com.smartadserver.android.library.h.c.a("SASHttpRequestManager", (new StringBuilder()).append("Failed to call URL (retries limit reached): ").append(a.getURI().toString()).toString());
                    com.smartadserver.android.library.b.e.b(c).remove(a);
                    return;
                }
                com.smartadserver.android.library.b.e.b(c).remove(a);
            }

            public void a(String s)
            {
                com.smartadserver.android.library.h.c.a("SASHttpRequestManager", (new StringBuilder()).append("Successfully called URL: ").append(a.getURI().toString()).toString());
                com.smartadserver.android.library.b.e.b(c).remove(a);
            }

            
            {
                c = e.this;
                a = httpget;
                b = flag;
                super();
            }
        });
    }

    static Hashtable b(e e1)
    {
        return e1.i;
    }

    private void b()
    {
        this;
        JVM INSTR monitorenter ;
        Context context = e;
        Exception exception;
        if (context != null)
        {
            try
            {
                while (com.smartadserver.android.library.h.c.d(e)) 
                {
                    a(c(), true);
                }
            }
            catch (IndexOutOfBoundsException indexoutofboundsexception) { }
            finally
            {
                this;
            }
        }
        this;
        JVM INSTR monitorexit ;
        return;
        throw exception;
    }

    private HttpGet c()
    {
        HttpGet httpget;
        synchronized (b)
        {
            httpget = (HttpGet)g.remove(0);
            h.remove(0);
            com.smartadserver.android.library.h.b.a(e, h, "SmartAdServerCache", "pendingURLCalls.bin");
        }
        return httpget;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a()
    {
        this;
        JVM INSTR monitorenter ;
        if (k == null)
        {
            k = new Timer("DelayedURLCallTimer");
        }
        if (l != null)
        {
            l.cancel();
        }
        l = new TimerTask() {

            final e a;

            public void run()
            {
                e.a(a);
            }

            
            {
                a = e.this;
                super();
            }
        };
        k.schedule(l, m);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(String s, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        String s1;
        Context context;
        s1 = s.replace("[", "%5B").replace("]", "%5D");
        context = e;
        if (context != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        HttpGet httpget = new HttpGet(s1);
_L6:
        if (httpget == null) goto _L1; else goto _L3
_L3:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        i.put(httpget, Integer.valueOf(j));
        if (!com.smartadserver.android.library.h.c.d(e)) goto _L5; else goto _L4
_L4:
        a(httpget, flag);
          goto _L1
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        com.smartadserver.android.library.a.i.a(e, s1, exception1, n, a);
        httpget = null;
          goto _L6
_L5:
        if (!flag) goto _L1; else goto _L7
_L7:
        a(httpget);
          goto _L1
    }

    public void b(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        Context context1 = e;
        if (context != context1) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        BroadcastReceiver broadcastreceiver;
        if (e == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        broadcastreceiver = f;
        if (broadcastreceiver == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        Exception exception;
        try
        {
            e.unregisterReceiver(f);
            com.smartadserver.android.library.h.c.a("SASHttpRequestManager", (new StringBuilder()).append("UN-REGISTER for context ").append(e).toString());
        }
        catch (IllegalArgumentException illegalargumentexception) { }
        e = context;
        if (f == null)
        {
            f = new BroadcastReceiver() {

                final e a;

                public void onReceive(Context context2, Intent intent)
                {
                    e.a(a);
                }

            
            {
                a = e.this;
                super();
            }
            };
        }
        if (e == null) goto _L4; else goto _L3
_L3:
        IntentFilter intentfilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        e.registerReceiver(f, intentfilter);
        com.smartadserver.android.library.h.c.a("SASHttpRequestManager", (new StringBuilder()).append("attach to context ").append(e).toString());
          goto _L1
        exception;
        throw exception;
_L4:
        if (k == null) goto _L1; else goto _L5
_L5:
        k.cancel();
        k = null;
          goto _L1
    }

}
