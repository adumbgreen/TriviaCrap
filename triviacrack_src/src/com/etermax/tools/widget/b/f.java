// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.etermax.i;
import com.etermax.k;

// Referenced classes of package com.etermax.tools.widget.b:
//            e

public class f extends e
{

    public f()
    {
    }

    public static f a(String s)
    {
        f f1 = new f();
        Bundle bundle = new Bundle();
        bundle.putString("msg", s);
        f1.setArguments(bundle);
        return f1;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        View view = layoutinflater.inflate(k.etermaxtools_loading_dialog, null);
        ((TextView)view.findViewById(i.loading_text_view)).setText(getArguments().getString("msg"));
        return view;
    }
}
