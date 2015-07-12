// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.etermax.a.b;
import com.etermax.gamescommon.b.ad;
import com.etermax.gamescommon.b.l;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            j, r, m, k

public class q extends j
{

    c f;
    private String g;
    private boolean h;

    public q()
    {
    }

    public static Fragment a(String s)
    {
        r r1 = new r();
        Bundle bundle = new Bundle();
        bundle.putString("mEmail", s);
        r1.setArguments(bundle);
        return r1;
    }

    static void a(q q1)
    {
        q1.c();
    }

    private void a(String s, String s1, boolean flag)
    {
        (new com.etermax.tools.i.c(getString(o.authenticating), s, s1) {

            final String a;
            final String b;
            final q c;

            public Object a()
            {
                return b();
            }

            protected void a(q q1, UserDTO userdto)
            {
                super.a(q1, userdto);
                ((m)com.etermax.gamescommon.login.ui.q.b(q1)).a_();
                ad ad1 = new ad();
                ad1.b("user_pass");
                c.a(ad1);
                c.a(new ad("login_enter_password", "result", "password_OK"));
                c.a(new ad("login_email_ok", "domain", ad.a(a)));
            }

            protected void a(q q1, Exception exception)
            {
                if (!(exception instanceof com.etermax.gamescommon.login.datasource.b.b))
                {
                    c.a(new ad("login_enter_password", "result", "other resason"));
                    super.a(q1, exception);
                    return;
                }
                int l = ((com.etermax.gamescommon.login.datasource.b.b)exception).c();
                if (l == 604)
                {
                    c.a(new ad("login_enter_password", "result", "wrong_password"));
                } else
                {
                    c.a(new ad("login_enter_password", "result", "other resason"));
                }
                if (l == 614)
                {
                    b(false);
                    super.a(q1, exception);
                    k.a(j()).b(j());
                    return;
                } else
                {
                    super.a(q1, exception);
                    return;
                }
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((q)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((q)obj, (UserDTO)obj1);
            }

            public UserDTO b()
            {
                return c.f.a(a, b);
            }

            
            {
                c = q.this;
                a = s1;
                b = s2;
                super(s);
            }
        }).a(this);
    }

    static Object b(q q1)
    {
        return q1.mCallbacks;
    }

    private void b(String s)
    {
        (new com.etermax.tools.i.c(getString(o.connecting), s) {

            final String a;
            final q b;

            public Object a()
            {
                return b();
            }

            protected void a(q q1, Exception exception)
            {
                if (exception.getClass() == com/etermax/gamescommon/login/datasource/b/b && ((com.etermax.gamescommon.login.datasource.b.b)exception).c() == 610)
                {
                    b.a(new ad("login_forgot_password", "result", "pass_already_sent"));
                    com.etermax.tools.widget.b.c.b(q1.getString(o.password_reseted_recently), q1.getString(o.ok)).show(q1.getFragmentManager(), "reset_ok_dialog");
                    b(q1.getFragmentManager());
                    return;
                } else
                {
                    super.a(q1, exception);
                    return;
                }
            }

            protected void a(q q1, Void void1)
            {
                super.a(q1, void1);
                com.etermax.tools.widget.b.c.b(q1.getString(o.recover_password_success), q1.getString(o.ok)).show(q1.getFragmentManager(), "reset_ok_dialog");
                b.a(new ad("login_forgot_password", "result", "password_sent"));
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((q)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((q)obj, (Void)obj1);
            }

            public Void b()
            {
                return b.f.f(a);
            }

            
            {
                b = q.this;
                a = s1;
                super(s);
            }
        }).a(this);
    }

    private void c()
    {
        a(new ad("login_facebook_click"));
        com.etermax.a.b.b(getActivity());
        j();
    }

    void a()
    {
        EditText edittext = (EditText)getView().findViewById(i.password_edit_text);
        String s = edittext.getText().toString();
        if (s.length() <= 0)
        {
            com.etermax.a.b.a(edittext, getString(o.error_password_required), 0xff000000);
            return;
        } else
        {
            com.etermax.a.b.b(getApplicationContext());
            a(g, s, h);
            return;
        }
    }

    void b()
    {
        b(g);
    }

    protected l h()
    {
        return new l() {

            final q a;

            public String a()
            {
                return "register_fb_from_password";
            }

            
            {
                a = q.this;
                super();
            }
        };
    }

    protected l i()
    {
        return new l() {

            final q a;

            public String a()
            {
                return "login_fb_from_password";
            }

            
            {
                a = q.this;
                super();
            }
        };
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (bundle == null)
        {
            showEditTextKeyboard(i.password_edit_text);
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        g = getArguments().getString("mEmail");
        h = getArguments().getBoolean("newPassword", false);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.login_password_fragment, viewgroup, false);
        Button button = (Button)view.findViewById(i.header_send_button);
        button.setVisibility(0);
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final q a;

            public void onClick(View view1)
            {
                a.a();
            }

            
            {
                a = q.this;
                super();
            }
        });
        TextView textview = (TextView)view.findViewById(i.password_forgot_button);
        textview.setPaintFlags(8 | textview.getPaintFlags());
        textview.setOnClickListener(new android.view.View.OnClickListener() {

            final q a;

            public void onClick(View view1)
            {
                a.b();
            }

            
            {
                a = q.this;
                super();
            }
        });
        ((EditText)view.findViewById(i.password_edit_text)).setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final q a;

            public boolean onEditorAction(TextView textview1, int l, KeyEvent keyevent)
            {
                switch (l)
                {
                default:
                    return false;

                case 4: // '\004'
                    a.a();
                    break;
                }
                return true;
            }

            
            {
                a = q.this;
                super();
            }
        });
        view.findViewById(i.fb_login_button).setOnClickListener(new android.view.View.OnClickListener() {

            final q a;

            public void onClick(View view1)
            {
                q.a(a);
            }

            
            {
                a = q.this;
                super();
            }
        });
        if (h)
        {
            textview.setVisibility(8);
            view.findViewById(i.fb_login_button).setVisibility(8);
            view.findViewById(i.password_offer_facebook).setVisibility(8);
        }
        return view;
    }
}
