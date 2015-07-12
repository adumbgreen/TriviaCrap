// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.h;

import android.app.DatePickerDialog;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import java.util.Calendar;

public class b extends DialogFragment
{

    private int a;
    private int b;
    private int c;
    private android.app.DatePickerDialog.OnDateSetListener d;

    public b(android.app.DatePickerDialog.OnDateSetListener ondatesetlistener)
    {
        try
        {
            d = ondatesetlistener;
            return;
        }
        catch (ClassCastException classcastexception)
        {
            throw new ClassCastException("mListener parameter must implement fragment's callbacks.");
        }
    }

    public b(android.app.DatePickerDialog.OnDateSetListener ondatesetlistener, int i, int j, int k)
    {
        a = i;
        b = j;
        c = k;
        try
        {
            d = ondatesetlistener;
            return;
        }
        catch (ClassCastException classcastexception)
        {
            throw new ClassCastException("mListener parameter must implement fragment's callbacks.");
        }
    }

    public Dialog onCreateDialog(Bundle bundle)
    {
        if (a == 0)
        {
            Calendar calendar = Calendar.getInstance();
            a = calendar.get(1);
            b = calendar.get(2);
            c = calendar.get(5);
        }
        return new DatePickerDialog(getActivity(), d, a, b, c);
    }
}
