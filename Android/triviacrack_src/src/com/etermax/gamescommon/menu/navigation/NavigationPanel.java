// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.menu.navigation;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.etermax.f;
import com.etermax.gamescommon.EtermaxGamesApplication;
import com.etermax.gamescommon.b.n;
import com.etermax.gamescommon.social.k;
import com.etermax.tools.a;
import com.etermax.tools.b;
import com.etermax.tools.j.e;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.menu.navigation:
//            e, f, c, NavigationPanel_, 
//            a, b, d

public class NavigationPanel extends ListView
{

    protected com.etermax.tools.f.a a;
    private com.etermax.gamescommon.menu.navigation.b b;
    private android.widget.AdapterView.OnItemClickListener c = new android.widget.AdapterView.OnItemClickListener() {

        final NavigationPanel a;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            c c1;
            c1 = (c)a.getAdapter().getItem(i);
            a.a(c1);
            if (com.etermax.gamescommon.menu.navigation.NavigationPanel.a(a) == null || !com.etermax.gamescommon.menu.navigation.NavigationPanel.a(a).a(c1)) goto _L2; else goto _L1
_L1:
            return;
_L2:
            FragmentActivity fragmentactivity = (FragmentActivity)a.getContext();
            switch (com.etermax.gamescommon.menu.navigation._cls2.a[c1.c().ordinal()])
            {
            default:
                return;

            case 1: // '\001'
                fragmentactivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(((b)fragmentactivity.getApplication()).q())));
                return;

            case 3: // '\003'
                com.etermax.gamescommon.social.e e1 = (com.etermax.gamescommon.social.e)fragmentactivity.getSupportFragmentManager().findFragmentByTag("facebook_dialog");
                if (e1 == null)
                {
                    e1 = com.etermax.gamescommon.social.e.a("dashboard");
                }
                if (!e1.isAdded())
                {
                    e1.show(fragmentactivity.getSupportFragmentManager(), "facebook_dialog");
                    return;
                }
                break;

            case 4: // '\004'
                k k1 = (k)fragmentactivity.getSupportFragmentManager().findFragmentByTag("twitter_dialog");
                if (k1 == null)
                {
                    k1 = k.a();
                }
                if (!k1.isAdded())
                {
                    k1.show(fragmentactivity.getSupportFragmentManager(), "twitter_dialog");
                    return;
                }
                break;

            case 2: // '\002'
                a.a(fragmentactivity, c1.f());
                return;
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

            
            {
                a = NavigationPanel.this;
                super();
            }
    };

    public NavigationPanel(Context context)
    {
        super(context);
    }

    public NavigationPanel(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public NavigationPanel(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public static NavigationPanel a(FragmentActivity fragmentactivity, com.etermax.gamescommon.menu.navigation.e ae[], d d, com.etermax.gamescommon.menu.navigation.b b1)
    {
        b b2;
        a a1;
        boolean flag;
        ArrayList arraylist;
        int i;
        int j;
        b2 = (b)fragmentactivity.getApplication();
        a1 = (a)fragmentactivity.getApplication();
        flag = ((com.etermax.tools.j.b)fragmentactivity.getApplication()).y();
        arraylist = new ArrayList();
        i = ae.length;
        j = 0;
_L2:
        com.etermax.gamescommon.menu.navigation.e e1;
        boolean flag1;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_236;
        }
        e1 = ae[j];
        flag1 = true;
        class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[f.values().length];
                try
                {
                    a[f.h.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[f.l.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[com.etermax.gamescommon.menu.navigation.f.e.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[com.etermax.gamescommon.menu.navigation.f.f.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        switch (com.etermax.gamescommon.menu.navigation._cls2.a[e1.b().ordinal()])
        {
        default:
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break;
        }
        break MISSING_BLOCK_LABEL_158;
_L3:
        if (flag1)
        {
            arraylist.add(new c(fragmentactivity, e1, d));
        }
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        if (flag || !e.a(b2, a1, e.a(fragmentactivity.getPackageName())))
        {
            flag1 = false;
        }
          goto _L3
        if (TextUtils.isEmpty(e1.a()))
        {
            throw new RuntimeException((new StringBuilder()).append("NavigationPanel: Falta configurar el game package prefix para el item: ").append(e1.c()).toString());
        }
        if (e.a(fragmentactivity, e1.a()) || !e.a(b2, a1, e.b(e1.a())))
        {
            flag1 = false;
        }
          goto _L3
        a(((List) (arraylist)));
        NavigationPanel navigationpanel = com.etermax.gamescommon.menu.navigation.NavigationPanel_.a(fragmentactivity);
        navigationpanel.a(((List) (arraylist)), b1);
        return navigationpanel;
    }

    static com.etermax.gamescommon.menu.navigation.b a(NavigationPanel navigationpanel)
    {
        return navigationpanel.b;
    }

    private static void a(List list)
    {
        int i = -1 + list.size();
        boolean flag = true;
        while (i >= 0) 
        {
            boolean flag1;
            if (flag && ((c)list.get(i)).c() == com.etermax.gamescommon.menu.navigation.f.k)
            {
                list.remove(i);
                flag1 = flag;
            } else
            if (((c)list.get(i)).c() == com.etermax.gamescommon.menu.navigation.f.k)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            i--;
            flag = flag1;
        }
    }

    public void a()
    {
        if (getAdapter() != null)
        {
            ((com.etermax.gamescommon.menu.navigation.a)getAdapter()).notifyDataSetChanged();
        }
    }

    public void a(FragmentActivity fragmentactivity, String s)
    {
        boolean flag = true;
        if (TextUtils.isEmpty(s))
        {
            return;
        }
        if (s.endsWith(".pro") || s.endsWith(".lite") || s.endsWith("."))
        {
            s = s.substring(0, s.lastIndexOf('.'));
        }
        if (com.etermax.a.b.b(getContext(), (new StringBuilder()).append(s).append(".pro").toString()))
        {
            s = (new StringBuilder()).append(s).append(".pro").toString();
        } else
        if (com.etermax.a.b.b(getContext(), (new StringBuilder()).append(s).append(".lite").toString()))
        {
            s = (new StringBuilder()).append(s).append(".lite").toString();
        } else
        {
            flag = false;
        }
        if (flag)
        {
            fragmentactivity.startActivity(fragmentactivity.getPackageManager().getLaunchIntentForPackage(s));
            return;
        }
        try
        {
            String s1 = ((EtermaxGamesApplication)fragmentactivity.getApplication()).b();
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse((new StringBuilder()).append(s1).append(s).append(".lite").toString()));
            fragmentactivity.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            com.etermax.a.a.b("SlidingMenu", activitynotfoundexception.getMessage());
        }
    }

    public void a(c c1)
    {
        n n1 = new n(n.a);
        String s = c1.g().g();
        if (s != null)
        {
            n1.a(s);
        }
        a.a(n1);
    }

    public void a(List list, com.etermax.gamescommon.menu.navigation.b b1)
    {
        b = b1;
        setAdapter(new com.etermax.gamescommon.menu.navigation.a(this, list));
        setHeaderDividersEnabled(false);
        setFastScrollEnabled(true);
        setCacheColorHint(0);
        setDividerHeight(0);
        setVerticalFadingEdgeEnabled(false);
        setBackgroundResource(f.navigation_panel_background);
        setOnItemClickListener(c);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0 && getParent() != null)
        {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onTouchEvent(motionevent);
    }
}
