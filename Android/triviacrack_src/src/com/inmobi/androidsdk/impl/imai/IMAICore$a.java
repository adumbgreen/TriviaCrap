// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.androidsdk.impl.imai;

import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.IMAIConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.impl.imai.db.ClickData;
import com.inmobi.androidsdk.impl.net.HttpRequestCallback;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.lang.ref.WeakReference;

// Referenced classes of package com.inmobi.androidsdk.impl.imai:
//            IMAICore, IMAIClickEventList

final class c
    implements Runnable
{

    final String a;
    final boolean b;
    final WeakReference c;

    public void run()
    {
        try
        {
            int i = Initializer.getConfigParams().getImai().getMaxRetry();
            ClickData clickdata = new ClickData(a, b, false, i);
            RequestResponseManager requestresponsemanager = new RequestResponseManager();
            requestresponsemanager.init();
            RequestResponseManager.mNetworkQueue.add(0, clickdata);
            class a
                implements HttpRequestCallback
            {

                final IMAICore.a a;

                public void notifyResult(int j, Object obj)
                {
                    Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Got PING callback. Status: ").append(j).toString());
                    if (j == 0)
                    {
                        try
                        {
                            IMAICore.firePingSuccessful(a.c, a.a);
                            return;
                        }
                        catch (Exception exception1)
                        {
                            Log.internal("[InMobi]-[Network]-4.3.0", "Exception", exception1);
                        }
                        break MISSING_BLOCK_LABEL_77;
                    }
                    IMAICore.fireErrorEvent(a.c, "IMAI Ping in http client failed", "ping", a.a);
                    return;
                }

            a()
            {
                a = IMAICore.a.this;
                super();
            }
            }

            requestresponsemanager.processClick(InternalSDKUtil.getContext(), new a());
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[Network]-4.3.0", "Exception ping in background", exception);
        }
    }

    a.a(String s, boolean flag, WeakReference weakreference)
    {
        a = s;
        b = flag;
        c = weakreference;
        super();
    }
}
