// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.g;
import com.etermax.gamescommon.language.Language;
import com.etermax.gamescommon.language.LanguageResourceMapper;
import com.etermax.gamescommon.login.datasource.a;
import com.etermax.i;
import com.etermax.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.etermax.gamescommon.view:
//            a, d, c

public class FlagsLayout extends LinearLayout
{

    a a;
    e b;
    protected d c;
    protected ImageView d;
    protected TextView e;
    protected ViewSwitcher f;
    protected View g;
    private String h;
    private ImageView i;
    private List j;
    private List k;
    private Context l;
    private int m;
    private c n;

    public FlagsLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        m = -1;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, q.FlagsLayout);
        m = typedarray.getColor(0, -1);
        typedarray.recycle();
        a(context);
    }

    static Context a(FlagsLayout flagslayout)
    {
        return flagslayout.l;
    }

    private void a(Context context)
    {
        l = context;
        j = new ArrayList();
        k = new ArrayList();
    }

    static void a(FlagsLayout flagslayout, String s)
    {
        flagslayout.setSelectedLocale(s);
    }

    private void a(com.etermax.gamescommon.view.a a1, boolean flag)
    {
        if (a1.d != 0)
        {
            ImageView imageview = (ImageView)findViewById(a1.d);
            if (a1.c != 0)
            {
                ((TextView)findViewById(a1.c)).setText(a1.e);
            }
            imageview.setImageResource(a1.b);
            imageview.setTag(a1.a);
            imageview.setAlpha(165);
            if (flag)
            {
                imageview.setOnClickListener(new android.view.View.OnClickListener() {

                    final FlagsLayout a;

                    public void onClick(View view)
                    {
                        com.etermax.gamescommon.view.FlagsLayout.a(a, (String)view.getTag());
                        FlagsLayout.c(a);
                        a.b();
                    }

            
            {
                a = FlagsLayout.this;
                super();
            }
                });
            }
        }
    }

    private com.etermax.gamescommon.view.a b(String s)
    {
        for (Iterator iterator = j.iterator(); iterator.hasNext();)
        {
            com.etermax.gamescommon.view.a a1 = (com.etermax.gamescommon.view.a)iterator.next();
            if (a1.a.compareTo(s) == 0)
            {
                return a1;
            }
        }

        return (com.etermax.gamescommon.view.a)j.get(0);
    }

    static List b(FlagsLayout flagslayout)
    {
        return flagslayout.k;
    }

    private void c()
    {
        String s;
        String s1;
        String s2;
        Locale locale = Locale.getDefault();
        s = locale.getLanguage().toUpperCase();
        s1 = locale.getCountry().toUpperCase();
        s2 = Locale.UK.getCountry();
        if (!s.equals(Language.EN.name())) goto _L2; else goto _L1
_L1:
        if (s1.equals(s2))
        {
            s = Language.EN_UK.name();
        }
_L4:
        setSelectedLocale(b.a(g.k, s));
        return;
_L2:
        if (s.equals(Language.PT.name()) && s1.equals("BR"))
        {
            s = Language.PT_BR.name();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void c(FlagsLayout flagslayout)
    {
        flagslayout.d();
    }

    private void d()
    {
        b.b(g.k, h);
    }

    private void setSelectedLocale(String s)
    {
        if (i != null)
        {
            i.setAlpha(165);
        }
        com.etermax.gamescommon.view.a a1;
        if (h != null)
        {
            a1 = b(h);
        } else
        {
            a1 = b(s);
        }
        findViewById(a1.f).setVisibility(4);
        h = s;
        if (Language.get(s, false) == null)
        {
            h = Language.EN.name();
            i = (ImageView)findViewById(i.flag_01);
        } else
        {
            int i1 = a(s);
            if (i1 != -1)
            {
                a(i1);
            } else
            {
                i = (ImageView)findViewById(b(s).d);
            }
        }
        i.setAlpha(255);
    }

    public int a(String s)
    {
        for (int i1 = 0; i1 < k.size(); i1++)
        {
            com.etermax.gamescommon.view.a a1 = (com.etermax.gamescommon.view.a)k.get(i1);
            if (a1.a != null && a1.a.equals(s))
            {
                return i1;
            }
        }

        return -1;
    }

    public void a()
    {
        g.setOnClickListener(new android.view.View.OnClickListener() {

            final FlagsLayout a;

            public void onClick(View view)
            {
                if (a.c != null)
                {
                    a.c.c();
                    a.c = null;
                }
                a.c = new d(com.etermax.gamescommon.view.FlagsLayout.a(a), view, a, FlagsLayout.b(a));
                a.c.b();
            }

            
            {
                a = FlagsLayout.this;
                super();
            }
        });
    }

    public void a(int i1)
    {
        com.etermax.gamescommon.view.a a1 = (com.etermax.gamescommon.view.a)k.get(i1);
        com.etermax.gamescommon.view.a a2 = (com.etermax.gamescommon.view.a)j.get(-1 + j.size());
        a2.d = a1.d;
        a2.c = 0;
        a1.d = i.flag_03;
        a1.c = i.flag_name_03;
        a1.f = i.flag_tick_03;
        j.set(-1 + j.size(), a1);
        k.set(i1, a2);
        d.setImageResource(a1.b);
        d.setTag(a1.a);
        e.setText(a1.e);
        setSelectedLocale((String)d.getTag());
        d();
        if (c != null)
        {
            c.a(k);
            c.c();
        }
        for (Iterator iterator = k.iterator(); iterator.hasNext(); a((com.etermax.gamescommon.view.a)iterator.next(), false)) { }
        b();
    }

    public void b()
    {
        com.etermax.gamescommon.view.a a1 = b(h);
        n.b(a1.g);
        findViewById(a1.f).setVisibility(0);
    }

    public String getSelectedLocale()
    {
        return h;
    }

    public void setAvailableLanguages(List list)
    {
        list.size();
        JVM INSTR tableswitch 0 4: default 40
    //                   0 118
    //                   1 560
    //                   2 505
    //                   3 424
    //                   4 317;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        j.add(new com.etermax.gamescommon.view.a(i.flag_01, i.flag_name_01, i.flag_tick_01));
        j.add(new com.etermax.gamescommon.view.a(i.flag_02, i.flag_name_02, i.flag_tick_02));
        j.add(new com.etermax.gamescommon.view.a(i.flag_03, i.flag_name_03, i.flag_tick_03));
_L15:
        f.setDisplayedChild(1);
        list.size() - j.size();
        JVM INSTR tableswitch 0 3: default 172
    //                   0 724
    //                   1 700
    //                   2 655
    //                   3 589;
           goto _L7 _L8 _L9 _L10 _L11
_L7:
        k.add(new com.etermax.gamescommon.view.a(i.flag_more_01, 0));
        k.add(new com.etermax.gamescommon.view.a(i.flag_more_02, 0));
        k.add(new com.etermax.gamescommon.view.a(i.flag_more_03, 0));
        k.add(new com.etermax.gamescommon.view.a(i.flag_more_04, 0));
_L13:
        int i1 = list.size() - j.size() - k.size();
        for (int j1 = 0; j1 < i1; j1++)
        {
            k.add(new com.etermax.gamescommon.view.a(0, 0));
        }

        break; /* Loop/switch isn't completed */
_L6:
        j.add(new com.etermax.gamescommon.view.a(i.flag_01, i.flag_name_01, i.flag_tick_01));
        j.add(new com.etermax.gamescommon.view.a(i.flag_02, i.flag_name_02, i.flag_tick_02));
        j.add(new com.etermax.gamescommon.view.a(i.flag_03, i.flag_name_03, i.flag_tick_03));
        j.add(new com.etermax.gamescommon.view.a(i.flag_04, i.flag_name_04, i.flag_tick_04));
        continue; /* Loop/switch isn't completed */
_L5:
        j.add(new com.etermax.gamescommon.view.a(i.flag_01, i.flag_name_01, i.flag_tick_01));
        j.add(new com.etermax.gamescommon.view.a(i.flag_02, i.flag_name_02, i.flag_tick_02));
        j.add(new com.etermax.gamescommon.view.a(i.flag_03, i.flag_name_03, i.flag_tick_03));
        continue; /* Loop/switch isn't completed */
_L4:
        j.add(new com.etermax.gamescommon.view.a(i.flag_01, i.flag_name_01, i.flag_tick_01));
        j.add(new com.etermax.gamescommon.view.a(i.flag_02, i.flag_name_02, i.flag_tick_02));
        continue; /* Loop/switch isn't completed */
_L3:
        j.add(new com.etermax.gamescommon.view.a(i.flag_01, i.flag_name_01, i.flag_tick_01));
        continue; /* Loop/switch isn't completed */
_L11:
        k.add(new com.etermax.gamescommon.view.a(i.flag_more_01, 0));
        k.add(new com.etermax.gamescommon.view.a(i.flag_more_02, 0));
        k.add(new com.etermax.gamescommon.view.a(i.flag_more_03, 0));
        continue; /* Loop/switch isn't completed */
_L10:
        k.add(new com.etermax.gamescommon.view.a(i.flag_more_01, 0));
        k.add(new com.etermax.gamescommon.view.a(i.flag_more_02, 0));
        continue; /* Loop/switch isn't completed */
_L9:
        k.add(new com.etermax.gamescommon.view.a(i.flag_more_01, 0));
        continue; /* Loop/switch isn't completed */
_L8:
        f.setDisplayedChild(0);
        if (true) goto _L13; else goto _L12
_L12:
        int k1;
        for (k1 = 0; k1 < j.size(); k1++)
        {
            if (k1 < list.size())
            {
                ((com.etermax.gamescommon.view.a)j.get(k1)).a(l, LanguageResourceMapper.getByCode((Language)list.get(k1)));
                a((com.etermax.gamescommon.view.a)j.get(k1), true);
            }
        }

        int l1 = k1;
        for (int i2 = 0; i2 < k.size(); i2++)
        {
            if (l1 < list.size())
            {
                com.etermax.gamescommon.view.a a1 = (com.etermax.gamescommon.view.a)k.get(i2);
                Context context = l;
                int j2 = l1 + 1;
                a1.a(context, LanguageResourceMapper.getByCode((Language)list.get(l1)));
                a((com.etermax.gamescommon.view.a)k.get(i2), false);
                l1 = j2;
            }
        }

        c();
        b();
        return;
        if (true) goto _L15; else goto _L14
_L14:
    }

    public void setCallback(c c1)
    {
        n = c1;
    }
}
