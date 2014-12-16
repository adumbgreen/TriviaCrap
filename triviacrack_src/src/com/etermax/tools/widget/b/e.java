// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.widget.b;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.KeyEvent;
import android.view.View;
import com.etermax.p;
import com.etermax.tools.bugcatcher.a;

public abstract class e extends DialogFragment
    implements android.content.DialogInterface.OnKeyListener
{

    private boolean a;
    private boolean b;

    public e()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setStyle(1, getTheme());
    }

    public Dialog onCreateDialog(Bundle bundle)
    {
        return new Dialog(getActivity(), p.Theme_EtermaxToolsBaseDialog);
    }

    public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
    {
        if (keyevent.getAction() != 1) goto _L2; else goto _L1
_L1:
        if (i != 25) goto _L4; else goto _L3
_L3:
        a = false;
_L6:
        return false;
_L4:
        if (i == 24)
        {
            b = false;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L2:
        if (keyevent.getAction() == 0)
        {
            if (i != 25)
            {
                continue; /* Loop/switch isn't completed */
            }
            a = true;
            if (b)
            {
                com.etermax.tools.bugcatcher.a.a(getActivity(), this);
                return true;
            }
        }
        continue; /* Loop/switch isn't completed */
        if (i != 24) goto _L6; else goto _L5
_L5:
        b = true;
        if (a)
        {
            com.etermax.tools.bugcatcher.a.a(getActivity(), this);
            return true;
        }
        if (true) goto _L6; else goto _L7
_L7:
    }

    public void onViewCreated(View view, Bundle bundle)
    {
        super.onViewCreated(view, bundle);
        if (com.etermax.tools.g.a.a())
        {
            getDialog().setOnKeyListener(this);
        }
    }
}
