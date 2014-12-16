// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.etermax.gamescommon.b.ad;
import com.etermax.gamescommon.b.l;
import com.etermax.gamescommon.login.datasource.b.b;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.f.a;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            t

public class s extends Fragment
{

    c a;
    a b;
    private String c;

    public s()
    {
    }

    public static Fragment a(String s1)
    {
        t t1 = new t();
        Bundle bundle = new Bundle();
        bundle.putString("mEmail", s1);
        t1.setArguments(bundle);
        return t1;
    }

    private void a(l l)
    {
        if (b != null)
        {
            b.a(l);
        }
    }

    static void a(s s1, l l)
    {
        s1.a(l);
    }

    private void b(String s1)
    {
        (new com.etermax.tools.i.c(getString(o.connecting), s1) {

            final String a;
            final s b;

            public Object a()
            {
                return b();
            }

            protected void a(s s2, Exception exception)
            {
                if (exception.getClass() == com/etermax/gamescommon/login/datasource/b/b && ((b)exception).c() == 610)
                {
                    com.etermax.gamescommon.login.ui.s.a(b, new ad("login_reset_password", "result", "pass_already_sent"));
                }
            }

            protected void a(s s2, Void void1)
            {
                super.a(s2, void1);
                com.etermax.tools.widget.b.c.b(s2.getString(o.recover_password_success), s2.getString(o.ok)).show(s2.getFragmentManager(), "reset_ok_dialog");
                com.etermax.gamescommon.login.ui.s.a(b, new ad("login_reset_password", "result", "password_sent"));
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((s)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((s)obj, (Void)obj1);
            }

            public Void b()
            {
                return b.a.f(a);
            }

            
            {
                b = s.this;
                a = s3;
                super(s2);
            }
        }).a(this);
    }

    void a()
    {
        b(c);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        c = getArguments().getString("mEmail");
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.login_reset_fragment, viewgroup, false);
        ((Button)view.findViewById(i.reset_password_button)).setOnClickListener(new android.view.View.OnClickListener() {

            final s a;

            public void onClick(View view1)
            {
                a.a();
            }

            
            {
                a = s.this;
                super();
            }
        });
        return view;
    }
}
