// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.a.d;
import com.google.android.gms.a.e;
import com.google.android.gms.a.f;

// Referenced classes of package com.google.android.gms.internal:
//            hv, hw

public final class ic extends e
{

    private static final ic a = new ic();

    private ic()
    {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View a(Context context, int i, int j)
    {
        return a.b(context, i, j);
    }

    private View b(Context context, int i, int j)
    {
        View view;
        try
        {
            com.google.android.gms.a.a a1 = d.a(context);
            view = (View)d.a(((hv)a(context)).a(a1, i, j));
        }
        catch (Exception exception)
        {
            throw new f((new StringBuilder()).append("Could not get button with size ").append(i).append(" and color ").append(j).toString(), exception);
        }
        return view;
    }

    public Object a(IBinder ibinder)
    {
        return b(ibinder);
    }

    public hv b(IBinder ibinder)
    {
        return hw.a(ibinder);
    }

}
