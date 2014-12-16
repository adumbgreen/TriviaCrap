// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.navigation;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.Fragment;
import android.view.View;

// Referenced classes of package com.etermax.tools.navigation:
//            c

public abstract class b extends Fragment
{

    protected static c VOID_CALLBACKS = new c() {

    };
    protected Object mCallbacks;

    public b()
    {
    }

    protected Context getApplicationContext()
    {
        android.support.v4.app.FragmentActivity fragmentactivity = getActivity();
        Context context = null;
        if (fragmentactivity != null)
        {
            context = fragmentactivity.getApplicationContext();
        }
        return context;
    }

    public abstract Object getDummyCallbacks();

    public void onAttach(Activity activity)
    {
        super.onAttach(activity);
        try
        {
            mCallbacks = activity;
            return;
        }
        catch (ClassCastException classcastexception)
        {
            throw new ClassCastException("Activity must implement fragment's callbacks.");
        }
    }

    public void onDetach()
    {
        super.onDetach();
        mCallbacks = getDummyCallbacks();
    }

    protected void showEditTextKeyboard(int i)
    {
        View view = getView();
        if (view != null)
        {
            view.findViewById(i).requestFocus();
            com.etermax.a.b.a(view.getContext());
        }
    }

}
