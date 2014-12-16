// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;
import com.b.a.aa;
import com.etermax.gamescommon.EtermaxGamesApplication;
import com.etermax.gamescommon.datasource.e;
import com.etermax.gamescommon.datasource.g;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.o;
import com.etermax.tools.a.a.j;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            f, e

public class d extends b
{

    private static boolean g = false;
    c a;
    a b;
    j c;
    e d;
    com.etermax.gamescommon.datasource.j e;
    protected ToggleButton f;
    private final String h = "proxy.etermax.com:9000/api/test";

    public d()
    {
    }

    static Context a(d d1)
    {
        return d1.getApplicationContext();
    }

    private void a(String s, String s1)
    {
        (new com.etermax.tools.i.c(getString(o.connecting), s, s1) {

            final String a;
            final String b;
            final d c;

            public Object a()
            {
                return b();
            }

            protected void a(d d1, UserDTO userdto)
            {
                super.a(d1, userdto);
                com.etermax.gamescommon.login.ui.d.b(d1).edit().putString("god_mode", b).commit();
                ((com.etermax.gamescommon.login.ui.e)com.etermax.gamescommon.login.ui.d.c(d1)).a_();
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((d)obj, (UserDTO)obj1);
            }

            public UserDTO b()
            {
                return c.a.d(a, b);
            }

            
            {
                c = d.this;
                a = s1;
                b = s2;
                super(s);
            }
        }).a(this);
    }

    static SharedPreferences b(d d1)
    {
        return d1.l();
    }

    public static Fragment b()
    {
        return new f();
    }

    static Object c(d d1)
    {
        return d1.mCallbacks;
    }

    private EditText k()
    {
        return (EditText)getView().findViewById(i.api_url_edit_text);
    }

    private SharedPreferences l()
    {
        return getActivity().getSharedPreferences("god_mode", 0);
    }

    protected void a()
    {
        k().setText(c.c());
        if (b.q())
        {
            getView().findViewById(i.logout_button).setVisibility(0);
        }
        String s = l().getString("god_mode", "");
        ((TextView)getView().findViewById(i.password_edit_text)).setText(s);
        f.setChecked(g);
    }

    void a(View view)
    {
        ((Button)view).setText("Renewing...");
        d.a(true, new g(view) {

            final View a;
            final d b;

            public void a(String s)
            {
                ((Button)a).setText("Renew");
                if (s != null)
                {
                    Toast.makeText(b.getActivity(), s, 0).show();
                }
            }

            
            {
                b = d.this;
                a = view;
                super();
            }
        });
    }

    void a(CompoundButton compoundbutton, boolean flag)
    {
        g = flag;
        aa.a(compoundbutton.getContext()).a(flag);
    }

    void b(View view)
    {
        (new com.etermax.tools.i.a("cambiando password...") {

            final d a;

            public Object a()
            {
                return b();
            }

            protected void a(d d1, Void void1)
            {
                super.a(d1, void1);
                Toast.makeText(d1.getActivity(), "Nuevo password: 123456", 0).show();
                d1.a.a(d1.getActivity());
                com.etermax.a.b.b(com.etermax.gamescommon.login.ui.d.a(d1));
                ((EtermaxGamesApplication)d1.getActivity().getApplication()).b(d1.getActivity());
                d1.getFragmentManager().popBackStack();
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((d)obj, (Void)obj1);
            }

            public Void b()
            {
                a.a.e("123456");
                return null;
            }

            
            {
                a = d.this;
                super(s);
            }
        }).a(this);
    }

    public com.etermax.gamescommon.login.ui.e c()
    {
        return new com.etermax.gamescommon.login.ui.e() {

            final d a;

            public void a_()
            {
            }

            
            {
                a = d.this;
                super();
            }
        };
    }

    void c(View view)
    {
        Toast.makeText(view.getContext(), "Not Working", 0).show();
    }

    void d()
    {
        k().setText(c.a(3));
    }

    void e()
    {
        k().setText(c.a(2));
    }

    void f()
    {
        k().setText(c.a(1));
    }

    void g()
    {
        k().setText(c.a(0));
    }

    public Object getDummyCallbacks()
    {
        return c();
    }

    void h()
    {
        k().setText("proxy.etermax.com:9000/api/test");
    }

    void i()
    {
        String s = k().getText().toString();
        c.a(s);
        com.etermax.a.b.b(getApplicationContext());
        getFragmentManager().popBackStack();
    }

    void j()
    {
        String s = ((TextView)getView().findViewById(i.mail_edit_text)).getText().toString();
        String s1 = ((TextView)getView().findViewById(i.password_edit_text)).getText().toString();
        if (TextUtils.isEmpty(s) || !com.etermax.a.b.a(s) || TextUtils.isEmpty(s1))
        {
            com.etermax.a.b.a(getApplicationContext(), "Invalid email or password");
            return;
        } else
        {
            a(s, s1);
            return;
        }
    }

}
