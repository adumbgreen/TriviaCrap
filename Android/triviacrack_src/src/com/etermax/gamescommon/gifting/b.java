// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.gifting;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.b.a.aa;
import com.b.a.ak;
import com.etermax.g;
import com.etermax.tools.social.a.c;

// Referenced classes of package com.etermax.gamescommon.gifting:
//            a

class b extends BaseAdapter
{

    final a a;
    private Context b;
    private com.etermax.gamescommon.dashboard.b c;

    public b(a a1, Context context)
    {
        a = a1;
        super();
        c = new com.etermax.gamescommon.dashboard.b();
        b = context;
    }

    public int getCount()
    {
        return com.etermax.gamescommon.gifting.a.a(a).length;
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        int j = (int)a.getResources().getDimension(g.empty_inbox_dialog_user_images_side_size);
        ImageView imageview;
        if (view == null)
        {
            imageview = new ImageView(b);
            imageview.setLayoutParams(new android.widget.AbsListView.LayoutParams(j, j));
        } else
        {
            imageview = (ImageView)view;
        }
        if (com.etermax.gamescommon.gifting.a.a(a)[i] != null)
        {
            String s = com.etermax.gamescommon.user.c.a(com.etermax.gamescommon.gifting.a.a(a)[i].b(), imageview.getWidth());
            aa.a(b).a(s).b().a(imageview);
        }
        return imageview;
    }
}
