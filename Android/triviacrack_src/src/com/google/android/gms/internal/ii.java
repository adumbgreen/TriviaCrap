// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.f;
import com.google.android.gms.common.g;
import java.io.IOException;

// Referenced classes of package com.google.android.gms.internal:
//            ig, ez, iu, ij, 
//            iq, ir

public class ii extends ig
{

    private ii(Context context, iq iq1, ir ir)
    {
        super(context, iq1, ir);
    }

    public static ii a(String s, Context context)
    {
        ez ez1 = new ez();
        a(s, context, ((iq) (ez1)));
        return new ii(context, ez1, new iu(239));
    }

    protected void b(Context context)
    {
        long l;
        l = 1L;
        super.b(context);
        ij ij1 = e(context);
        String s;
        if (!ij1.b())
        {
            l = 0L;
        }
        a(28, l);
        s = ij1.a();
        IOException ioexception;
        if (s != null)
        {
            try
            {
                a(30, s);
                return;
            }
            catch (IOException ioexception1)
            {
                return;
            }
        }
        break MISSING_BLOCK_LABEL_70;
        ioexception;
        a(28, 1L);
        return;
        f f1;
        f1;
    }

    ij e(Context context)
    {
        int i = 0;
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info;
        String s;
        try
        {
            info = AdvertisingIdClient.getAdvertisingIdInfo(context);
        }
        catch (g g1)
        {
            throw new IOException(g1);
        }
        s = info.getId();
        String s1;
        if (s != null && s.matches("^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"))
        {
            byte abyte0[] = new byte[16];
            int j = 0;
            for (; i < s.length(); i += 2)
            {
                if (i == 8 || i == 13 || i == 18 || i == 23)
                {
                    i++;
                }
                abyte0[j] = (byte)((Character.digit(s.charAt(i), 16) << 4) + Character.digit(s.charAt(i + 1), 16));
                j++;
            }

            s1 = c.a(abyte0, true);
        } else
        {
            s1 = s;
        }
        return new ij(this, s1, info.isLimitAdTrackingEnabled());
    }
}
