// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.Activity;
import android.app.AlertDialog;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Callable;

// Referenced classes of package com.millennialmedia.android:
//            BridgeMMNotification, MMWebView, MMJSResponse

class a
    implements Callable
{

    final Map a;
    final BridgeMMNotification b;

    public MMJSResponse call()
    {
        MMWebView mmwebview = (MMWebView)b.c.get();
        if (mmwebview != null)
        {
            Activity activity = mmwebview.i();
            Map map = a;
            if (activity != null)
            {
                if (!activity.isFinishing())
                {
                    AlertDialog alertdialog = (new android.app.it>(activity)).ate();
                    if (map.containsKey("title"))
                    {
                        alertdialog.setTitle((CharSequence)map.get("title"));
                    }
                    if (map.containsKey("message"))
                    {
                        alertdialog.setMessage((CharSequence)map.get("message"));
                    }
                    if (map.containsKey("cancelButton"))
                    {
                        alertdialog.setButton(-2, (CharSequence)map.get("cancelButton"), b);
                    }
                    if (map.containsKey("buttons"))
                    {
                        String as[] = ((String)map.get("buttons")).split(",");
                        if (as.length > 0)
                        {
                            alertdialog.setButton(-3, as[0], b);
                        }
                        if (as.length > 1)
                        {
                            alertdialog.setButton(-1, as[1], b);
                        }
                    }
                    alertdialog.show();
                }
                MMJSResponse mmjsresponse = new MMJSResponse();
                mmjsresponse.c = 1;
                mmjsresponse.d = Integer.valueOf(BridgeMMNotification.a(b));
                return mmjsresponse;
            }
        }
        return null;
    }

    public volatile Object call()
    {
        return call();
    }

    (BridgeMMNotification bridgemmnotification, Map map)
    {
        b = bridgemmnotification;
        a = map;
        super();
    }
}
