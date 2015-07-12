// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.e;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.f;
import com.google.android.gms.common.g;
import java.io.IOException;

public class a
{

    public static com.google.android.gms.ads.identifier.AdvertisingIdClient.Info a(Context context)
    {
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info;
        try
        {
            Log.d("this", "GPS is ");
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            Log.d("this", "GPS not found ");
            classnotfoundexception.printStackTrace();
            return null;
        }
        try
        {
            info = AdvertisingIdClient.getAdvertisingIdInfo(context.getApplicationContext());
        }
        catch (f f1)
        {
            f1.printStackTrace();
            return null;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return null;
        }
        catch (IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
            return null;
        }
        catch (g g1)
        {
            g1.printStackTrace();
            return null;
        }
        return info;
    }
}
