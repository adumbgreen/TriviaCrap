// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.ui;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.etermax.gamescommon.b.ad;
import com.etermax.gamescommon.b.l;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.i;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.f.a;
import com.etermax.tools.navigation.b;
import com.mobileapptracker.h;

// Referenced classes of package com.etermax.gamescommon.login.ui:
//            i, h, LoginActivity, k

public class g extends b
    implements com.etermax.tools.widget.b.b
{

    private static String d = "email_key";
    c a;
    a b;
    com.etermax.gamescommon.login.datasource.a c;

    public g()
    {
    }

    public static Fragment a()
    {
        return new com.etermax.gamescommon.login.ui.i();
    }

    static Object a(g g1)
    {
        return g1.mCallbacks;
    }

    private void a(l l)
    {
        if (b != null)
        {
            b.a(l);
        }
    }

    static void a(g g1, l l)
    {
        g1.a(l);
    }

    private void a(String s)
    {
        (new com.etermax.tools.i.c(getString(o.authenticating), s) {

            final String a;
            final g b;

            public Object a()
            {
                return b();
            }

            protected void a(g g1, UserDTO userdto)
            {
                super.a(g1, userdto);
                ((com.etermax.gamescommon.login.ui.h)com.etermax.gamescommon.login.ui.g.a(g1)).a_();
                com.etermax.gamescommon.login.ui.g.a(b, new ad("login_enter_email", "domain", ad.a(a)));
                com.etermax.gamescommon.login.ui.g.a(b, new ad("login_email_exists", "domain", ad.a(a)));
            }

            protected void a(g g1, Exception exception)
            {
                com.etermax.gamescommon.login.ui.g.a(b, new ad("login_enter_email", "domain", ad.a(a)));
                if (!(exception instanceof com.etermax.gamescommon.login.datasource.b.b)) goto _L2; else goto _L1
_L1:
                int j;
                j = ((com.etermax.gamescommon.login.datasource.b.b)exception).c();
                ((com.etermax.gamescommon.login.ui.h)com.etermax.gamescommon.login.ui.g.b(g1)).c(a);
                j;
                JVM INSTR lookupswitch 7: default 124
            //                           202: 332
            //                           301: 138
            //                           602: 221
            //                           603: 267
            //                           604: 221
            //                           605: 221
            //                           614: 313;
                   goto _L3 _L4 _L5 _L6 _L7 _L6 _L6 _L8
_L3:
                boolean flag = true;
_L10:
                b(flag);
                super.a(g1, exception);
                return;
_L5:
                Bundle bundle = new Bundle();
                bundle.putString(g.d(), a);
                com.etermax.gamescommon.login.ui.g.a(b, new ad("login_email_notexists", "domain", ad.a(a)));
                com.etermax.tools.widget.b.a a1 = ((LoginActivity)g1.getActivity()).a(bundle);
                a1.setTargetFragment(g1, 0);
                a1.show(g1.getFragmentManager(), "create_user_dialog");
                flag = false;
                continue; /* Loop/switch isn't completed */
_L6:
                com.etermax.gamescommon.login.ui.g.a(b, new ad("login_email_exists", "domain", ad.a(a)));
                ((com.etermax.gamescommon.login.ui.h)com.etermax.gamescommon.login.ui.g.c(g1)).a(a);
                flag = false;
                continue; /* Loop/switch isn't completed */
_L7:
                com.etermax.gamescommon.login.ui.g.a(b, new ad("login_email_exists_no_pass", "domain", ad.a(a)));
                ((com.etermax.gamescommon.login.ui.h)g.d(g1)).b(a);
                flag = false;
                continue; /* Loop/switch isn't completed */
_L8:
                com.etermax.gamescommon.login.ui.k.a(j()).b(j());
                flag = false;
                continue; /* Loop/switch isn't completed */
_L4:
                com.etermax.tools.widget.b.c.b(b.getString(o.email_typo_desc), b.getString(o.accept)).show(g1.getFragmentManager(), "");
                flag = false;
                continue; /* Loop/switch isn't completed */
_L2:
                flag = true;
                if (true) goto _L10; else goto _L9
_L9:
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((g)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((g)obj, (UserDTO)obj1);
            }

            public UserDTO b()
            {
                return b.a.b(a);
            }

            
            {
                b = g.this;
                a = s1;
                super(s);
            }
        }).a(this);
    }

    static Object b(g g1)
    {
        return g1.mCallbacks;
    }

    static Object c(g g1)
    {
        return g1.mCallbacks;
    }

    static Object d(g g1)
    {
        return g1.mCallbacks;
    }

    static String d()
    {
        return d;
    }

    static Object e(g g1)
    {
        return g1.mCallbacks;
    }

    public void a(Bundle bundle)
    {
    }

    public com.etermax.gamescommon.login.ui.h b()
    {
        return new com.etermax.gamescommon.login.ui.h() {

            final g a;

            public void a(String s)
            {
            }

            public void a_()
            {
            }

            public void b(String s)
            {
            }

            public void c(String s)
            {
            }

            
            {
                a = g.this;
                super();
            }
        };
    }

    void c()
    {
        EditText edittext = (EditText)getView().findViewById(i.email_edit_text);
        String s = edittext.getText().toString();
        if (getResources().getConfiguration().orientation == 2)
        {
            com.etermax.a.b.b(getActivity());
        }
        if (s.length() <= 0)
        {
            com.etermax.a.b.a(edittext, getString(o.error_email_required), 0xff000000);
            return;
        }
        if (!com.etermax.a.b.a(s))
        {
            com.etermax.a.b.a(edittext, getString(o.error_invalid_email), 0xff000000);
            return;
        } else
        {
            com.etermax.a.b.b(getApplicationContext());
            a(s);
            return;
        }
    }

    public Object getDummyCallbacks()
    {
        return b();
    }

    public void onAccept(Bundle bundle)
    {
        String s = bundle.getString(d);
        (new com.etermax.tools.i.c(getString(o.authenticating), s) {

            final String a;
            final g b;

            public Object a()
            {
                return b();
            }

            protected void a(g g1, UserDTO userdto)
            {
                super.a(g1, userdto);
                ((com.etermax.gamescommon.login.ui.h)g.e(g1)).a_();
                if (g1.c != null)
                {
                    h h1 = h.a();
                    h1.d(g1.c.f());
                    h1.f(g1.c.g());
                    h1.e(String.valueOf(g1.c.e()));
                    h1.c(g1.c.j());
                }
                com.etermax.gamescommon.login.ui.g.a(b, new ad("register_email_ok", "domain", ad.a(a)));
            }

            protected void a(g g1, Exception exception)
            {
                if (((com.etermax.gamescommon.login.datasource.b.b)exception).c() == 614)
                {
                    b(false);
                    super.a(g1, exception);
                    com.etermax.gamescommon.login.ui.k.a(j()).b(j());
                    return;
                } else
                {
                    super.a(g1, exception);
                    return;
                }
            }

            protected volatile void a(Object obj, Exception exception)
            {
                a((g)obj, exception);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((g)obj, (UserDTO)obj1);
            }

            public UserDTO b()
            {
                return b.a.c(a);
            }

            
            {
                b = g.this;
                a = s1;
                super(s);
            }
        }).a(this);
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
        View view = layoutinflater.inflate(k.login_email_fragment, viewgroup, false);
        ((Button)view.findViewById(i.header_send_button)).setOnClickListener(new android.view.View.OnClickListener() {

            final g a;

            public void onClick(View view1)
            {
                a.c();
            }

            
            {
                a = g.this;
                super();
            }
        });
        ((EditText)view.findViewById(i.email_edit_text)).setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final g a;

            public boolean onEditorAction(TextView textview, int j, KeyEvent keyevent)
            {
                switch (j)
                {
                default:
                    return false;

                case 4: // '\004'
                    a.c();
                    break;
                }
                return true;
            }

            
            {
                a = g.this;
                super();
            }
        });
        return view;
    }

}
