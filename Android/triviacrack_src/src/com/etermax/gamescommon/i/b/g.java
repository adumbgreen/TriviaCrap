// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ToggleButton;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.b.ai;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.login.datasource.c;
import com.etermax.i;
import com.etermax.k;
import com.etermax.tools.f.a;
import com.etermax.tools.navigation.b;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            h, k, j, i, 
//            l, m

public abstract class g extends b
{

    protected com.etermax.gamescommon.login.datasource.a a;
    protected com.etermax.tools.social.a.b b;
    protected com.etermax.gamescommon.datasource.e c;
    protected c d;
    protected com.etermax.tools.j.a e;
    protected e f;
    protected com.etermax.gamescommon.i.a.a g;
    protected a h;
    private ToggleButton i;
    private ToggleButton j;
    private ToggleButton k;
    private ToggleButton l;
    private ToggleButton m;
    private ToggleButton n;
    private ToggleButton o;
    private ToggleButton p;
    private ToggleButton q;
    private ViewSwitcher r;

    public g()
    {
    }

    static Object a(g g1)
    {
        return g1.mCallbacks;
    }

    private void a(ToggleButton togglebutton)
    {
        togglebutton.setOnClickListener(new android.view.View.OnClickListener(togglebutton) {

            final ToggleButton a;
            final g b;

            public void onClick(View view)
            {
                (new m(b, a)).a(b);
            }

            
            {
                b = g.this;
                a = togglebutton;
                super();
            }
        });
    }

    static Object b(g g1)
    {
        return g1.mCallbacks;
    }

    static Object c(g g1)
    {
        return g1.mCallbacks;
    }

    private void c()
    {
        if (h != null)
        {
            h.a(new ai());
        }
    }

    static Object d(g g1)
    {
        return g1.mCallbacks;
    }

    static Object e(g g1)
    {
        return g1.mCallbacks;
    }

    static void f(g g1)
    {
        g1.c();
    }

    static Object g(g g1)
    {
        return g1.mCallbacks;
    }

    static Object h(g g1)
    {
        return g1.mCallbacks;
    }

    static Object i(g g1)
    {
        return g1.mCallbacks;
    }

    static Object j(g g1)
    {
        return g1.mCallbacks;
    }

    static ToggleButton k(g g1)
    {
        return g1.o;
    }

    static ToggleButton l(g g1)
    {
        return g1.p;
    }

    static ToggleButton m(g g1)
    {
        return g1.m;
    }

    static ToggleButton n(g g1)
    {
        return g1.n;
    }

    static ToggleButton o(g g1)
    {
        return g1.q;
    }

    protected void a()
    {
        com.etermax.gamescommon.i.b.k.a(getActivity(), (h)mCallbacks, false).a(getFragmentManager());
    }

    public h b()
    {
        return new h() {

            final g a;

            public void a(int i1)
            {
            }

            public void b()
            {
            }

            public void c()
            {
            }

            public boolean d()
            {
                return false;
            }

            public void l_()
            {
            }

            public void onHelpSectionClicked(View view)
            {
            }

            public void onViewCreated(View view)
            {
            }

            
            {
                a = g.this;
                super();
            }
        };
    }

    public Object getDummyCallbacks()
    {
        return b();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.settings_fragment, viewgroup, false);
        ((h)mCallbacks).onViewCreated(view);
        view.findViewById(i.btn_account).setOnClickListener(new android.view.View.OnClickListener() {

            final g a;

            public void onClick(View view2)
            {
                ((h)com.etermax.gamescommon.i.b.g.a(a)).a(1);
                ((h)com.etermax.gamescommon.i.b.g.b(a)).l_();
            }

            
            {
                a = g.this;
                super();
            }
        });
        i = (ToggleButton)view.findViewById(i.toggle_notifications);
        i.setEnabled(true);
        j = (ToggleButton)view.findViewById(i.toggle_notifications_sound);
        j.setEnabled(true);
        k = (ToggleButton)view.findViewById(i.toggle_notifications_vibrate);
        k.setEnabled(true);
        l = (ToggleButton)view.findViewById(i.toggle_ask_confirmation);
        m = (ToggleButton)view.findViewById(i.toggle_friends_only_games);
        n = (ToggleButton)view.findViewById(i.toggle_mail_news);
        o = (ToggleButton)view.findViewById(i.toggle_display_name);
        p = (ToggleButton)view.findViewById(i.toggle_display_picture);
        q = (ToggleButton)view.findViewById(i.toggle_allow_og_posts);
        a(m);
        a(n);
        Iterator iterator;
        if (a.j() != null)
        {
            a(o);
            a(p);
            a(q);
        } else
        {
            view.findViewById(i.facebook_title).setVisibility(8);
            view.findViewById(i.facebook_layout).setVisibility(8);
        }
        r = (ViewSwitcher)view.findViewById(i.userIcon);
        (new com.etermax.gamescommon.dashboard.b()).a(r, new com.etermax.gamescommon.k() {

            final g a;

            public String getFacebookId()
            {
                return a.a.j();
            }

            public Long getId()
            {
                return Long.valueOf(a.a.e());
            }

            public String getName()
            {
                return a.a.g();
            }

            public String getPhotoUrl()
            {
                return null;
            }

            public boolean isFbShowPicture()
            {
                return true;
            }

            
            {
                a = g.this;
                super();
            }
        });
        iterator = getArguments().getIntegerArrayList("help_ids").iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Integer integer = (Integer)iterator.next();
            if (integer != null)
            {
                view.findViewById(integer.intValue()).setOnClickListener(new android.view.View.OnClickListener() {

                    final g a;

                    public void onClick(View view2)
                    {
                        ((h)com.etermax.gamescommon.i.b.g.c(a)).onHelpSectionClicked(view2);
                    }

            
            {
                a = g.this;
                super();
            }
                });
            }
        } while (true);
        if (getArguments().getBoolean("show_purchase", true) && !e.c())
        {
            view.findViewById(i.txt_purchase).setVisibility(0);
            View view1 = view.findViewById(i.btn_purchase);
            view1.setVisibility(0);
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final g a;

                public void onClick(View view2)
                {
                    ((h)g.d(a)).a(1);
                    try
                    {
                        if (!((h)com.etermax.gamescommon.i.b.g.e(a)).d())
                        {
                            Uri uri = Uri.parse(((com.etermax.tools.b)a.getActivity().getApplication()).q());
                            a.startActivity(new Intent("android.intent.action.VIEW", uri));
                        }
                        return;
                    }
                    catch (Exception exception)
                    {
                        exception.printStackTrace();
                    }
                }

            
            {
                a = g.this;
                super();
            }
            });
        }
        view.findViewById(i.btn_logout).setOnClickListener(new android.view.View.OnClickListener() {

            final g a;

            public void onClick(View view2)
            {
                g.f(a);
                ((h)g.g(a)).a(1);
                ((h)g.h(a)).b();
                if (a.a.r())
                {
                    com.etermax.gamescommon.i.b.i.a(a.getActivity(), (h)com.etermax.gamescommon.i.b.g.i(a), a.b, a.d, a.a, a.h).a(a.getFragmentManager());
                    return;
                }
                if (a.a.h() || !TextUtils.isEmpty(a.a.j()))
                {
                    a.a();
                    return;
                } else
                {
                    com.etermax.gamescommon.i.b.l.a(a.getActivity(), (h)g.j(a), a.g).a(a.getFragmentManager());
                    return;
                }
            }

            
            {
                a = g.this;
                super();
            }
        });
        ((TextView)view.findViewById(i.txt_version)).setText((new StringBuilder()).append("v").append(com.etermax.a.b.d(getActivity())).toString());
        return view;
    }

    public void onPause()
    {
        super.onPause();
        f.b(com.etermax.gamescommon.g.e, i.isChecked());
        f.b(com.etermax.gamescommon.g.f, j.isChecked());
        f.b(com.etermax.gamescommon.g.g, k.isChecked());
        f.b(com.etermax.gamescommon.g.h, l.isChecked());
        f.b(com.etermax.gamescommon.g.o, n.isChecked());
        f.b(com.etermax.gamescommon.g.l, m.isChecked());
        f.b(com.etermax.gamescommon.g.m, o.isChecked());
        f.b(com.etermax.gamescommon.g.n, p.isChecked());
        f.b(com.etermax.gamescommon.g.s, q.isChecked());
    }

    public void onResume()
    {
        i.setChecked(f.a(com.etermax.gamescommon.g.e, true));
        j.setChecked(f.a(com.etermax.gamescommon.g.f, true));
        k.setChecked(f.a(com.etermax.gamescommon.g.g, true));
        l.setChecked(f.a(com.etermax.gamescommon.g.h, true));
        m.setChecked(f.a(com.etermax.gamescommon.g.l, true));
        n.setChecked(f.a(com.etermax.gamescommon.g.o, true));
        if (a.j() != null)
        {
            o.setChecked(f.a(com.etermax.gamescommon.g.m, true));
            p.setChecked(f.a(com.etermax.gamescommon.g.n, true));
            q.setChecked(f.a(com.etermax.gamescommon.g.s, true));
        }
        (new j(this)).a(this);
        (new com.etermax.gamescommon.dashboard.b()).a(r, new com.etermax.gamescommon.k() {

            final g a;

            public String getFacebookId()
            {
                return a.a.j();
            }

            public Long getId()
            {
                return Long.valueOf(a.a.e());
            }

            public String getName()
            {
                return a.a.g();
            }

            public String getPhotoUrl()
            {
                return a.a.i();
            }

            public boolean isFbShowPicture()
            {
                return a.a.m();
            }

            
            {
                a = g.this;
                super();
            }
        });
        super.onResume();
    }
}
