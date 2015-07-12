// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.b;

import android.os.Handler;
import android.os.Message;
import com.mdotm.android.c.e;
import com.mdotm.android.d.a;
import com.mdotm.android.e.d;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.mdotm.android.b:
//            e

class > extends Handler
{

    final com.mdotm.android.b.e a;

    public void handleMessage(Message message)
    {
        try
        {
            d.b(this, "Handling the message");
        }
        catch (Exception exception)
        {
            try
            {
                com.mdotm.android.b.e.a(a).clear();
                e.b(a).clear();
                e.c(a).clear();
                com.mdotm.android.b.e.d(a).clear();
                return;
            }
            catch (Exception exception1)
            {
                return;
            }
        }
        if (message == null) goto _L2; else goto _L1
_L1:
        d.c(this, (new StringBuilder(" message id ")).append(message.obj).toString());
        if (!com.mdotm.android.b.e.a(a).contains(message.obj)) goto _L2; else goto _L3
_L3:
        d.b(this, "contains requested id ");
        com.mdotm.android.b.e.a(a).remove(message.obj);
        e.b(a).remove(message.obj);
        e.c(a).remove(message.obj);
        com.mdotm.android.b.e.d(a).remove(message.obj);
        if (com.mdotm.android.b.e.d(a).size() <= 0) goto _L5; else goto _L4
_L4:
        if (!a.a())
        {
            break MISSING_BLOCK_LABEL_546;
        }
        Long long3 = (Long)com.mdotm.android.b.e.d(a).get(0);
        d.c(this, "mapRequestQueue size > 0");
        a.a((a)e.b(a).get(long3), (e)e.c(a).get(long3), long3.longValue());
_L2:
        super.handleMessage(message);
        return;
_L7:
        int i;
        Long long1;
        Long long2;
        for (; i < com.mdotm.android.b.e.d(a).size(); i++)
        {
            break MISSING_BLOCK_LABEL_384;
        }

        if (com.mdotm.android.b.e.d(a).size() > 0)
        {
            d.b(this, "still has some interstitial requests so processing");
            long2 = (Long)com.mdotm.android.b.e.d(a).get(0);
            a.a((a)e.b(a).get(long2), (e)e.c(a).get(long2), long2.longValue());
        }
          goto _L2
        long1 = (Long)com.mdotm.android.b.e.d(a).get(i);
        if (!((a)e.b(a).get(long1)).d())
        {
            d.b(this, "removing banner");
            e.b(a).remove(long1);
            e.c(a).remove(long1);
            com.mdotm.android.b.e.d(a).remove(long1);
        }
        break MISSING_BLOCK_LABEL_552;
_L5:
        if (com.mdotm.android.b.e.a(a).size() != 0) goto _L2; else goto _L6
_L6:
        com.mdotm.android.b.e.a(a).clear();
        e.b(a).clear();
        e.c(a).clear();
        com.mdotm.android.b.e.d(a).clear();
          goto _L2
        i = 0;
          goto _L7
    }

    (com.mdotm.android.b.e e1)
    {
        a = e1;
        super();
    }
}
