// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.app.Activity;
import android.content.Context;
import org.json.JSONObject;

// Referenced classes of package com.etermax.adsinterface.a:
//            c, a, k

class a
    implements Runnable
{

    final Exception a;
    final a b;

    public void run()
    {
        b.b.onAdInfoLoadedFailed(a);
    }

    a(a a1, Exception exception)
    {
        b = a1;
        a = exception;
        super();
    }

    // Unreferenced inner class com/etermax/adsinterface/a/a$1

/* anonymous class */
    final class a._cls1
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
                    ((Activity)a).runOnUiThread(new a._cls1._cls1(a1));
                    return;
                }
            }
            catch (Exception exception)
            {
                if (a instanceof Activity)
                {
                    ((Activity)a).runOnUiThread(new a._cls1._cls2(this, exception));
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

            
            {
                a = context;
                b = jsonobject;
                c = c1;
                super();
            }

        // Unreferenced inner class com/etermax/adsinterface/a/a$1$1

/* anonymous class */
        class a._cls1._cls1
            implements Runnable
        {

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
        }

    }

}
