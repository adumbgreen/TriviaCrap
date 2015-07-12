// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.millennialmedia.android:
//            MMJSObject, OverlaySettings, AdViewOverlayActivity, MMJSResponse, 
//            MMWebView, MMLayout, MMLog, AdViewOverlayView

class BridgeMMInterstitial extends MMJSObject
{

    private static final String a = com/millennialmedia/android/BridgeMMInterstitial.getName();

    BridgeMMInterstitial()
    {
    }

    private Intent a(String s, OverlaySettings overlaysettings)
    {
        Intent intent = new Intent();
        if (s != null)
        {
            intent.setData(Uri.parse(s));
        }
        intent.putExtra("settings", overlaysettings);
        intent.putExtra("internalId", overlaysettings.n);
        return intent;
    }

    private MMJSResponse a(Map map)
    {
        String s = (String)map.get("allowOrientationChange");
        if (s != null)
        {
            AdViewOverlayActivity adviewoverlayactivity = d();
            if (adviewoverlayactivity != null)
            {
                adviewoverlayactivity.a(Boolean.parseBoolean(s));
                return MMJSResponse.a();
            }
        }
        return null;
    }

    private boolean a(MMJSResponse mmjsresponse)
    {
        if (mmjsresponse.c == 1 && (mmjsresponse.d instanceof String))
        {
            String s = (String)mmjsresponse.d;
            return s.contains("portrait") || s.contains("landscape");
        } else
        {
            return false;
        }
    }

    private MMJSResponse b(Map map)
    {
        String s = (String)map.get("forceOrientation");
        AdViewOverlayActivity adviewoverlayactivity = d();
        if (adviewoverlayactivity != null)
        {
            if (!"none".equals(s))
            {
                if ("portrait".equals(s))
                {
                    adviewoverlayactivity.b();
                    return MMJSResponse.a("portrait");
                }
                if ("landscape".equals(s))
                {
                    adviewoverlayactivity.c();
                    return MMJSResponse.a("landscape");
                }
            } else
            if ("none".equals(s))
            {
                adviewoverlayactivity.a(true);
                return MMJSResponse.a("none");
            }
        }
        return null;
    }

    MMJSResponse a(String s, Map map)
    {
        MMJSResponse mmjsresponse;
        if ("close".equals(s))
        {
            mmjsresponse = close(map);
        } else
        {
            if ("expandToExternalBrowser".equals(s))
            {
                return expandToExternalBrowser(map);
            }
            if ("expandWithProperties".equals(s))
            {
                return expandWithProperties(map);
            }
            if ("open".equals(s))
            {
                return open(map);
            }
            if ("setOrientation".equals(s))
            {
                return setOrientation(map);
            }
            boolean flag = "useCustomClose".equals(s);
            mmjsresponse = null;
            if (flag)
            {
                return useCustomClose(map);
            }
        }
        return mmjsresponse;
    }

    public MMJSResponse close(Map map)
    {
        MMWebView mmwebview = (MMWebView)c.get();
        if (mmwebview != null)
        {
            mmwebview.h().b();
            return MMJSResponse.a();
        } else
        {
            return null;
        }
    }

    public MMJSResponse expandToExternalBrowser(Map map)
    {
        return open(map);
    }

    public MMJSResponse expandWithProperties(Map map)
    {
        String s = (String)map.get("PROPERTY_BANNER_TYPE");
        if (s != null && !Boolean.parseBoolean(s))
        {
            return MMJSResponse.b("Cannot expand a non banner ad");
        }
        String s1 = (String)map.get("url");
        String s2 = (String)map.get("transparent");
        String s3 = (String)map.get("useCustomClose");
        String s4 = (String)map.get("transition");
        String s5 = (String)map.get("orientation");
        String s6 = (String)map.get("transitionDuration");
        String s7 = (String)map.get("height");
        String s8 = (String)map.get("width");
        String s9 = (String)map.get("modal");
        String s10 = (String)map.get("PROPERTY_EXPANDING");
        String s11 = (String)map.get("allowOrientationChange");
        Context context = (Context)b.get();
        if (context != null)
        {
            OverlaySettings overlaysettings = new OverlaySettings();
            if (s1 != null)
            {
                overlaysettings.d = s1;
            }
            if (s10 != null)
            {
                overlaysettings.n = (int)Float.parseFloat(s10);
            }
            if (s2 != null)
            {
                overlaysettings.b(Boolean.parseBoolean(s2));
            }
            if (s3 != null)
            {
                overlaysettings.a(Boolean.parseBoolean(s3));
            }
            if (s4 != null)
            {
                overlaysettings.a(s4);
            }
            if (s11 != null)
            {
                overlaysettings.h = Boolean.parseBoolean(s11);
            }
            String s12;
            if (s5 == null)
            {
                s12 = (String)map.get("forceOrientation");
            } else
            {
                s12 = s5;
            }
            if (s12 != null)
            {
                overlaysettings.c = s12;
            }
            if (s7 != null)
            {
                overlaysettings.e = (int)Float.parseFloat(s7);
            }
            if (s8 != null)
            {
                overlaysettings.f = (int)Float.parseFloat(s8);
            }
            if (s9 != null)
            {
                overlaysettings.g = Boolean.parseBoolean(s9);
            }
            if (s6 != null)
            {
                try
                {
                    overlaysettings.a(1000L * Long.parseLong(s6));
                }
                catch (Exception exception)
                {
                    MMLog.a(a, "Problem converting transitionDuration", exception);
                }
            }
            Utils.IntentUtils.a(context, a(s1, overlaysettings));
            MMSDK.Event.a(context, b((String)map.get("PROPERTY_EXPANDING")));
            return MMJSResponse.a();
        } else
        {
            return null;
        }
    }

    public MMJSResponse open(Map map)
    {
        String s = (String)map.get("url");
        Context context = (Context)b.get();
        if (s != null && context != null)
        {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
            MMSDK.Event.a(context, "browser", b((String)map.get("PROPERTY_EXPANDING")));
            Utils.IntentUtils.c(context, intent);
            return MMJSResponse.a();
        } else
        {
            return null;
        }
    }

    public MMJSResponse setOrientation(Map map)
    {
        MMJSResponse mmjsresponse = b(map);
        if (mmjsresponse == null || !a(mmjsresponse))
        {
            mmjsresponse = a(map);
        }
        return mmjsresponse;
    }

    public MMJSResponse useCustomClose(Map map)
    {
        MMWebView mmwebview = (MMWebView)c.get();
        String s = (String)map.get("useCustomClose");
        if (s != null && mmwebview != null)
        {
            AdViewOverlayView adviewoverlayview = mmwebview.j();
            if (adviewoverlayview != null)
            {
                adviewoverlayview.a(Boolean.parseBoolean(s));
                return MMJSResponse.a();
            }
        }
        return null;
    }

}
