// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import com.mdotm.android.c.a;
import com.mdotm.android.d.b;
import com.mdotm.android.e.d;

// Referenced classes of package com.mdotm.android.view:
//            MdotMActivity

class b extends Thread
{

    final MdotMActivity a;
    private final String b;

    static MdotMActivity a(b b1)
    {
        return b1.a;
    }

    public void run()
    {
        a.c();
        d.b(this, (new StringBuilder("Launch type is ")).append(com.mdotm.android.view.MdotMActivity.d(a).k()).toString());
        if (com.mdotm.android.view.MdotMActivity.d(a).k() == 2)
        {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(b));
            intent.addFlags(0x10000000);
            try
            {
                a.startActivity(intent);
            }
            catch (Exception exception)
            {
                d.b(this, (new StringBuilder("Could not open browser on ad click to ")).append(exception).toString());
            }
            a.b = false;
            if (com.mdotm.android.view.MdotMActivity.b(a) != null)
            {
                com.mdotm.android.view.MdotMActivity.b(a).b();
            }
            return;
        } else
        {
            a.a.post(new Runnable(b) {

                final MdotMActivity._cls4 a;
                private final String b;

                public void run()
                {
                    com.mdotm.android.view.MdotMActivity.a(com.mdotm.android.view.MdotMActivity._cls4.a(a)).loadUrl(b);
                }

            
            {
                a = MdotMActivity._cls4.this;
                b = s;
                super();
            }
            });
            return;
        }
    }

    _cls1.b(MdotMActivity mdotmactivity, String s)
    {
        a = mdotmactivity;
        b = s;
        super();
    }
}
