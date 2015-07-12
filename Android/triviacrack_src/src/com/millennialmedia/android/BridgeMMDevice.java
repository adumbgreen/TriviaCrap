// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.millennialmedia.android:
//            MMJSObject, MMSDK, MMLog, MMJSResponse, 
//            MMWebView, HandShake, MMRequest

class BridgeMMDevice extends MMJSObject
{

    BridgeMMDevice()
    {
    }

    static JSONObject a(Context context)
    {
        JSONObject jsonobject = new JSONObject();
        Locale locale;
        jsonobject.put("sdkVersion", "5.3.0-c3980670.a");
        jsonobject.put("connection", MMSDK.c(context));
        jsonobject.put("platform", "Android");
        if (android.os.Build.VERSION.RELEASE != null)
        {
            jsonobject.put("version", android.os.Build.VERSION.RELEASE);
        }
        if (Build.MODEL != null)
        {
            jsonobject.put("device", Build.MODEL);
        }
        jsonobject.put("mmdid", MMSDK.d(context));
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        jsonobject.put("density", new Float(displaymetrics.density));
        jsonobject.put("height", new Integer(displaymetrics.heightPixels));
        jsonobject.put("width", new Integer(displaymetrics.widthPixels));
        locale = Locale.getDefault();
        if (locale == null)
        {
            break MISSING_BLOCK_LABEL_180;
        }
        jsonobject.put("language", locale.getLanguage());
        jsonobject.put("country", locale.getCountry());
        JSONObject jsonobject1 = new JSONObject();
        jsonobject1.put("name", "MAC-ID");
        jsonobject1.put("path", "/");
        jsonobject1.put("value", MMSDK.e);
        JSONArray jsonarray = new JSONArray();
        jsonarray.put(jsonobject1);
        jsonobject.put("cookies", jsonarray);
        return jsonobject;
        JSONException jsonexception1;
        jsonexception1;
        JSONException jsonexception;
        jsonobject = null;
        jsonexception = jsonexception1;
_L2:
        MMLog.a("BridgeMMDevice", "Bridge getting deviceInfo json exception: ", jsonexception);
        return jsonobject;
        jsonexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    MMJSResponse a(String s, Map map)
    {
        MMJSResponse mmjsresponse;
        if ("call".equals(s))
        {
            mmjsresponse = call(map);
        } else
        {
            if ("composeEmail".equals(s))
            {
                return composeEmail(map);
            }
            if ("composeSms".equals(s))
            {
                return composeSms(map);
            }
            if ("enableHardwareAcceleration".equals(s))
            {
                return enableHardwareAcceleration(map);
            }
            if ("getAvailableSchemes".equals(s))
            {
                return getAvailableSchemes(map);
            }
            if ("getInfo".equals(s))
            {
                return getInfo(map);
            }
            if ("getLocation".equals(s))
            {
                return getLocation(map);
            }
            if ("getOrientation".equals(s))
            {
                return getOrientation(map);
            }
            if ("isSchemeAvailable".equals(s))
            {
                return isSchemeAvailable(map);
            }
            if ("openAppStore".equals(s))
            {
                return openAppStore(map);
            }
            if ("openUrl".equals(s))
            {
                return openUrl(map);
            }
            if ("setMMDID".equals(s))
            {
                return setMMDID(map);
            }
            if ("showMap".equals(s))
            {
                return showMap(map);
            }
            boolean flag = "tweet".equals(s);
            mmjsresponse = null;
            if (flag)
            {
                return tweet(map);
            }
        }
        return mmjsresponse;
    }

    public MMJSResponse call(Map map)
    {
        Context context = (Context)b.get();
        String s = (String)map.get("number");
        if (context != null && s != null)
        {
            MMLog.b("BridgeMMDevice", String.format("Dialing Phone: %s", new Object[] {
                s
            }));
            Intent intent;
            if (Boolean.parseBoolean((String)map.get("dial")) && context.checkCallingOrSelfPermission("android.permission.CALL_PHONE") == 0)
            {
                intent = new Intent("android.intent.action.CALL", Uri.parse((new StringBuilder()).append("tel:").append(s).toString()));
            } else
            {
                intent = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder()).append("tel:").append(s).toString()));
            }
            Utils.IntentUtils.c(context, intent);
            MMSDK.Event.a(context, "tel", b((String)map.get("PROPERTY_EXPANDING")));
            return MMJSResponse.a();
        } else
        {
            return null;
        }
    }

    public MMJSResponse composeEmail(Map map)
    {
        Context context = (Context)b.get();
        String s = (String)map.get("recipient");
        String s1 = (String)map.get("subject");
        String s2 = (String)map.get("message");
        if (context != null)
        {
            MMLog.b("BridgeMMDevice", "Creating email");
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("plain/text");
            if (s != null)
            {
                intent.putExtra("android.intent.extra.EMAIL", s.split(","));
            }
            if (s1 != null)
            {
                intent.putExtra("android.intent.extra.SUBJECT", s1);
            }
            if (s2 != null)
            {
                intent.putExtra("android.intent.extra.TEXT", s2);
            }
            Utils.IntentUtils.c(context, intent);
            MMSDK.Event.a(context, "email", b((String)map.get("PROPERTY_EXPANDING")));
            return MMJSResponse.a();
        } else
        {
            return null;
        }
    }

    public MMJSResponse composeSms(Map map)
    {
        Context context = (Context)b.get();
        String s = (String)map.get("number");
        String s1 = (String)map.get("message");
        if (context != null && s != null)
        {
            MMLog.b("BridgeMMDevice", String.format("Creating sms: %s", new Object[] {
                s
            }));
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder()).append("sms:").append(s).toString()));
            if (s1 != null)
            {
                intent.putExtra("sms_body", s1);
            }
            Utils.IntentUtils.c(context, intent);
            MMSDK.Event.a(context, "sms", b((String)map.get("PROPERTY_EXPANDING")));
            return MMJSResponse.a("SMS Sent");
        } else
        {
            return null;
        }
    }

    public MMJSResponse enableHardwareAcceleration(Map map)
    {
        MMLog.b("BridgeMMDevice", (new StringBuilder()).append("hardware accel call").append(map).toString());
        String s = (String)map.get("enabled");
        MMWebView mmwebview = (MMWebView)c.get();
        if (mmwebview != null && mmwebview != null)
        {
            if (Boolean.parseBoolean(s))
            {
                mmwebview.c();
            } else
            {
                mmwebview.a();
            }
            return MMJSResponse.a();
        } else
        {
            return null;
        }
    }

    public MMJSResponse getAvailableSchemes(Map map)
    {
        Context context = (Context)b.get();
        if (context != null)
        {
            HandShake handshake = HandShake.a(context);
            MMJSResponse mmjsresponse = new MMJSResponse();
            mmjsresponse.c = 1;
            mmjsresponse.d = handshake.c(context);
            return mmjsresponse;
        } else
        {
            return null;
        }
    }

    public MMJSResponse getInfo(Map map)
    {
        Context context = (Context)b.get();
        if (context != null)
        {
            MMJSResponse mmjsresponse = new MMJSResponse();
            mmjsresponse.c = 1;
            mmjsresponse.d = a(context);
            return mmjsresponse;
        } else
        {
            return null;
        }
    }

    public MMJSResponse getLocation(Map map)
    {
        if (MMRequest.l == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("lat", Double.toString(MMRequest.l.getLatitude()));
        jsonobject.put("long", Double.toString(MMRequest.l.getLongitude()));
        if (MMRequest.l.hasAccuracy())
        {
            jsonobject.put("ha", Float.toString(MMRequest.l.getAccuracy()));
            jsonobject.put("va", Float.toString(MMRequest.l.getAccuracy()));
        }
        if (MMRequest.l.hasSpeed())
        {
            jsonobject.put("spd", Float.toString(MMRequest.l.getSpeed()));
        }
        if (MMRequest.l.hasBearing())
        {
            jsonobject.put("brg", Float.toString(MMRequest.l.getBearing()));
        }
        if (MMRequest.l.hasAltitude())
        {
            jsonobject.put("alt", Double.toString(MMRequest.l.getAltitude()));
        }
        jsonobject.put("tslr", Long.toString(MMRequest.l.getTime()));
_L3:
        MMJSResponse mmjsresponse = new MMJSResponse();
        mmjsresponse.c = 1;
        mmjsresponse.d = jsonobject;
        return mmjsresponse;
        JSONException jsonexception1;
        jsonexception1;
        JSONException jsonexception;
        jsonobject = null;
        jsonexception = jsonexception1;
_L4:
        MMLog.a("BridgeMMDevice", "Bridge getLocation json exception: ", jsonexception);
        if (true) goto _L3; else goto _L2
_L2:
        return MMJSResponse.b("location object has not been set");
        jsonexception;
          goto _L4
    }

    public MMJSResponse getOrientation(Map map)
    {
        Context context = (Context)b.get();
        if (context == null) goto _L2; else goto _L1
_L1:
        int i = context.getResources().getConfiguration().orientation;
        int j;
        MMJSResponse mmjsresponse;
        if (i == 0)
        {
            j = ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getOrientation();
        } else
        {
            j = i;
        }
        mmjsresponse = new MMJSResponse();
        mmjsresponse.c = 1;
        j;
        JVM INSTR tableswitch 2 2: default 84
    //                   2 95;
           goto _L3 _L4
_L3:
        mmjsresponse.d = "portrait";
_L5:
        return mmjsresponse;
_L4:
        mmjsresponse.d = "landscape";
        if (true) goto _L5; else goto _L2
_L2:
        return null;
    }

    public MMJSResponse isSchemeAvailable(Map map)
    {
        String s = (String)map.get("scheme");
        String s1;
        Context context;
        if (!s.contains(":"))
        {
            s1 = (new StringBuilder()).append(s).append(":").toString();
        } else
        {
            s1 = s;
        }
        context = (Context)b.get();
        if (s1 != null && context != null)
        {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s1));
            if (context.getPackageManager().queryIntentActivities(intent, 0x10000).size() > 0)
            {
                return MMJSResponse.a(s1);
            }
        }
        return MMJSResponse.b(s1);
    }

    public MMJSResponse openAppStore(Map map)
    {
        Context context = (Context)b.get();
        String s = (String)map.get("appId");
        String s1 = (String)map.get("referrer");
        if (context != null && s != null)
        {
            MMLog.b("BridgeMMDevice", String.format("Opening marketplace: %s", new Object[] {
                s
            }));
            Intent intent = new Intent("android.intent.action.VIEW");
            if (Build.MANUFACTURER.equals("Amazon"))
            {
                intent.setData(Uri.parse(String.format("amzn://apps/android?p=%s", new Object[] {
                    s
                })));
            } else
            if (s1 != null)
            {
                Object aobj[] = new Object[2];
                aobj[0] = s;
                aobj[1] = URLEncoder.encode(s1);
                intent.setData(Uri.parse(String.format("market://details?id=%s&referrer=%s", aobj)));
            } else
            {
                intent.setData(Uri.parse((new StringBuilder()).append("market://details?id=").append(s).toString()));
            }
            MMSDK.Event.a(context, "market", b((String)map.get("PROPERTY_EXPANDING")));
            Utils.IntentUtils.c(context, intent);
            return MMJSResponse.a();
        } else
        {
            return null;
        }
    }

    public MMJSResponse openUrl(Map map)
    {
        Context context = (Context)b.get();
        String s = (String)map.get("url");
        if (context != null && s != null)
        {
            MMLog.b("BridgeMMDevice", String.format("Opening: %s", new Object[] {
                s
            }));
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
            if (intent.getScheme().startsWith("http") || intent.getScheme().startsWith("https"))
            {
                MMSDK.Event.a(context, "browser", b((String)map.get("PROPERTY_EXPANDING")));
            }
            Utils.IntentUtils.c(context, intent);
            return MMJSResponse.a("Overlay opened");
        } else
        {
            return MMJSResponse.b("URL could not be opened");
        }
    }

    public MMJSResponse setMMDID(Map map)
    {
        String s = (String)map.get("mmdid");
        Context context = (Context)b.get();
        if (context != null)
        {
            HandShake.a(context).c(context, s);
            return MMJSResponse.a("MMDID is set");
        } else
        {
            return null;
        }
    }

    public MMJSResponse showMap(Map map)
    {
        Context context = (Context)b.get();
        String s = (String)map.get("location");
        if (context != null && s != null)
        {
            MMLog.b("BridgeMMDevice", String.format("Launching Google Maps: %s", new Object[] {
                s
            }));
            Utils.IntentUtils.c(context, new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder()).append("geo:").append(s).toString())));
            MMSDK.Event.a(context, "geo", b((String)map.get("PROPERTY_EXPANDING")));
            return MMJSResponse.a("Map successfully opened");
        } else
        {
            return null;
        }
    }

    public MMJSResponse tweet(Map map)
    {
        return null;
    }
}
