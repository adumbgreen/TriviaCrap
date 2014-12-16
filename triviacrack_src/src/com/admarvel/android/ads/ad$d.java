// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelXMLElement, ad

class f extends RelativeLayout
{

    public String a;
    public String b;
    public String c;
    public f d;
    public List e;
    final ad f;

    public ner(ad ad1, Context context, AdMarvelXMLElement admarvelxmlelement, android.widget.rLayout.LayoutParams layoutparams)
    {
        f = ad1;
        super(context);
        a = null;
        b = null;
        c = null;
        d = a;
        AdMarvelXMLElement admarvelxmlelement1;
        AdMarvelXMLElement admarvelxmlelement2;
        if (admarvelxmlelement.c().get("action") != null)
        {
            admarvelxmlelement1 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement.c().get("action")).get(0);
        } else
        {
            admarvelxmlelement1 = null;
        }
        if (admarvelxmlelement1 != null)
        {
            String s = (String)admarvelxmlelement1.getAttributes().get("type");
            c = s;
            if ("open_url".equalsIgnoreCase(s))
            {
                a = admarvelxmlelement1.b();
                String s1 = (String)admarvelxmlelement1.getAttributes().get("videoOpenUrlBehavior");
                AdMarvelXMLElement admarvelxmlelement3;
                ArrayList arraylist;
                int i;
                AdMarvelXMLElement admarvelxmlelement4;
                if (s1 != null)
                {
                    if (s1.equalsIgnoreCase("pauseVideo"))
                    {
                        d = a;
                    } else
                    if (s1.equalsIgnoreCase("stopVideo"))
                    {
                        d = b;
                    } else
                    if (s1.equalsIgnoreCase("closeVideo"))
                    {
                        d = c;
                    }
                }
            } else
            if ("done".equalsIgnoreCase(s))
            {
                ad.a(ad1, true);
            } else
            if ("play_movie".equalsIgnoreCase(s))
            {
                b = admarvelxmlelement1.b();
            }
        }
        if (admarvelxmlelement.c().get("clickTracking") != null)
        {
            admarvelxmlelement2 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement.c().get("clickTracking")).get(0);
        } else
        {
            admarvelxmlelement2 = null;
        }
        if (admarvelxmlelement2 != null)
        {
            admarvelxmlelement3 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement2.c().get("pixels")).get(0);
            if (admarvelxmlelement3 != null && admarvelxmlelement3.c().containsKey("pixel"))
            {
                arraylist = (ArrayList)admarvelxmlelement3.c().get("pixel");
                e = new ArrayList();
                e.clear();
                for (i = 0; i < arraylist.size(); i++)
                {
                    admarvelxmlelement4 = (AdMarvelXMLElement)arraylist.get(i);
                    e.add(admarvelxmlelement4.b());
                }

            }
        }
        setLayoutParams(layoutparams);
        setClickable(true);
        addStatesFromChildren();
        setGravity(17);
        setOnClickListener(new android.view.View.OnClickListener(ad1) {

            final ad a;
            final ad.d b;

            public void onClick(View view)
            {
                ad.a(b.f, view);
            }

            
            {
                b = ad.d.this;
                a = ad1;
                super();
            }
        });
    }
}
