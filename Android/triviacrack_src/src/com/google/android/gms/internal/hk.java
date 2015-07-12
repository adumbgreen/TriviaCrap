// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import java.util.HashMap;

// Referenced classes of package com.google.android.gms.internal:
//            hl, he

public final class hk
    implements android.os.Handler.Callback
{

    private static final Object a = new Object();
    private static hk b;
    private final Context c;
    private final HashMap d = new HashMap();
    private final Handler e;

    private hk(Context context)
    {
        e = new Handler(context.getMainLooper(), this);
        c = context.getApplicationContext();
    }

    public static hk a(Context context)
    {
        synchronized (a)
        {
            if (b == null)
            {
                b = new hk(context.getApplicationContext());
            }
        }
        return b;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static HashMap a(hk hk1)
    {
        return hk1.d;
    }

    public boolean a(String s, he he1)
    {
        HashMap hashmap = d;
        hashmap;
        JVM INSTR monitorenter ;
        hl hl1 = (hl)d.get(s);
        if (hl1 != null) goto _L2; else goto _L1
_L1:
        hl1 = new hl(this, s);
        hl1.a(he1);
        Intent intent = (new Intent(s)).setPackage("com.google.android.gms");
        hl1.a(c.bindService(intent, hl1.a(), 129));
        d.put(s, hl1);
_L7:
        boolean flag = hl1.c();
        hashmap;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        e.removeMessages(0, hl1);
        if (hl1.c(he1))
        {
            throw new IllegalStateException((new StringBuilder()).append("Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction=").append(s).toString());
        }
        break MISSING_BLOCK_LABEL_155;
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        hl1.a(he1);
        hl1.d();
        JVM INSTR tableswitch 1 2: default 245
    //                   1 188
    //                   2 205;
           goto _L3 _L4 _L5
_L3:
        if (true) goto _L7; else goto _L6
_L6:
_L4:
        he1.onServiceConnected(hl1.g(), hl1.f());
          goto _L7
_L5:
        Intent intent1 = (new Intent(s)).setPackage("com.google.android.gms");
        hl1.a(c.bindService(intent1, hl1.a(), 129));
          goto _L7
    }

    public void b(String s, he he1)
    {
        HashMap hashmap = d;
        hashmap;
        JVM INSTR monitorenter ;
        hl hl1 = (hl)d.get(s);
        if (hl1 != null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        throw new IllegalStateException((new StringBuilder()).append("Nonexistent connection status for service action: ").append(s).toString());
        Exception exception;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        if (!hl1.c(he1))
        {
            throw new IllegalStateException((new StringBuilder()).append("Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction=").append(s).toString());
        }
        hl1.b(he1);
        if (hl1.e())
        {
            Message message = e.obtainMessage(0, hl1);
            e.sendMessageDelayed(message, 5000L);
        }
        hashmap;
        JVM INSTR monitorexit ;
    }

    public boolean handleMessage(Message message)
    {
        hl hl1;
        switch (message.what)
        {
        default:
            return false;

        case 0: // '\0'
            hl1 = (hl)message.obj;
            break;
        }
        synchronized (d)
        {
            if (hl1.e())
            {
                c.unbindService(hl1.a());
                d.remove(hl1.b());
            }
        }
        return true;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
