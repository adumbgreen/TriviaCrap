// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui.adapter.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.chat.a.f;
import com.etermax.chat.ui.adapter.item.ImageMessageListItem;
import com.etermax.chat.ui.adapter.item.a;

// Referenced classes of package com.etermax.chat.ui.adapter.a:
//            b

public class d
    implements b
{

    private Context a;

    public d(Context context)
    {
        a = context;
    }

    public View a(int i, View view, ViewGroup viewgroup, LayoutInflater layoutinflater, com.etermax.chat.ui.f f1)
    {
        ImageMessageListItem imagemessagelistitem;
        if (view == null)
        {
            imagemessagelistitem = new ImageMessageListItem(a);
        } else
        {
            imagemessagelistitem = (ImageMessageListItem)view;
        }
        if (f1 instanceof f)
        {
            imagemessagelistitem.a((f)f1);
            imagemessagelistitem.setDownloadState(a.b);
        }
        return imagemessagelistitem;
    }
}
