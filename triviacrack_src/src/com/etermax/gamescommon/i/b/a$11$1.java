// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.i.b;

import android.app.DatePickerDialog;
import android.view.View;
import android.widget.DatePicker;
import android.widget.TextView;
import com.etermax.p;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

// Referenced classes of package com.etermax.gamescommon.i.b:
//            a

class a
    implements android.app.kerDialog.OnDateSetListener
{

    final a a;

    public void onDateSet(DatePicker datepicker, int i, int j, int k)
    {
        Calendar calendar = Calendar.getInstance();
        calendar.set(i, j, k);
        a.a.g = calendar.getTime();
        com.etermax.gamescommon.i.b.a.m(a.a).setVisibility(0);
        String s = SimpleDateFormat.getDateInstance(1).format(a.a.g);
        com.etermax.gamescommon.i.b.a.m(a.a).setText(s);
        com.etermax.gamescommon.i.b.a.j(a.a).setVisibility(0);
        com.etermax.gamescommon.i.b.a.a(a.a, true);
    }

    SetListener(SetListener setlistener)
    {
        a = setlistener;
        super();
    }

    // Unreferenced inner class com/etermax/gamescommon/i/b/a$11

/* anonymous class */
    class a._cls11
        implements android.view.View.OnClickListener
    {

        final a a;

        public void onClick(View view)
        {
            a._cls11._cls1 _lcls1 = new a._cls11._cls1(this);
            DatePickerDialog datepickerdialog;
            try
            {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(a.g);
                datepickerdialog = new DatePickerDialog(a.getActivity(), p.DatePickerTheme, _lcls1, calendar.get(1), calendar.get(2), calendar.get(5));
            }
            catch (NullPointerException nullpointerexception)
            {
                datepickerdialog = new DatePickerDialog(a.getActivity(), p.DatePickerTheme, _lcls1, 2000, 0, 1);
            }
            datepickerdialog.show();
        }

            
            {
                a = a1;
                super();
            }
    }

}
