// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.achievements.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.etermax.gamescommon.datasource.dto.AchievementDTO;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.achievements.ui:
//            c, b

public class a extends BaseAdapter
{

    protected Context a;
    private List b;

    public a(Context context, List list)
    {
        a = context;
        b = list;
    }

    public AchievementDTO a(int i)
    {
        return (AchievementDTO)b.get(i);
    }

    public int getCount()
    {
        return b.size();
    }

    public Object getItem(int i)
    {
        return a(i);
    }

    public long getItemId(int i)
    {
        return (long)((AchievementDTO)b.get(i)).getId();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        b b1;
        if (view == null)
        {
            b1 = c.a(a);
        } else
        {
            b1 = (b)view;
        }
        b1.a(a(i));
        return b1;
    }
}
