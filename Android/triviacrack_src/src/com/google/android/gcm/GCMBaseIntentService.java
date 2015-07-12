// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gcm;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;
import java.util.Random;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gcm:
//            a

public abstract class GCMBaseIntentService extends IntentService
{

    private static android.os.PowerManager.WakeLock a;
    private static final Object b = com/google/android/gcm/GCMBaseIntentService;
    private static int d = 0;
    private static final Random e;
    private static final int f;
    private static final String g;
    private final String c[];

    protected GCMBaseIntentService()
    {
        this(a("DynamicSenderIds"), null);
    }

    private GCMBaseIntentService(String s, String as[])
    {
        super(s);
        c = as;
    }

    private static String a(String s)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("GCMIntentService-").append(s).append("-");
        int i = 1 + d;
        d = i;
        String s1 = stringbuilder.append(i).toString();
        Log.v("GCMBaseIntentService", (new StringBuilder()).append("Intent service name: ").append(s1).toString());
        return s1;
    }

    static void a(Context context, Intent intent, String s)
    {
        synchronized (b)
        {
            if (a == null)
            {
                a = ((PowerManager)context.getSystemService("power")).newWakeLock(1, "GCM_LIB");
            }
        }
        Log.v("GCMBaseIntentService", "Acquiring wakelock");
        a.acquire();
        intent.setClassName(context, s);
        context.startService(intent);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void b(Context context, Intent intent)
    {
        String s = intent.getStringExtra("registration_id");
        String s1 = intent.getStringExtra("error");
        String s2 = intent.getStringExtra("unregistered");
        Log.d("GCMBaseIntentService", (new StringBuilder()).append("handleRegistration: registrationId = ").append(s).append(", error = ").append(s1).append(", unregistered = ").append(s2).toString());
        if (s != null)
        {
            com.google.android.gcm.a.i(context);
            com.google.android.gcm.a.a(context, s);
            b(context, s);
        } else
        {
            if (s2 != null)
            {
                com.google.android.gcm.a.i(context);
                c(context, com.google.android.gcm.a.f(context));
                return;
            }
            Log.d("GCMBaseIntentService", (new StringBuilder()).append("Registration error: ").append(s1).toString());
            if ("SERVICE_NOT_AVAILABLE".equals(s1))
            {
                if (d(context, s1))
                {
                    int i = com.google.android.gcm.a.j(context);
                    int j = i / 2 + e.nextInt(i);
                    Log.d("GCMBaseIntentService", (new StringBuilder()).append("Scheduling registration retry, backoff = ").append(j).append(" (").append(i).append(")").toString());
                    Intent intent1 = new Intent("com.google.android.gcm.intent.RETRY");
                    intent1.putExtra("token", g);
                    PendingIntent pendingintent = PendingIntent.getBroadcast(context, 0, intent1, 0);
                    ((AlarmManager)context.getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + (long)j, pendingintent);
                    if (i < f)
                    {
                        com.google.android.gcm.a.a(context, i * 2);
                        return;
                    }
                } else
                {
                    Log.d("GCMBaseIntentService", "Not retrying failed operation");
                    return;
                }
            } else
            {
                a(context, s1);
                return;
            }
        }
    }

    protected void a(Context context, int i)
    {
    }

    protected abstract void a(Context context, Intent intent);

    protected abstract void a(Context context, String s);

    protected String[] a(Context context)
    {
        if (c == null)
        {
            throw new IllegalStateException("sender id not set on constructor");
        } else
        {
            return c;
        }
    }

    protected abstract void b(Context context, String s);

    protected abstract void c(Context context, String s);

    protected boolean d(Context context, String s)
    {
        return true;
    }

    public final void onHandleIntent(Intent intent)
    {
        Context context;
        String s;
        context = getApplicationContext();
        s = intent.getAction();
        if (!s.equals("com.google.android.c2dm.intent.REGISTRATION")) goto _L2; else goto _L1
_L1:
        com.google.android.gcm.a.c(context);
        b(context, intent);
_L17:
        Object obj1 = b;
        obj1;
        JVM INSTR monitorenter ;
        if (a == null) goto _L4; else goto _L3
_L3:
        Log.v("GCMBaseIntentService", "Releasing wakelock");
        a.release();
_L14:
        return;
_L2:
        if (!s.equals("com.google.android.c2dm.intent.RECEIVE")) goto _L6; else goto _L5
_L5:
        String s2 = intent.getStringExtra("message_type");
        if (s2 == null) goto _L8; else goto _L7
_L7:
        if (!s2.equals("deleted_messages")) goto _L10; else goto _L9
_L9:
        String s3 = intent.getStringExtra("total_deleted");
        Exception exception;
        Object obj;
        if (s3 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            int i = Integer.parseInt(s3);
            Log.v("GCMBaseIntentService", (new StringBuilder()).append("Received deleted messages notification: ").append(i).toString());
            a(context, i);
            continue; /* Loop/switch isn't completed */
        }
        catch (NumberFormatException numberformatexception) { }
        finally
        {
            obj = b;
        }
        Log.e("GCMBaseIntentService", (new StringBuilder()).append("GCM returned invalid number of deleted messages: ").append(s3).toString());
        continue; /* Loop/switch isn't completed */
        JVM INSTR monitorenter ;
        if (a == null) goto _L12; else goto _L11
_L11:
        Log.v("GCMBaseIntentService", "Releasing wakelock");
        a.release();
_L15:
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L10:
        Log.e("GCMBaseIntentService", (new StringBuilder()).append("Received unknown special message: ").append(s2).toString());
        continue; /* Loop/switch isn't completed */
_L8:
        a(context, intent);
        continue; /* Loop/switch isn't completed */
_L6:
        if (!s.equals("com.google.android.gcm.intent.RETRY"))
        {
            continue; /* Loop/switch isn't completed */
        }
        String s1 = intent.getStringExtra("token");
        if (g.equals(s1))
        {
            break MISSING_BLOCK_LABEL_372;
        }
        Log.e("GCMBaseIntentService", (new StringBuilder()).append("Received invalid token: ").append(s1).toString());
        Object obj2 = b;
        obj2;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_360;
        }
        Log.v("GCMBaseIntentService", "Releasing wakelock");
        a.release();
_L13:
        return;
        Exception exception3;
        exception3;
        obj2;
        JVM INSTR monitorexit ;
        throw exception3;
        Log.e("GCMBaseIntentService", "Wakelock reference is null");
          goto _L13
        if (com.google.android.gcm.a.e(context))
        {
            com.google.android.gcm.a.b(context);
            continue; /* Loop/switch isn't completed */
        }
        com.google.android.gcm.a.b(context, a(context));
        continue; /* Loop/switch isn't completed */
_L4:
        Log.e("GCMBaseIntentService", "Wakelock reference is null");
          goto _L14
        Exception exception2;
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
_L12:
        Log.e("GCMBaseIntentService", "Wakelock reference is null");
          goto _L15
        Exception exception1;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        if (true) goto _L17; else goto _L16
_L16:
    }

    static 
    {
        e = new Random();
        f = (int)TimeUnit.SECONDS.toMillis(3600L);
        g = Long.toBinaryString(e.nextLong());
    }
}
