// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.internal:
//            as, al, fz, fx, 
//            im, ik, fv, ew, 
//            bx, gw

public final class ak
{

    public static final al a = new al() {

        public void a(fz fz, Map map)
        {
        }

    };
    public static final al b = new al() {

        public void a(fz fz1, Map map)
        {
            String s = (String)map.get("urls");
            if (TextUtils.isEmpty(s))
            {
                fx.e("URLs missing in canOpenURLs GMSG.");
                return;
            }
            String as1[] = s.split(",");
            HashMap hashmap = new HashMap();
            PackageManager packagemanager = fz1.getContext().getPackageManager();
            int j = as1.length;
            int k = 0;
            while (k < j) 
            {
                String s1 = as1[k];
                String as2[] = s1.split(";", 2);
                String s2 = as2[0].trim();
                String s3;
                boolean flag;
                if (as2.length > 1)
                {
                    s3 = as2[1].trim();
                } else
                {
                    s3 = "android.intent.action.VIEW";
                }
                if (packagemanager.resolveActivity(new Intent(s3, Uri.parse(s2)), 0x10000) != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                hashmap.put(s1, Boolean.valueOf(flag));
                k++;
            }
            fz1.a("openableURLs", hashmap);
        }

    };
    public static final al c = new al() {

        public void a(fz fz1, Map map)
        {
            String s;
            Uri uri;
            s = (String)map.get("u");
            if (s == null)
            {
                fx.e("URL missing from click GMSG.");
                return;
            }
            uri = Uri.parse(s);
            ik ik1 = fz1.g();
            if (ik1 == null) goto _L2; else goto _L1
_L1:
            if (!ik1.a(uri)) goto _L2; else goto _L3
_L3:
            Uri uri2 = ik1.a(uri, fz1.getContext());
            Uri uri1 = uri2;
_L5:
            String s1 = uri1.toString();
            (new fv(fz1.getContext(), fz1.h().b, s1)).e();
            return;
            im im1;
            im1;
            fx.e((new StringBuilder()).append("Unable to append parameter to URL: ").append(s).toString());
_L2:
            uri1 = uri;
            if (true) goto _L5; else goto _L4
_L4:
        }

    };
    public static final al d = new al() {

        public void a(fz fz1, Map map)
        {
            bx bx1 = fz1.d();
            if (bx1 == null)
            {
                fx.e("A GMSG tried to close something that wasn't an overlay.");
                return;
            } else
            {
                bx1.a();
                return;
            }
        }

    };
    public static final al e = new al() {

        public void a(fz fz1, Map map)
        {
            bx bx1 = fz1.d();
            if (bx1 == null)
            {
                fx.e("A GMSG tried to use a custom close button on something that wasn't an overlay.");
                return;
            } else
            {
                bx1.b("1".equals(map.get("custom_close")));
                return;
            }
        }

    };
    public static final al f = new al() {

        public void a(fz fz1, Map map)
        {
            String s = (String)map.get("u");
            if (s == null)
            {
                fx.e("URL missing from httpTrack GMSG.");
                return;
            } else
            {
                (new fv(fz1.getContext(), fz1.h().b, s)).e();
                return;
            }
        }

    };
    public static final al g = new al() {

        public void a(fz fz, Map map)
        {
            fx.c((new StringBuilder()).append("Received log message: ").append((String)map.get("string")).toString());
        }

    };
    public static final al h = new al() {

        public void a(fz fz1, Map map)
        {
            String s = (String)map.get("tx");
            String s1 = (String)map.get("ty");
            String s2 = (String)map.get("td");
            int j;
            int k;
            int l;
            ik ik1;
            try
            {
                j = Integer.parseInt(s);
                k = Integer.parseInt(s1);
                l = Integer.parseInt(s2);
                ik1 = fz1.g();
            }
            catch (NumberFormatException numberformatexception)
            {
                fx.e("Could not parse touch parameters from gmsg.");
                return;
            }
            if (ik1 == null)
            {
                break MISSING_BLOCK_LABEL_85;
            }
            ik1.a().a(j, k, l);
        }

    };
    public static final al i = new as();

}
