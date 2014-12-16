// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

// Referenced classes of package com.millennialmedia.android:
//            MMSDK, MMLog, MMAdImpl, MMException, 
//            HttpGetRequest, RequestListener

class _cls7.b
{

    public static final String INTENT_CALENDAR_EVENT = "calendar";
    public static final String INTENT_EMAIL = "email";
    public static final String INTENT_EXTERNAL_BROWSER = "browser";
    public static final String INTENT_MAPS = "geo";
    public static final String INTENT_MARKET = "market";
    public static final String INTENT_PHONE_CALL = "tel";
    public static final String INTENT_STREAMING_VIDEO = "streamingVideo";
    public static final String INTENT_TXT_MESSAGE = "sms";
    protected static final String a = com/millennialmedia/android/MMSDK$Event.getName();

    static void a(Context context, long l)
    {
        if (MMSDK.d())
        {
            a(context, new Intent("millennialmedia.action.ACTION_OVERLAY_OPENED"), l);
        }
    }

    private static final void a(Context context, Intent intent, long l)
    {
        if (context != null)
        {
            intent.addCategory("millennialmedia.category.CATEGORY_SDK");
            if (l != -4L)
            {
                intent.putExtra("internalId", l);
            }
            intent.putExtra("packageName", context.getPackageName());
            String s = intent.getStringExtra("intentType");
            String s1;
            if (!TextUtils.isEmpty(s))
            {
                s1 = String.format(" Type[%s]", new Object[] {
                    s
                });
            } else
            {
                s1 = "";
            }
            MMLog.a("MMSDK", (new StringBuilder()).append(" @@ Intent: ").append(intent.getAction()).append(" ").append(s1).append(" for ").append(l).toString());
            context.sendBroadcast(intent);
        }
    }

    static void a(Context context, String s, long l)
    {
        if (MMSDK.d() && s != null)
        {
            a(context, (new Intent("millennialmedia.action.ACTION_INTENT_STARTED")).putExtra("intentType", s), l);
        }
    }

    static void a(MMAdImpl mmadimpl)
    {
        if (mmadimpl != null)
        {
            MMSDK.a(new Runnable(mmadimpl) {

                final MMAdImpl a;

                public void run()
                {
                    if (a == null || a.c == null)
                    {
                        break MISSING_BLOCK_LABEL_36;
                    }
                    a.c.onSingleTap(a.d());
                    return;
                    Exception exception;
                    exception;
                    MMLog.a("MMSDK", "Exception raised in your RequestListener: ", exception);
                    return;
                }

            
            {
                a = mmadimpl;
                super();
            }
            });
            if (MMSDK.d())
            {
                a(mmadimpl.j(), new Intent("millennialmedia.action.ACTION_OVERLAY_TAP"), mmadimpl.h);
                a(mmadimpl.j(), new Intent("millennialmedia.action.ACTION_AD_SINGLE_TAP"), mmadimpl.h);
                return;
            }
        }
    }

    static void a(MMAdImpl mmadimpl, MMException mmexception)
    {
        if (mmadimpl == null)
        {
            MMLog.d("MMSDK", "No Context in the listener: ");
        } else
        {
            MMSDK.a(new Runnable(mmadimpl, mmexception) {

                final MMAdImpl a;
                final MMException b;

                public void run()
                {
                    if (a == null || a.c == null)
                    {
                        break MISSING_BLOCK_LABEL_40;
                    }
                    a.c.requestFailed(a.d(), b);
                    return;
                    Exception exception;
                    exception;
                    MMLog.a("MMSDK", "Exception raised in your RequestListener: ", exception);
                    return;
                }

            
            {
                a = mmadimpl;
                b = mmexception;
                super();
            }
            });
            if (MMSDK.d())
            {
                String s = mmadimpl.m();
                a(mmadimpl.j(), (new Intent(s)).putExtra("error", mmexception), mmadimpl.h);
                return;
            }
        }
    }

    protected static void a(String s)
    {
        MMLog.b("Logging event to: %s", s);
        Utils.a(new Runnable(s) {

            final String a;

            public void run()
            {
                HttpGetRequest httpgetrequest = new HttpGetRequest();
                try
                {
                    httpgetrequest.a(a);
                    return;
                }
                catch (Exception exception)
                {
                    MMLog.a(MMSDK.Event.a, "Error logging event: ", exception);
                }
            }

            
            {
                a = s;
                super();
            }
        });
    }

    static void b(MMAdImpl mmadimpl)
    {
        if (mmadimpl == null)
        {
            MMLog.d("MMSDK", "No Context in the listener: ");
        } else
        {
            MMSDK.a(new Runnable(mmadimpl) {

                final MMAdImpl a;

                public void run()
                {
                    if (a == null || a.c == null)
                    {
                        break MISSING_BLOCK_LABEL_36;
                    }
                    a.c.MMAdRequestIsCaching(a.d());
                    return;
                    Exception exception;
                    exception;
                    MMLog.a("MMSDK", "Exception raised in your RequestListener: ", exception);
                    return;
                }

            
            {
                a = mmadimpl;
                super();
            }
            });
            if (MMSDK.d())
            {
                a(mmadimpl.j(), new Intent("millennialmedia.action.ACTION_FETCH_STARTED_CACHING"), mmadimpl.h);
                return;
            }
        }
    }

    static void c(MMAdImpl mmadimpl)
    {
        if (mmadimpl == null)
        {
            MMLog.d("MMSDK", "No Context in the listener: ");
            return;
        }
        if (MMSDK.d())
        {
            a(mmadimpl.j(), new Intent("millennialmedia.action.ACTION_DISPLAY_STARTED"), mmadimpl.h);
        }
        d(mmadimpl);
    }

    static void d(MMAdImpl mmadimpl)
    {
        if (mmadimpl == null)
        {
            MMLog.d("MMSDK", "No Context in the listener: ");
            return;
        } else
        {
            MMSDK.a(new Runnable(mmadimpl) {

                final MMAdImpl a;

                public void run()
                {
                    if (a == null || a.c == null)
                    {
                        break MISSING_BLOCK_LABEL_36;
                    }
                    a.c.MMAdOverlayLaunched(a.d());
                    return;
                    Exception exception;
                    exception;
                    MMLog.a("MMSDK", "Exception raised in your RequestListener: ", exception);
                    return;
                }

            
            {
                a = mmadimpl;
                super();
            }
            });
            a(mmadimpl.j(), mmadimpl.h);
            return;
        }
    }

    static void e(MMAdImpl mmadimpl)
    {
        if (mmadimpl == null)
        {
            MMLog.d("MMSDK", "No Context in the listener: ");
        } else
        {
            MMSDK.a(new Runnable(mmadimpl) {

                final MMAdImpl a;

                public void run()
                {
                    if (a == null || a.c == null)
                    {
                        break MISSING_BLOCK_LABEL_36;
                    }
                    a.c.MMAdOverlayClosed(a.d());
                    return;
                    Exception exception;
                    exception;
                    MMLog.a("MMSDK", "Exception raised in your RequestListener: ", exception);
                    return;
                }

            
            {
                a = mmadimpl;
                super();
            }
            });
            if (MMSDK.d() && mmadimpl.j() != null)
            {
                a(mmadimpl.j(), new Intent("millennialmedia.action.ACTION_OVERLAY_CLOSED"), mmadimpl.h);
                return;
            }
        }
    }

    static void f(MMAdImpl mmadimpl)
    {
        if (mmadimpl == null)
        {
            MMLog.d("MMSDK", "No Context in the listener: ");
        } else
        {
            MMSDK.a(new Runnable(mmadimpl) {

                final MMAdImpl a;

                public void run()
                {
                    if (a == null || a.c == null)
                    {
                        break MISSING_BLOCK_LABEL_36;
                    }
                    a.c.requestCompleted(a.d());
                    return;
                    Exception exception;
                    exception;
                    MMLog.a("MMSDK", "Exception raised in your RequestListener: ", exception);
                    return;
                }

            
            {
                a = mmadimpl;
                super();
            }
            });
            if (MMSDK.d())
            {
                String s = mmadimpl.n();
                a(mmadimpl.j(), new Intent(s), mmadimpl.h);
                return;
            }
        }
    }


    _cls7.b()
    {
    }
}
