// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.dashboard;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.HeaderViewListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.etermax.gamescommon.EtermaxGamesApplication;
import com.etermax.gamescommon.dashboard.a.c.c;
import com.etermax.gamescommon.dashboard.a.c.d;
import com.etermax.gamescommon.login.datasource.dto.UserDTO;
import com.etermax.gamescommon.promotion.BasePromotion;
import com.etermax.gamescommon.promotion.PromotionsManager;
import com.etermax.k;
import com.etermax.tools.navigation.BaseFragmentActivity;
import com.etermax.tools.navigation.b;
import com.etermax.tools.widget.a.f;
import com.etermax.tools.widget.a.g;
import com.etermax.tools.widget.a.h;
import com.etermax.tools.widget.a.i;
import com.etermax.tools.widget.pulltorefresh.PullToRefreshListView;
import com.etermax.tools.widget.pulltorefresh.e;
import com.facebook.Session;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public abstract class a extends b
    implements com.etermax.gamescommon.dashboard.a.c.b, c, d
{

    protected com.etermax.gamescommon.e.a a;
    protected PromotionsManager b;

    public a()
    {
    }

    private BaseAdapter a(List list, List list1, List list2, boolean flag, long l1)
    {
        return new com.etermax.gamescommon.dashboard.a.a.a(getApplicationContext(), list, list1, list2, flag, a(l1));
    }

    private void a(com.etermax.gamescommon.dashboard.a.d d1, long l1)
    {
        List list = m().a(d1.getGames());
        Iterator iterator = list.iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            List list1;
            ArrayList arraylist;
            ArrayList arraylist1;
            BaseAdapter baseadapter;
            Iterator iterator1;
            boolean flag1;
            if (((h)iterator.next()).b() == 0)
            {
                flag1 = true;
            } else
            {
                flag1 = flag;
            }
            flag = flag1;
        }
        list1 = d1.getSuggestedOpponents();
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        if (list1 != null && !flag)
        {
            for (iterator1 = list1.iterator(); iterator1.hasNext(); arraylist.add(new i((UserDTO)iterator1.next(), 4))) { }
        }
        arraylist1.add(new com.etermax.gamescommon.dashboard.a.a.c(com.etermax.gamescommon.dashboard.a.c.a(getActivity()), 6));
        baseadapter = a(list, ((List) (arraylist)), ((List) (arraylist1)), b(), l1);
        ((ListView)getView().findViewById(0x102000a)).setAdapter(baseadapter);
    }

    private com.etermax.gamescommon.dashboard.a.a.a i()
    {
        return (com.etermax.gamescommon.dashboard.a.a.a)((HeaderViewListAdapter)((ListView)getView().findViewById(0x102000a)).getAdapter()).getWrappedAdapter();
    }

    private void n()
    {
        if (getActivity() instanceof BaseFragmentActivity)
        {
            BaseFragmentActivity basefragmentactivity = (BaseFragmentActivity)getActivity();
            b.showBuyFragment(basefragmentactivity);
        }
    }

    public View a(Context context)
    {
        return b.getCurrentPromotion().getDashboardView(context);
    }

    protected abstract com.etermax.gamescommon.dashboard.a.a.b a(long l1);

    protected void a()
    {
        i().b();
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
        if (com.etermax.a.b.b(fragmentactivity, (new StringBuilder()).append(s).append(".pro").toString()))
        {
            s = (new StringBuilder()).append(s).append(".pro").toString();
        } else
        if (com.etermax.a.b.b(fragmentactivity, (new StringBuilder()).append(s).append(".lite").toString()))
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
            com.etermax.a.a.b("FreeGamesHelper", activitynotfoundexception.getMessage());
        }
    }

    protected void a(View view)
    {
        ((PullToRefreshListView)view.findViewById(com.etermax.i.dashboard_list_view)).setOnRefreshListener(new e() {

            final a a;

            public void a()
            {
                a.d();
            }

            
            {
                a = a.this;
                super();
            }
        });
    }

    protected void a(com.etermax.gamescommon.dashboard.a.d d1)
    {
        if (d1.getAppConfig() != null)
        {
            a.a(d1.getAppConfig());
        }
        if (d1.getNotificationId() != null)
        {
            a.a(getApplicationContext(), d1.getNotificationId());
        }
        if (d1.getLastChatActivity() != null)
        {
            a.a(d1.getLastChatActivity().getTime());
        }
        a.a(d1.getUnreadConversations());
        a(d1, d1.getTime().getTime());
    }

    protected void a(g g1)
    {
        Toast.makeText(getApplicationContext(), (new StringBuilder()).append("Section: ").append(g1.d()).toString(), 0).show();
    }

    protected void a(i i1)
    {
        Toast.makeText(getApplicationContext(), (new StringBuilder()).append("SuggestedOpponent(ID): ").append(((UserDTO)i1.a()).getId()).toString(), 0).show();
    }

    public void a(Long long1)
    {
        Toast.makeText(getApplicationContext(), (new StringBuilder()).append("Image userid: ").append(long1).toString(), 0).show();
    }

    protected void a(Object obj)
    {
        if (obj instanceof g)
        {
            a((g)obj);
        } else
        {
            if (obj instanceof i)
            {
                a((i)obj);
                return;
            }
            if (obj.equals(Integer.valueOf(5)))
            {
                c();
                return;
            }
        }
    }

    public void a(String s)
    {
        a(getActivity(), s);
    }

    public boolean b()
    {
        Session session = Session.getActiveSession();
        if (session != null)
        {
            return session.isOpened();
        } else
        {
            return false;
        }
    }

    protected void c()
    {
    }

    protected void d()
    {
        l();
    }

    protected void e()
    {
        PullToRefreshListView pulltorefreshlistview = g();
        if (pulltorefreshlistview != null)
        {
            pulltorefreshlistview.e();
            pulltorefreshlistview.setPullToRefreshEnabled(false);
        }
    }

    protected void f()
    {
        PullToRefreshListView pulltorefreshlistview = g();
        if (pulltorefreshlistview != null)
        {
            pulltorefreshlistview.d();
            pulltorefreshlistview.setPullToRefreshEnabled(true);
        }
    }

    protected PullToRefreshListView g()
    {
        View view = getView().findViewById(com.etermax.i.dashboard_list_view);
        if (view instanceof PullToRefreshListView)
        {
            return (PullToRefreshListView)view;
        } else
        {
            return null;
        }
    }

    public void h()
    {
        if (b.isCurrentPromoActive())
        {
            n();
        }
    }

    public void j()
    {
        b.onPromoPopupClose();
        a();
    }

    public boolean k()
    {
        return b.mustShowPromoPopup();
    }

    protected abstract void l();

    protected abstract f m();

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.dashboard_fragment, null);
        a(view);
        return view;
    }
}
