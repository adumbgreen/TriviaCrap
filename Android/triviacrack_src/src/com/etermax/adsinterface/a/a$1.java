// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.app.Activity;
import android.content.Context;
import org.json.JSONObject;

// Referenced classes of package com.etermax.adsinterface.a:
//            a, k, c

final class c
    implements Runnable
{

    final Context a;
    final JSONObject b;
    final c c;

    public void run()
    {
        k k1 = new k(a);
        a a1;
        try
        {
            JSONObject jsonobject = k1.a(b.getString("u"), b.getInt("v"));
            a1 = new a(a, jsonobject, null);
            if (a instanceof Activity)
            {
                ((Activity)a).runOnUiThread(new Runnable(a1) {

                    final a a;
                    final a._cls1 b;

                    public void run()
                    {
                        b.c.onAdInfoLoadedOk(a);
                    }

            
            {
                b = a._cls1.this;
                a = a1;
                super();
            }
                });
                return;
            }
        }
        catch (Exception exception)
        {
            if (a instanceof Activity)
            {
                ((Activity)a).runOnUiThread(new Runnable(exception) {

                    final Exception a;
                    final a._cls1 b;

                    public void run()
                    {
                        b.c.onAdInfoLoadedFailed(a);
                    }

            
            {
                b = a._cls1.this;
                a = exception;
                super();
            }
                });
                return;
            } else
            {
                c.onAdInfoLoadedFailed(exception);
                return;
            }
        }
        c.onAdInfoLoadedOk(a1);
        return;
    }

    _cls2.a(Context context, JSONObject jsonobject, c c1)
    {
        a = context;
        b = jsonobject;
        c = c1;
        super();
    }
}
