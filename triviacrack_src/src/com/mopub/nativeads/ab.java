// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mopub.common.logging.MoPubLog;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.mopub.nativeads:
//            ViewBinder, NativeResponse

class ab
{

    TextView a;
    TextView b;
    TextView c;
    ImageView d;
    ImageView e;

    private ab()
    {
    }

    static ab a(View view, ViewBinder viewbinder)
    {
        ab ab1 = new ab();
        try
        {
            ab1.a = (TextView)view.findViewById(viewbinder.b);
            ab1.b = (TextView)view.findViewById(viewbinder.c);
            ab1.c = (TextView)view.findViewById(viewbinder.d);
            ab1.d = (ImageView)view.findViewById(viewbinder.e);
            ab1.e = (ImageView)view.findViewById(viewbinder.f);
        }
        catch (ClassCastException classcastexception)
        {
            MoPubLog.d("Could not cast View from id in ViewBinder to expected View type", classcastexception);
            return null;
        }
        return ab1;
    }

    private void a(TextView textview, String s)
    {
        if (textview == null)
        {
            MoPubLog.d((new StringBuilder()).append("Attempted to add text (").append(s).append(") to null TextView.").toString());
            return;
        }
        textview.setText(null);
        if (s == null)
        {
            MoPubLog.d("Attempted to set TextView contents to null.");
            return;
        } else
        {
            textview.setText(s);
            return;
        }
    }

    void a(View view, NativeResponse nativeresponse, ViewBinder viewbinder)
    {
        Iterator iterator = viewbinder.g.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            View view1 = view.findViewById(((Integer)viewbinder.g.get(s)).intValue());
            Object obj = nativeresponse.getExtra(s);
            if (view1 instanceof ImageView)
            {
                ((ImageView)view1).setImageDrawable(null);
                nativeresponse.loadExtrasImage(s, (ImageView)view1);
            } else
            if (view1 instanceof TextView)
            {
                ((TextView)view1).setText(null);
                if (obj instanceof String)
                {
                    a((TextView)view1, (String)obj);
                }
            } else
            {
                MoPubLog.d((new StringBuilder()).append("View bound to ").append(s).append(" should be an instance of TextView or ImageView.").toString());
            }
        } while (true);
    }

    void a(NativeResponse nativeresponse)
    {
        a(a, nativeresponse.getTitle());
        a(b, nativeresponse.getText());
        a(c, nativeresponse.getCallToAction());
        nativeresponse.loadMainImage(d);
        nativeresponse.loadIconImage(e);
    }
}
