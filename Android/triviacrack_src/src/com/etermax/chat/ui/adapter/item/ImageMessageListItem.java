// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui.adapter.item;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ViewFlipper;
import android.widget.ViewSwitcher;
import com.etermax.chat.a.f;
import com.etermax.chat.a.g;
import com.etermax.chat.a.l;
import com.etermax.gamescommon.dashboard.b;
import com.etermax.i;
import com.etermax.k;

// Referenced classes of package com.etermax.chat.ui.adapter.item:
//            a

public class ImageMessageListItem extends LinearLayout
{

    ImageView a;
    private ViewSwitcher b;
    private LinearLayout c;
    private LinearLayout d;
    private ViewFlipper e;
    private b f;

    public ImageMessageListItem(Context context)
    {
        super(context);
        a(context);
    }

    public ImageMessageListItem(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    private void a(Context context)
    {
        setOrientation(1);
        LayoutInflater.from(context).inflate(k.list_item_image, this, true);
        f = new b();
        b = (ViewSwitcher)findViewById(i.user_avatar);
        c = (LinearLayout)findViewById(i.message_container);
        d = (LinearLayout)findViewById(i.hour_container);
        a = (ImageView)findViewById(i.image);
        e = (ViewFlipper)findViewById(i.transfer_feedback);
    }

    public void a(f f1)
    {
        byte byte0;
        if (!f1.a().a())
        {
            String s = f1.a().c();
            String s1;
            if (f1.a().b() == null)
            {
                s1 = "";
            } else
            {
                s1 = f1.a().b();
            }
            if (s != null && s.length() > 2)
            {
                f.a(b, f1.a().c(), s1);
            } else
            {
                f.a(b, s1);
            }
            if (f1.g() == g.c || f1.g() == g.d)
            {
                b.setVisibility(0);
            } else
            {
                b.setVisibility(8);
            }
        } else
        {
            b.setVisibility(4);
        }
        if (f1.a().a())
        {
            byte0 = 5;
        } else
        {
            byte0 = 3;
        }
        c.setGravity(byte0);
        d.setGravity(byte0);
        a.setImageDrawable(f1.h());
    }

    public void setDownloadState(a a1)
    {
        e.setVisibility(0);
        class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[com.etermax.chat.ui.adapter.item.a.values().length];
                try
                {
                    a[a.c.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[com.etermax.chat.ui.adapter.item.a.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[a.a.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[a1.ordinal()])
        {
        default:
            e.setVisibility(4);
            return;

        case 1: // '\001'
            e.setDisplayedChild(1);
            return;

        case 2: // '\002'
            e.setDisplayedChild(0);
            break;
        }
    }
}
