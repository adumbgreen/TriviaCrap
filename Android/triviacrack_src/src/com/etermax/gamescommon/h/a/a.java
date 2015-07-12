// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.h.a;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.etermax.gamescommon.b.v;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.social.c;
import com.etermax.gamescommon.user.a.g;
import com.etermax.i;
import com.etermax.j;
import com.etermax.k;
import com.etermax.o;
import com.etermax.tools.navigation.b;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.h.a:
//            d, c, e, b, 
//            g

public abstract class a extends b
{

    private static int k = 3;
    protected com.etermax.gamescommon.social.a a;
    protected com.etermax.tools.social.a.b b;
    protected com.etermax.tools.f.a c;
    protected com.etermax.gamescommon.login.datasource.a d;
    d e;
    com.etermax.gamescommon.h.a.c f;
    protected Language g;
    private BaseAdapter h;
    private BaseAdapter i;
    private BaseAdapter j;
    private android.widget.TextView.OnEditorActionListener l;
    private android.widget.RadioGroup.OnCheckedChangeListener m;
    private List n;

    public a()
    {
        e = new d(this);
        f = new com.etermax.gamescommon.h.a.c(this);
        l = new android.widget.TextView.OnEditorActionListener() {

            final a a;

            public boolean onEditorAction(TextView textview, int i1, KeyEvent keyevent)
            {
                if (i1 == 3 || i1 == 6 || i1 == 2 || i1 == 5 || i1 == 4 || keyevent.getAction() == 23 || keyevent.getAction() == 66 || keyevent.getAction() == 84 || keyevent.getAction() == 0)
                {
                    com.etermax.a.b.b(a.getActivity());
                    String s = textview.getText().toString().trim();
                    if (a.a(a) == i.tab_all_button)
                    {
                        if (!TextUtils.isEmpty(s))
                        {
                            a.a(s);
                        } else
                        {
                            a.a(a, a.a(a));
                        }
                    } else
                    if (a.a(a) == i.tab_favorite_button)
                    {
                        ((g)com.etermax.gamescommon.h.a.a.b(a)).getFilter().filter(s);
                    } else
                    {
                        ((g)com.etermax.gamescommon.h.a.a.c(a)).getFilter().filter(s);
                    }
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                a = a.this;
                super();
            }
        };
        m = new android.widget.RadioGroup.OnCheckedChangeListener() {

            final a a;

            public void onCheckedChanged(RadioGroup radiogroup, int i1)
            {
                a.a(a, i1);
                ((EditText)a.getView().findViewById(i.search_edit_text)).setText("");
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    static int a(a a1)
    {
        return a1.i();
    }

    static List a(a a1, List list)
    {
        a1.n = list;
        return list;
    }

    private void a(int i1)
    {
        ListView listview = (ListView)getView().findViewById(0x102000a);
        if (i1 == i.tab_all_button && h != null)
        {
            listview.setAdapter(h);
        } else
        {
            if (i1 == i.tab_favorite_button && i != null)
            {
                ((g)i).a();
                listview.setAdapter(i);
                return;
            }
            if (i1 == i.tab_facebook_button)
            {
                h();
                return;
            }
        }
    }

    static void a(a a1, int i1)
    {
        a1.a(i1);
    }

    static void a(a a1, e e1, com.etermax.gamescommon.j j1)
    {
        a1.a(e1, j1);
    }

    private void a(e e1, com.etermax.gamescommon.j j1)
    {
        class _cls6
        {

            static final int a[];

            static 
            {
                a = new int[com.etermax.gamescommon.h.a.e.values().length];
                try
                {
                    a[e.f.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.etermax.gamescommon.h.a.e.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[e.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls6.a[e1.ordinal()];
        JVM INSTR tableswitch 1 3: default 36
    //                   1 55
    //                   2 68
    //                   3 81;
           goto _L1 _L2 _L3 _L4
_L1:
        ((com.etermax.gamescommon.h.a.b)mCallbacks).a(e1, g, j1);
        return;
_L2:
        a(g, "facebook_friends");
        continue; /* Loop/switch isn't completed */
_L3:
        a(g, "recent_opponents");
        continue; /* Loop/switch isn't completed */
_L4:
        a(g, "user_search");
        if (true) goto _L1; else goto _L5
_L5:
    }

    private void a(Language language, String s)
    {
        v v1 = new v();
        v1.a(language);
        v1.a(s);
        c.a(v1);
    }

    static BaseAdapter b(a a1)
    {
        return a1.i;
    }

    static BaseAdapter c(a a1)
    {
        return a1.j;
    }

    static void d(a a1)
    {
        a1.j();
    }

    static List e(a a1)
    {
        return a1.n;
    }

    static Object f(a a1)
    {
        return a1.mCallbacks;
    }

    private int i()
    {
        return ((RadioGroup)getView().findViewById(i.tabs_container)).getCheckedRadioButtonId();
    }

    private void j()
    {
        (new com.etermax.tools.i.a(getResources().getString(o.loading)) {

            final a a;

            public Object a()
            {
                return b();
            }

            protected void a(a a1, com.etermax.tools.social.a.c ac[])
            {
                a.a(a, new ArrayList());
                int i1 = ac.length;
                for (int j1 = 0; j1 < i1; j1++)
                {
                    com.etermax.tools.social.a.c c1 = ac[j1];
                    UserDTO userdto = new UserDTO();
                    userdto.setId(Long.valueOf(Long.parseLong(c1.b())));
                    userdto.setFacebook_id(c1.b());
                    userdto.setFacebook_name(c1.a());
                    userdto.setUsername(c1.a());
                    userdto.setIs_app_user(c1.c());
                    userdto.setFb_show_picture(true);
                    userdto.setFb_show_name(true);
                    a.e(a).add(userdto);
                }

                a.c(a.e(a));
                super.a(a1, ac);
            }

            protected volatile void a(Object obj, Object obj1)
            {
                a((a)obj, (com.etermax.tools.social.a.c[])obj1);
            }

            public com.etermax.tools.social.a.c[] b()
            {
                return a.b.k();
            }

            
            {
                a = a.this;
                super(s);
            }
        }).a(this);
    }

    public com.etermax.gamescommon.h.a.b a()
    {
        return new com.etermax.gamescommon.h.a.b() {

            final a a;

            public void a(BaseAdapter baseadapter, com.etermax.gamescommon.j j1)
            {
            }

            public void a(e e1, Language language, com.etermax.gamescommon.j j1)
            {
            }

            
            {
                a = a.this;
                super();
            }
        };
    }

    protected abstract com.etermax.gamescommon.user.a.a a(com.etermax.gamescommon.h.a.c c1);

    protected abstract com.etermax.gamescommon.user.a.a a(d d1);

    protected void a(Object obj)
    {
        List list = c().a(obj);
        List list1 = d().a(obj);
        h = new g(getApplicationContext(), k, list, a(e));
        i = new g(getApplicationContext(), k, list1, a(e));
        a(i());
    }

    protected void a(Object obj, boolean flag)
    {
        List list = e().a(obj);
        g g1 = new g(getApplicationContext(), k, list, a(e), flag);
        if (i() == i.tab_all_button)
        {
            ((ListView)getView().findViewById(0x102000a)).setAdapter(g1);
        }
    }

    protected abstract void a(String s);

    protected void b()
    {
        ((RadioGroup)getView().findViewById(i.tabs_container)).setOnCheckedChangeListener(m);
        ((EditText)getView().findViewById(i.search_edit_text)).setOnEditorActionListener(l);
        g();
    }

    protected void b(Object obj)
    {
        a(obj, false);
    }

    protected abstract com.etermax.gamescommon.h.a.g c();

    protected void c(Object obj)
    {
        List list = f().a(obj);
        j = new g(getApplicationContext(), k, list, a(f));
        if (i() == i.tab_facebook_button)
        {
            ((ListView)getView().findViewById(0x102000a)).setAdapter(j);
        }
    }

    protected abstract com.etermax.gamescommon.h.a.g d();

    protected abstract com.etermax.gamescommon.h.a.g e();

    protected abstract com.etermax.gamescommon.h.a.g f();

    protected abstract void g();

    public Object getDummyCallbacks()
    {
        return a();
    }

    protected void h()
    {
        a.a(getActivity(), new c() {

            final a a;

            public void a()
            {
                a.d(a);
            }

            public void b()
            {
                if (a.getView() != null)
                {
                    a.getView().findViewById(i.tab_all_button).performClick();
                }
            }

            public void c()
            {
                if (a.getView() != null)
                {
                    a.getView().findViewById(i.tab_all_button).performClick();
                }
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    public void onActivityCreated(Bundle bundle)
    {
        k = getResources().getInteger(j.user_grid_column_size);
        super.onActivityCreated(bundle);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return layoutinflater.inflate(k.new_game_friends_layout, null);
    }

}
