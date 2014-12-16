// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.user.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import com.etermax.gamescommon.j;
import com.etermax.gamescommon.profile.ui.d;
import com.etermax.gamescommon.user.UserInfoAvatarView;
import com.etermax.gamescommon.view.InviteFacebookButton_;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.etermax.gamescommon.user.a:
//            e, c, d

public class b extends BaseAdapter
    implements Filterable
{

    private c a;
    private Map b;
    private Map c;
    private Context d;
    private com.etermax.gamescommon.dashboard.b e;
    private d f;
    private com.etermax.gamescommon.user.a.d g;

    public b(Context context)
    {
        b = null;
        d = context;
        e = new com.etermax.gamescommon.dashboard.b();
    }

    static d a(b b1)
    {
        return b1.f;
    }

    static Map a(b b1, Map map)
    {
        b1.b = map;
        return map;
    }

    static Map b(b b1)
    {
        return b1.b;
    }

    static Map b(b b1, Map map)
    {
        b1.c = map;
        return map;
    }

    static Map c(b b1)
    {
        return b1.c;
    }

    public void a(d d1)
    {
        f = d1;
    }

    public void a(List list)
    {
        Iterator iterator;
        j j1;
        if (c == null)
        {
            c = new LinkedHashMap();
        } else
        {
            c.clear();
        }
        for (iterator = list.iterator(); iterator.hasNext(); c.put(j1.getId(), new e(j1, 1, true)))
        {
            j1 = (j)iterator.next();
        }

        notifyDataSetChanged();
    }

    public int getCount()
    {
        if (c == null)
        {
            return 0;
        } else
        {
            return c.size();
        }
    }

    public Filter getFilter()
    {
        if (a == null)
        {
            a = new c(this);
        }
        return a;
    }

    public Object getItem(int i)
    {
        if (c == null)
        {
            return null;
        } else
        {
            return (new ArrayList(c.values())).get(i);
        }
    }

    public long getItemId(int i)
    {
        if (c == null)
        {
            return 0L;
        } else
        {
            return ((e)getItem(i)).b().getId().longValue();
        }
    }

    public int getItemViewType(int i)
    {
        if (c == null)
        {
            return 0;
        }
        j j1 = ((e)getItem(i)).b();
        int k;
        if (j1.getId() != null && j1.getId().longValue() >= 0L)
        {
            k = 0;
        } else
        {
            k = 1;
        }
        return k;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        j j1 = ((e)getItem(i)).b();
        Object obj;
        if (view == null)
        {
            if (j1.getId() != null && j1.getId().longValue() >= 0L)
            {
                obj = UserInfoAvatarView.a(d, e, this, j1);
            } else
            {
                obj = InviteFacebookButton_.a(d);
            }
        } else
        {
            if (j1.getId() != null && j1.getId().longValue() >= 0L)
            {
                ((UserInfoAvatarView)view).a(this, j1);
            }
            obj = view;
        }
        if (f != null)
        {
            ((UserInfoAvatarView)obj).setInviteCallback(new com.etermax.gamescommon.user.b() {

                final b a;

                public void a(j j2)
                {
                    b.a(a).a(j2, a);
                }

            
            {
                a = b.this;
                super();
            }
            });
        }
        if (!((e)getItem(i)).a() && g != null)
        {
            g.a(((e)getItem(i)).c());
        }
        return ((View) (obj));
    }

    public int getViewTypeCount()
    {
        return 2;
    }
}
