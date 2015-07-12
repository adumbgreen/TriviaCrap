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
import android.widget.EditText;
import android.widget.TextView;
import com.etermax.gamescommon.b.ac;
import com.etermax.gamescommon.b.ad;
import com.etermax.gamescommon.b.ah;
import com.etermax.gamescommon.b.l;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.f.a;
import com.etermax.tools.navigation.b;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            p, o

public class n extends b
{

    c a;
    com.etermax.tools.b.a b;
    com.etermax.tools.social.a.b c;
    a d;
    com.etermax.gamescommon.login.datasource.a e;

    public n()
    {
    }

    public static Fragment a()
    {
        return new p();
    }

    static Object a(n n1)
    {
        return n1.mCallbacks;
    }

    private void a(l l)
    {
        if (d != null)
        {
            d.a(l);
        }
    }

    static void a(n n1, l l)
    {
        n1.a(l);
    }

    static void a(n n1, String s, String s1, String s2)
    {
        n1.a(s, s1, s2);
    }

    private void a(String s, String s1)
    {
        (new com.etermax.gamescommon.j.a(getString(o.authenticating), c, s, s1) {

            final String a;
            final String b;
            final n c;

            protected void a(n n1, UserDTO userdto)
            {
                super.a(n1, userdto);
                ((com.etermax.gamescommon.login.ui.o)com.etermax.gamescommon.login.ui.n.a(n1)).a_();
                ad ad1 = new ad();
                ad1.b("facebook");
                com.etermax.gamescommon.login.ui.n.a(c, ad1);
                com.etermax.gamescommon.login.ui.n.a(c, new ah("linked_existing_fb_ok"));
                n n2 = c;
                String s2;
                if (c.e.r())
                {
                    s2 = "guest";
                } else
                {
                    s2 = "email";
                }
                com.etermax.gamescommon.login.ui.n.a(n2, "fb_account_already_linked", "login", s2);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((n)obj, (UserDTO)obj1);
            }

            protected UserDTO b()
            {
                String s2 = d.i();
                return c.a.a("Facebook", s2, d.f(), a, b);
            }

            protected Object d()
            {
                return b();
            }

            
            {
                c = n.this;
                a = s1;
                b = s2;
                super(s, b1);
            }
        }).a(this);
    }

    private void a(String s, String s1, String s2)
    {
        if (d != null)
        {
            ac ac1 = new ac();
            ac1.a(s);
            ac1.b(s1);
            ac1.c(s2);
        }
    }

    public com.etermax.gamescommon.login.ui.o b()
    {
        return new com.etermax.gamescommon.login.ui.o() {

            final n a;

            public void a_()
            {
            }

            
            {
                a = n.this;
                super();
            }
        };
    }

    void c()
    {
        boolean flag = true;
        EditText edittext = (EditText)getView().findViewById(i.email_edit_text);
        String s = edittext.getText().toString();
        EditText edittext1 = (EditText)getView().findViewById(i.password_edit_text);
        String s1 = edittext1.getText().toString();
        boolean flag1;
        if (s.length() <= 0)
        {
            com.etermax.a.b.a(edittext, getString(o.error_email_required), 0xff000000);
            flag1 = flag;
        } else
        if (!com.etermax.a.b.a(s))
        {
            com.etermax.a.b.a(edittext, getString(o.error_invalid_email), 0xff000000);
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (s1.length() <= 0)
        {
            com.etermax.a.b.a(edittext1, getString(o.error_password_required), 0xff000000);
        } else
        {
            flag = flag1;
        }
        if (!flag)
        {
            com.etermax.a.b.b(getActivity());
            a(s, s1);
        }
    }

    public Object getDummyCallbacks()
    {
        return b();
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        if (bundle == null)
        {
            showEditTextKeyboard(i.email_edit_text);
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.login_link_fragment, viewgroup, false);
        ((Button)view.findViewById(i.header_send_button)).setOnClickListener(new android.view.View.OnClickListener() {

            final n a;

            public void onClick(View view1)
            {
                a.c();
            }

            
            {
                a = n.this;
                super();
            }
        });
        TextView textview = (TextView)view.findViewById(i.enter_original_text_view);
        String s = getString(o.enter_original);
        Object aobj[] = new Object[1];
        aobj[0] = getString(o.app_name);
        textview.setText(String.format(s, aobj));
        return view;
    }
}
