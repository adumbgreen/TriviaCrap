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

class a
    implements HttpRequestCallback
{

    final a a;

    public void notifyResult(int i, Object obj)
    {
        Log.internal("[InMobi]-[Network]-4.3.0", (new StringBuilder()).append("Got PING IN WEBVIEW callback. Status: ").append(i).toString());
        if (i == 0)
        {
            try
            {
                IMAICore.firePingInWebViewSuccessful(a.a, a.a);
                return;
            }
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[Network]-4.3.0", "Exception", exception);
            }
            break MISSING_BLOCK_LABEL_77;
        }
        IMAICore.fireErrorEvent(a.a, "IMAI Ping in webview failed", "pingInWebview", a.a);
        return;
    }

    tList(tList tlist)
    {
        a = tlist;
        super();
    }

    // Unreferenced inner class com/inmobi/androidsdk/impl/imai/IMAICore$b
    final class IMAICore.b
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
                ClickData clickdata = new ClickData(a, b, true, i);
                RequestResponseManager requestresponsemanager = new RequestResponseManager();
                requestresponsemanager.init();
                RequestResponseManager.mNetworkQueue.add(0, clickdata);
                requestresponsemanager.processClick(InternalSDKUtil.getContext(), new IMAICore.b.a(this));
                return;
            }
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[Network]-4.3.0", "Exception ping in background", exception);
            }
        }

            IMAICore.b(String s, boolean flag, WeakReference weakreference)
            {
                a = s;
                b = flag;
                c = weakreference;
                super();
            }
    }

}
