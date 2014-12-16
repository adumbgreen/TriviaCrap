// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.os.Vibrator;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Callable;

// Referenced classes of package com.millennialmedia.android:
//            MMJSObject, MMJSResponse, MMWebView

class BridgeMMNotification extends MMJSObject
    implements android.content.DialogInterface.OnClickListener
{

    private String a;
    private String d;
    private int e;

    BridgeMMNotification()
    {
        a = "alert";
        d = "vibrate";
    }

    static int a(BridgeMMNotification bridgemmnotification)
    {
        return bridgemmnotification.e;
    }

    MMJSResponse a(String s, Map map)
    {
        MMJSResponse mmjsresponse;
        if (a.equals(s))
        {
            mmjsresponse = alert(map);
        } else
        {
            boolean flag = d.equals(s);
            mmjsresponse = null;
            if (flag)
            {
                return vibrate(map);
            }
        }
        return mmjsresponse;
    }

    public MMJSResponse alert(Map map)
    {
        this;
        JVM INSTR monitorenter ;
        MMJSResponse mmjsresponse = a(new Callable(map) {

            final Map a;
            final BridgeMMNotification b;

            public MMJSResponse call()
            {
                MMWebView mmwebview = (MMWebView)b.c.get();
                if (mmwebview != null)
                {
                    Activity activity = mmwebview.i();
                    Map map1 = a;
                    if (activity != null)
                    {
                        if (!activity.isFinishing())
                        {
                            AlertDialog alertdialog = (new android.app.AlertDialog.Builder(activity)).create();
                            if (map1.containsKey("title"))
                            {
                                alertdialog.setTitle((CharSequence)map1.get("title"));
                            }
                            if (map1.containsKey("message"))
                            {
                                alertdialog.setMessage((CharSequence)map1.get("message"));
                            }
                            if (map1.containsKey("cancelButton"))
                            {
                                alertdialog.setButton(-2, (CharSequence)map1.get("cancelButton"), b);
                            }
                            if (map1.containsKey("buttons"))
                            {
                                String as[] = ((String)map1.get("buttons")).split(",");
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
                        MMJSResponse mmjsresponse1 = new MMJSResponse();
                        mmjsresponse1.c = 1;
                        mmjsresponse1.d = Integer.valueOf(BridgeMMNotification.a(b));
                        return mmjsresponse1;
                    }
                }
                return null;
            }

            public volatile Object call()
            {
                return call();
            }

            
            {
                b = BridgeMMNotification.this;
                a = map;
                super();
            }
        });
        this;
        JVM INSTR monitorexit ;
        return mmjsresponse;
        Exception exception;
        exception;
        throw exception;
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        this;
        JVM INSTR monitorenter ;
        if (i != -2)
        {
            break MISSING_BLOCK_LABEL_13;
        }
        e = 0;
        if (i != -3)
        {
            break MISSING_BLOCK_LABEL_24;
        }
        e = 1;
        if (i != -1)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        e = 2;
        dialoginterface.cancel();
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public MMJSResponse vibrate(Map map)
    {
        Context context = (Context)b.get();
        long l;
        if (map.containsKey("duration"))
        {
            l = (long)(1000D * (double)Float.parseFloat((String)map.get("duration")));
        } else
        {
            l = 0L;
        }
        if (context != null && l > 0L)
        {
            if (context.getPackageManager().checkPermission("android.permission.VIBRATE", context.getPackageName()) == 0)
            {
                ((Vibrator)context.getSystemService("vibrator")).vibrate(l);
                return MMJSResponse.a((new StringBuilder()).append("Vibrating for ").append(l).toString());
            } else
            {
                return MMJSResponse.b("The required permissions to vibrate are not set.");
            }
        } else
        {
            return null;
        }
    }
}
