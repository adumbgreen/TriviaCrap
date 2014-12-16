// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.ui.adapter.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.etermax.chat.ui.f;
import com.etermax.k;

// Referenced classes of package com.etermax.chat.ui.adapter.a:
//            b

public class e
    implements b
{

    public e()
    {
    }

    public View a(int i, View view, ViewGroup viewgroup, LayoutInflater layoutinflater, f f)
    {
        if (view == null)
        {
            return (ViewGroup)layoutinflater.inflate(k.list_item_null_type, viewgroup, false);
        } else
        {
            return (ViewGroup)view;
        }
    }
}
