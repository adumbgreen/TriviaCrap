// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.social.a;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.Session;
import com.facebook.widget.WebDialog;

// Referenced classes of package com.etermax.tools.social.a:
//            g, b

class a
    implements com.facebook.widget.log.OnCompleteListener
{

    final tMessage a;

    public void onComplete(Bundle bundle, FacebookException facebookexception)
    {
        if (facebookexception == null)
        {
            if (bundle.containsKey("request"))
            {
                a.a.a();
                return;
            } else
            {
                a.a.b();
                return;
            }
        }
        if (facebookexception instanceof FacebookOperationCanceledException)
        {
            a.a.b();
            return;
        } else
        {
            a.a.a(facebookexception.getMessage());
            return;
        }
    }

    tivity(tivity tivity)
    {
        a = tivity;
        super();
    }

    // Unreferenced inner class com/etermax/tools/social/a/b$4

/* anonymous class */
    class b._cls4
        implements g
    {

        final g a;
        final String b;
        final String c;
        final FragmentActivity d;
        final b e;

        public void a()
        {
            Bundle bundle = new Bundle();
            bundle.putString("to", b);
            bundle.putString("message", c);
            com.facebook.widget.WebDialog.RequestsDialogBuilder requestsdialogbuilder = new com.facebook.widget.WebDialog.RequestsDialogBuilder(d, Session.getActiveSession(), bundle);
            requestsdialogbuilder.setOnCompleteListener(new b._cls4._cls1(this));
            requestsdialogbuilder.build().show();
        }

        public void a(String s)
        {
            a.a(s);
        }

        public void b()
        {
            a.b();
        }

            
            {
                e = b1;
                a = g1;
                b = s;
                c = s1;
                d = fragmentactivity;
                super();
            }
    }

}
