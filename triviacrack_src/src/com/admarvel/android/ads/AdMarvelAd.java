// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.location.Location;
import com.admarvel.android.b.a;
import com.admarvel.android.util.Logging;
import java.io.File;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelXMLReader, AdMarvelXMLElement, AdMarvelUtils, AdMarvelView, 
//            AdMarvelInterstitialAds, v

public class AdMarvelAd
    implements Serializable
{

    private String A;
    private String B;
    private String C;
    private String D;
    private String E;
    private String F;
    private String G;
    private String H;
    private String I;
    private Boolean J;
    private String K;
    private int L;
    private String M;
    private int N;
    private boolean O;
    private String P;
    private String Q;
    private String R;
    private final boolean S;
    private final String T;
    private final String U;
    private boolean V;
    private String W;
    private String X;
    private String Y;
    private String Z;
    private final String a = "/data/com.admarvel.android.admarvelcachedads";
    private boolean aa;
    private int ab;
    private String ac;
    private String ad;
    private String ae;
    private String af;
    private RhythmVideoAdType ag;
    private HeyzapAdType ah;
    private boolean ai;
    private boolean aj;
    private String ak;
    private String al;
    private String am;
    private String an;
    private String ao;
    private String ap;
    private boolean aq;
    private Integer ar;
    private String as;
    private final Map at;
    private final String au;
    private final String av;
    private final String aw;
    private final int ax;
    private final String ay;
    private String az;
    private int b;
    private String c;
    private String d;
    private String e;
    private String f;
    private int g;
    private int h;
    private String i;
    private String j;
    private AdType k;
    private String l;
    private List m;
    private int n;
    private String o;
    private String p;
    private AdMarvelUtils.SDKAdNetwork q;
    private String r;
    private String s;
    private String t;
    private boolean u;
    private String v;
    private String w[];
    private String x[];
    private String y;
    private String z;

    public AdMarvelAd(String s1, Map map, String s2, String s3, String s4, int i1, String s5, 
            boolean flag, String s6)
    {
        g = -1;
        h = -1;
        y = null;
        z = null;
        A = null;
        B = null;
        C = null;
        D = null;
        V = false;
        ag = null;
        ah = null;
        ar = Integer.valueOf(0);
        O = false;
        U = s1;
        at = map;
        au = s2;
        av = s3;
        aw = s4;
        ax = i1;
        ay = s5;
        S = flag;
        T = s6;
        if (s4 != null && map.get("UNIQUE_ID") == null)
        {
            map.put("UNIQUE_ID", s4);
        }
    }

    public String getAdColonyAppVersion()
    {
        return B;
    }

    public String getAdFormat()
    {
        return D;
    }

    public int getAdHistoryCounter()
    {
        return ar.intValue();
    }

    public String getAdHistoryDumpString()
    {
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("appname", T);
            jsonobject.put("partnerid", au);
            if (ak != null)
            {
                jsonobject.put("request", new JSONObject(ak));
            }
            if (al != null)
            {
                jsonobject.put("response", new JSONObject(al));
            }
            if (am != null)
            {
                jsonobject.put("html", new JSONObject(am));
            }
            an = jsonobject.toString(1);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        return an;
    }

    public String getAdId()
    {
        return P;
    }

    public String getAdMobExtras()
    {
        return z;
    }

    public AdType getAdType()
    {
        return k;
    }

    public String getAdmobAdFormat()
    {
        return az;
    }

    public String getAdmobTestAction()
    {
        return az;
    }

    public String[] getAdmobTestDeviceId()
    {
        return w;
    }

    public String getAmazonAdRequestAdvancedOptions()
    {
        return Z;
    }

    public int getAmazonAdTimeOut()
    {
        return ab;
    }

    public String getAmazonAdvancedOptions()
    {
        return Y;
    }

    public String getAndroidId()
    {
        return aw;
    }

    public String getAppId()
    {
        return as;
    }

    public String getAppName()
    {
        return R;
    }

    public String getBannerid()
    {
        return K;
    }

    public String getChannelId()
    {
        return s;
    }

    public String getClickURL()
    {
        return j;
    }

    public String getCloseFunction()
    {
        return v;
    }

    public String getCompanyName()
    {
        return t;
    }

    public String getCountdowntext()
    {
        return ao;
    }

    public String getCreativeType()
    {
        return l;
    }

    public String getDeviceConnectivity()
    {
        return ay;
    }

    public String getDisableAdDuration()
    {
        return W;
    }

    public int getErrorCode()
    {
        return n;
    }

    public String getErrorReason()
    {
        return o;
    }

    public String getExcluded()
    {
        return M;
    }

    public String getExpandDirection()
    {
        return C;
    }

    public String getFacebookChildDirectedFlag()
    {
        return y;
    }

    public String[] getFacebookTestDeviceId()
    {
        return x;
    }

    public String getGooglePlayLocation()
    {
        return A;
    }

    public String getHeight()
    {
        return E;
    }

    public HeyzapAdType getHeyzapAdType()
    {
        return ah;
    }

    public int getId()
    {
        return b;
    }

    public String getImageAlt()
    {
        return i;
    }

    public int getImageHeight()
    {
        return h;
    }

    public String getImageURL()
    {
        return f;
    }

    public int getImageWidth()
    {
        return g;
    }

    public String getInterstitialAction()
    {
        return H;
    }

    public String getIpAddress()
    {
        return c;
    }

    public String getKeywordsContentUrl()
    {
        return I;
    }

    public int getMaxretries()
    {
        return N;
    }

    public String getOfflineBaseUrl()
    {
        return ac;
    }

    public String getOfflinekeyUrl()
    {
        return ad;
    }

    public int getOrientation()
    {
        return ax;
    }

    public String getPartnerId()
    {
        return au;
    }

    public List getPixels()
    {
        return m;
    }

    public String getPubId()
    {
        return r;
    }

    public Boolean getRetry()
    {
        return J;
    }

    public int getRetrynum()
    {
        return L;
    }

    public RhythmVideoAdType getRhythmVideoAdType()
    {
        return ag;
    }

    public String getRhythmVideoUrl()
    {
        return af;
    }

    public String getScene()
    {
        return ae;
    }

    public AdMarvelUtils.SDKAdNetwork getSdkAdNetwork()
    {
        return q;
    }

    public String getSdkNetwork()
    {
        return p;
    }

    public String getSiteId()
    {
        return av;
    }

    public String getSlotName()
    {
        return Q;
    }

    public String getSource()
    {
        return G;
    }

    public Map getTargetParams()
    {
        return at;
    }

    public String getText()
    {
        return e;
    }

    public String getVideoplacement()
    {
        return ap;
    }

    public String getWidth()
    {
        return F;
    }

    public String getXHTML()
    {
        return d;
    }

    public String getXhtml()
    {
        return d;
    }

    public String getXml()
    {
        return U;
    }

    public String getZoneId()
    {
        return X;
    }

    public boolean hasImage()
    {
        return f != null;
    }

    public boolean isAmazonEnableGeoLocation()
    {
        return aa;
    }

    public boolean isCachingEnabled()
    {
        return ai;
    }

    public boolean isDisableAdrequest()
    {
        return V;
    }

    public boolean isMustBeVisible()
    {
        return O;
    }

    public boolean isTest()
    {
        return u;
    }

    public boolean isTimercountdownEnabled()
    {
        return aq;
    }

    public boolean isTrackingIdSet()
    {
        return aj;
    }

    public AdMarvelXMLReader loadAd(File file)
    {
        if (U != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        AdMarvelXMLReader admarvelxmlreader;
        AdMarvelXMLElement admarvelxmlelement;
        admarvelxmlreader = new AdMarvelXMLReader();
        admarvelxmlreader.parseXMLString(U);
        admarvelxmlelement = admarvelxmlreader.getParsedXMLData();
        if (admarvelxmlelement == null) goto _L1; else goto _L3
_L3:
        if (admarvelxmlelement.a().equals("ad"))
        {
            String s11 = (String)admarvelxmlelement.getAttributes().get("id");
            if (s11 != null && s11.length() > 0)
            {
                b = Integer.parseInt(s11);
                K = s11;
            }
            String s12 = (String)admarvelxmlelement.getAttributes().get("ip");
            if (s12 != null && s12.length() > 0)
            {
                c = s12;
            }
            String s13 = (String)admarvelxmlelement.getAttributes().get("dah");
            if (s13 != null && s13.length() > 0 && s13.equalsIgnoreCase("true"))
            {
                AdMarvelUtils.disableLogDump();
            }
            String s14 = (String)admarvelxmlelement.getAttributes().get("type");
            AdMarvelXMLElement admarvelxmlelement13;
            int i1;
            int j1;
            AdMarvelXMLElement admarvelxmlelement14;
            String s10;
            String s15;
            if ("text".equals(s14))
            {
                k = AdType.TEXT;
            } else
            if ("image".equals(s14))
            {
                k = AdType.IMAGE;
            } else
            if ("javascript".equals(s14))
            {
                k = AdType.JAVASCRIPT;
            } else
            if ("error".equals(s14))
            {
                k = AdType.ERROR;
            } else
            if ("sdkcall".equals(s14))
            {
                k = AdType.SDKCALL;
            } else
            if ("custom".equals(s14))
            {
                k = AdType.CUSTOM;
            }
            s15 = (String)admarvelxmlelement.getAttributes().get("source");
            if (s15 != null && s15.length() > 0)
            {
                G = s15;
            }
        } else
        {
            k = AdType.ERROR;
        }
        if (admarvelxmlelement.c().containsKey("pixels"))
        {
            admarvelxmlelement13 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement.c().get("pixels")).get(0);
            if (admarvelxmlelement13.c().containsKey("pixel"))
            {
                i1 = ((ArrayList)admarvelxmlelement13.c().get("pixel")).size();
                for (j1 = 0; j1 < i1; j1++)
                {
                    admarvelxmlelement14 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement13.c().get("pixel")).get(j1);
                    if (admarvelxmlelement14 != null)
                    {
                        s10 = admarvelxmlelement14.b();
                        if (AdMarvelView.b || AdMarvelInterstitialAds.enableOfflineSDK)
                        {
                            s10 = s10.replaceAll("\\{siteid\\}", getSiteId()).replaceAll("\\{random\\}", String.valueOf(System.currentTimeMillis())).replaceAll("\\{uniqueid\\}", getAndroidId());
                        }
                        if (m == null)
                        {
                            m = new ArrayList();
                        }
                        m.add(s10);
                    }
                }

            }
        }
        if ((AdMarvelView.b || AdMarvelInterstitialAds.enableOfflineSDK) && admarvelxmlelement.c().containsKey("file"))
        {
            String s9 = ((AdMarvelXMLElement)((ArrayList)admarvelxmlelement.c().get("file")).get(0)).b();
            if (k.equals(AdType.JAVASCRIPT))
            {
                d = com.admarvel.android.b.a.a(ad, s9);
                if (d != null)
                {
                    d = d.replaceAll("\\{siteid\\}", getSiteId());
                }
            }
            ad = (new StringBuilder()).append(ad).append("/").append(s9).toString();
        }
        if (!k.equals(AdType.SDKCALL) || !admarvelxmlelement.c().containsKey("xhtml")) goto _L5; else goto _L4
_L4:
        AdMarvelXMLElement admarvelxmlelement12 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement.c().get("xhtml")).get(0);
        if (admarvelxmlelement12 == null) goto _L5; else goto _L6
_L6:
        AdMarvelXMLElement admarvelxmlelement1;
        String s2 = admarvelxmlelement12.b();
        admarvelxmlreader.parseXMLString((new v()).a(s2));
        admarvelxmlelement1 = admarvelxmlreader.getParsedXMLData();
        String s3 = (String)admarvelxmlelement1.getAttributes().get("network");
        String s1;
        File file1;
        AdMarvelXMLElement admarvelxmlelement2;
        AdMarvelXMLElement admarvelxmlelement3;
        AdMarvelXMLElement admarvelxmlelement4;
        AdMarvelXMLElement admarvelxmlelement5;
        AdMarvelXMLElement admarvelxmlelement6;
        AdMarvelXMLElement admarvelxmlelement7;
        AdMarvelXMLElement admarvelxmlelement8;
        AdMarvelXMLElement admarvelxmlelement9;
        AdMarvelXMLElement admarvelxmlelement10;
        AdMarvelXMLElement admarvelxmlelement11;
        String s4;
        String s5;
        String s6;
        String s7;
        if ("googleplay".equals(s3) || "admob".equals(s3))
        {
            p = "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter";
            q = AdMarvelUtils.SDKAdNetwork.GOOGLEPLAY;
        } else
        if ("rhythm".equals(s3))
        {
            p = "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter";
            q = AdMarvelUtils.SDKAdNetwork.RHYTHM;
        } else
        if ("greystripe".equals(s3))
        {
            p = "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter";
            q = AdMarvelUtils.SDKAdNetwork.GREYSTRIPE;
        } else
        if ("millennial".equals(s3))
        {
            p = "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter";
            q = AdMarvelUtils.SDKAdNetwork.MILLENNIAL;
        } else
        if ("amazon".equals(s3))
        {
            p = "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter";
            q = AdMarvelUtils.SDKAdNetwork.AMAZON;
        } else
        if ("adcolony".equals(s3))
        {
            p = "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter";
            q = AdMarvelUtils.SDKAdNetwork.ADCOLONY;
        } else
        if ("pulse3d".equals(s3))
        {
            p = "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter";
            q = AdMarvelUtils.SDKAdNetwork.PULSE3D;
        } else
        if ("facebook".equals(s3))
        {
            p = "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter";
            q = AdMarvelUtils.SDKAdNetwork.FACEBOOK;
        } else
        if ("inmobi".equals(s3))
        {
            p = "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter";
            q = AdMarvelUtils.SDKAdNetwork.INMOBI;
        } else
        if ("heyzap".equals(s3))
        {
            p = "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter";
            q = AdMarvelUtils.SDKAdNetwork.HEYZAP;
        } else
        if ("disable_ad_request".equals(s3))
        {
            String s8 = (String)admarvelxmlelement1.getAttributes().get("durationinseconds");
            if (s8 != null)
            {
                V = true;
                W = s8;
            }
        } else
        {
            k = AdType.ERROR;
            n = 307;
            o = "Missing SDK ad network";
        }
        if ("YES".equals((String)admarvelxmlelement1.getAttributes().get("retry")))
        {
            J = Boolean.valueOf(true);
        } else
        {
            J = Boolean.valueOf(false);
        }
        s4 = (String)admarvelxmlelement1.getAttributes().get("bannerid");
        if (s4 != null && s4.length() > 0)
        {
            K = s4;
        }
        s5 = (String)admarvelxmlelement1.getAttributes().get("retrynum");
        if (s5 != null && s5.length() > 0)
        {
            L = Integer.parseInt(s5);
        }
        s6 = (String)admarvelxmlelement1.getAttributes().get("excluded");
        if (s6 != null && s6.length() > 0)
        {
            M = s6;
        }
        s7 = (String)admarvelxmlelement1.getAttributes().get("maxretries");
        if (s7 != null && s7.length() > 0)
        {
            N = Integer.parseInt(s7);
        } else
        {
            N = 1;
        }
_L8:
        if (k.equals(AdType.JAVASCRIPT) && admarvelxmlelement1.c().containsKey("customdata"))
        {
            admarvelxmlelement11 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("customdata")).get(0);
            if (admarvelxmlelement11.c().containsKey("close_func"))
            {
                v = ((AdMarvelXMLElement)((ArrayList)admarvelxmlelement11.c().get("close_func")).get(0)).b();
            }
        }
        if (admarvelxmlelement1.c().containsKey("errorCode"))
        {
            admarvelxmlelement10 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("errorCode")).get(0);
            if (admarvelxmlelement10 != null)
            {
                n = Integer.parseInt(admarvelxmlelement10.b());
            }
        }
        if (admarvelxmlelement1.c().containsKey("errorReason"))
        {
            admarvelxmlelement9 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("errorReason")).get(0);
            if (admarvelxmlelement9 != null)
            {
                o = admarvelxmlelement9.b();
            }
        }
        if (admarvelxmlelement1.c().containsKey("xhtml"))
        {
            admarvelxmlelement8 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("xhtml")).get(0);
            if (admarvelxmlelement8 != null)
            {
                d = admarvelxmlelement8.b();
            }
        }
        if (admarvelxmlelement1.c().containsKey("clickurl"))
        {
            admarvelxmlelement7 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("clickurl")).get(0);
            if (admarvelxmlelement7 != null)
            {
                j = admarvelxmlelement7.b();
                if ((AdMarvelView.b || AdMarvelInterstitialAds.enableOfflineSDK) && j != null)
                {
                    j = j.replaceAll("\\{siteid\\}", getSiteId());
                }
            }
        }
        if (admarvelxmlelement1.c().containsKey("image"))
        {
            if (((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("image")).get(0)).c().containsKey("url"))
            {
                admarvelxmlelement6 = (AdMarvelXMLElement)((ArrayList)((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("image")).get(0)).c().get("url")).get(0);
                if (admarvelxmlelement6 != null)
                {
                    f = admarvelxmlelement6.b();
                }
            }
            if (((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("image")).get(0)).c().containsKey("alt"))
            {
                admarvelxmlelement5 = (AdMarvelXMLElement)((ArrayList)((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("image")).get(0)).c().get("alt")).get(0);
                if (admarvelxmlelement5 != null)
                {
                    i = admarvelxmlelement5.b();
                }
            }
            if (((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("image")).get(0)).c().containsKey("width"))
            {
                admarvelxmlelement4 = (AdMarvelXMLElement)((ArrayList)((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("image")).get(0)).c().get("width")).get(0);
                if (admarvelxmlelement4 != null)
                {
                    g = Integer.parseInt(admarvelxmlelement4.b());
                }
            }
            if (((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("image")).get(0)).c().containsKey("height"))
            {
                admarvelxmlelement3 = (AdMarvelXMLElement)((ArrayList)((AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("image")).get(0)).c().get("height")).get(0);
                if (admarvelxmlelement3 != null)
                {
                    h = Integer.parseInt(admarvelxmlelement3.b());
                }
            }
        }
        if (admarvelxmlelement1.c().containsKey("text"))
        {
            admarvelxmlelement2 = (AdMarvelXMLElement)((ArrayList)admarvelxmlelement1.c().get("text")).get(0);
            if (admarvelxmlelement2 != null)
            {
                e = admarvelxmlelement2.b();
            }
        }
        if (S && !k.equals(AdType.ERROR))
        {
            if (admarvelxmlelement1.c().containsKey("image"))
            {
                s1 = f.replace("http://admarvel.s3.amazonaws.com", "");
                file1 = new File(file, (new StringBuilder()).append("/data/com.admarvel.android.admarvelcachedads").append(s1).toString());
                Logging.log((new StringBuilder()).append("AdMarvelAd::loadAd: ").append(file1.getAbsolutePath()).toString());
                if (file1.exists())
                {
                    f = f.replace("http://admarvel.s3.amazonaws.com", (new StringBuilder()).append("content://").append(T).append(".AdMarvelCachedImageLocalFileContentProvider").toString());
                } else
                {
                    k = AdType.ERROR;
                    n = 205;
                    o = "Cached Ad Unable to render";
                }
            } else
            {
                k = AdType.ERROR;
                n = 205;
                o = "Cached Ad Unable to render: Only images are supported.  server-side configuration error";
            }
        }
        return admarvelxmlreader;
_L5:
        admarvelxmlelement1 = admarvelxmlelement;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void removeNonStringEntriesTargetParam()
    {
        this;
        JVM INSTR monitorenter ;
        ConcurrentHashMap concurrenthashmap;
        concurrenthashmap = new ConcurrentHashMap();
        concurrenthashmap.putAll(at);
        ConcurrentHashMap concurrenthashmap1;
        Iterator iterator;
        concurrenthashmap1 = new ConcurrentHashMap();
        concurrenthashmap1.putAll(at);
        iterator = concurrenthashmap1.entrySet().iterator();
_L3:
        java.util.Map.Entry entry;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_234;
            }
            entry = (java.util.Map.Entry)iterator.next();
        } while (entry.getValue() instanceof String);
        if (!(entry.getValue() instanceof Location) || !((String)entry.getKey()).equals("LOCATION_OBJECT")) goto _L2; else goto _L1
_L1:
        Location location = (Location)entry.getValue();
        Object aobj[] = new Object[2];
        aobj[0] = Double.valueOf(location.getLatitude());
        aobj[1] = Double.valueOf(location.getLongitude());
        concurrenthashmap1.put("GEOLOCATION", String.format("%f,%f", aobj));
        concurrenthashmap1.remove(entry.getKey());
          goto _L3
        Exception exception1;
        exception1;
        at.clear();
        at.putAll(concurrenthashmap);
        exception1.printStackTrace();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        concurrenthashmap1.remove(entry.getKey());
          goto _L3
        Exception exception;
        exception;
        throw exception;
        at.clear();
        at.putAll(concurrenthashmap1);
          goto _L4
    }

    public void setAdColonyAppVersion(String s1)
    {
        B = s1;
    }

    public void setAdFormat(String s1)
    {
        D = s1;
    }

    public void setAdHistoryCounter(int i1)
    {
        ar = Integer.valueOf(i1);
    }

    public void setAdId(String s1)
    {
        P = s1;
    }

    public void setAdMobExtras(String s1)
    {
        z = s1;
    }

    public void setAdType(AdType adtype)
    {
        k = adtype;
    }

    public void setAdmobTestAction(String s1)
    {
        az = s1;
    }

    public void setAdmobTestDeviceId(String as1[])
    {
        w = as1;
    }

    public void setAmazonAdRequestAdvancedOptions(String s1)
    {
        Z = s1;
    }

    public void setAmazonAdTimeOut(int i1)
    {
        ab = i1;
    }

    public void setAmazonAdvancedOptions(String s1)
    {
        Y = s1;
    }

    public void setAmazonEnableGeoLocation(boolean flag)
    {
        aa = flag;
    }

    public void setAppId(String s1)
    {
        as = s1;
    }

    public void setAppName(String s1)
    {
        R = s1;
    }

    public void setBannerid(String s1)
    {
        K = s1;
    }

    public void setCachingEnabled(boolean flag)
    {
        ai = flag;
    }

    public void setChannelId(String s1)
    {
        s = s1;
    }

    public void setClickURL(String s1)
    {
        j = s1;
    }

    public void setCloseFunction(String s1)
    {
        v = s1;
    }

    public void setCompanyName(String s1)
    {
        t = s1;
    }

    public void setCountdowntext(String s1)
    {
        ao = s1;
    }

    public void setCreativeType(String s1)
    {
        l = s1;
    }

    public void setErrorCode(int i1)
    {
        n = i1;
    }

    public void setErrorReason(String s1)
    {
        o = s1;
    }

    public void setExcluded(String s1)
    {
        M = s1;
    }

    public void setExpandDirection(String s1)
    {
        C = s1;
    }

    public void setFacebookChildDirectedFlag(String s1)
    {
        y = s1;
    }

    public void setFacebookTestDeviceId(String as1[])
    {
        x = as1;
    }

    public void setGooglePlayLocation(String s1)
    {
        A = s1;
    }

    public void setHeight(String s1)
    {
        E = s1;
    }

    public void setHeyzapAdType(HeyzapAdType heyzapadtype)
    {
        ah = heyzapadtype;
    }

    public void setHtmlJson(String s1)
    {
        try
        {
            JSONObject jsonobject = new JSONObject();
            SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
            SimpleDateFormat simpledateformat1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            java.util.Date date = Calendar.getInstance().getTime();
            Long long1 = Long.valueOf(System.currentTimeMillis());
            jsonobject.put("data", s1);
            jsonobject.put("timestamp", String.valueOf(long1));
            jsonobject.put("utc", simpledateformat.format(date));
            jsonobject.put("local", simpledateformat1.format(date));
            am = jsonobject.toString(1);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void setId(int i1)
    {
        b = i1;
    }

    public void setImageAlt(String s1)
    {
        i = s1;
    }

    public void setImageHeight(int i1)
    {
        h = i1;
    }

    public void setImageURL(String s1)
    {
        f = s1;
    }

    public void setImageWidth(int i1)
    {
        g = i1;
    }

    public void setInterstitialAction(String s1)
    {
        H = s1;
    }

    public void setIpAddress(String s1)
    {
        c = s1;
    }

    public void setKeywordsContentUrl(String s1)
    {
        I = s1;
    }

    public void setMustBeVisible(boolean flag)
    {
        O = flag;
    }

    public void setOfflineBaseUrl(String s1)
    {
        ac = s1;
    }

    public void setOfflinekeyUrl(String s1)
    {
        ad = s1;
    }

    public void setPixels(List list)
    {
        m = list;
    }

    public void setPubId(String s1)
    {
        r = s1;
    }

    public void setRequestJson(JSONObject jsonobject)
    {
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_13;
        }
        ak = jsonobject.toString(1);
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    public void setResponseJson()
    {
        try
        {
            JSONObject jsonobject = new JSONObject();
            SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT+00:00"));
            SimpleDateFormat simpledateformat1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            java.util.Date date = Calendar.getInstance().getTime();
            Long long1 = Long.valueOf(System.currentTimeMillis());
            jsonobject.put("data", U);
            jsonobject.put("timestamp", String.valueOf(long1));
            jsonobject.put("utc", simpledateformat.format(date));
            jsonobject.put("local", simpledateformat1.format(date));
            al = jsonobject.toString(1);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void setRetry(Boolean boolean1)
    {
        J = boolean1;
    }

    public void setRetrynum(int i1)
    {
        L = i1;
    }

    public void setRhythmVideoAdType(RhythmVideoAdType rhythmvideoadtype)
    {
        ag = rhythmvideoadtype;
    }

    public void setRhythmVideoUrl(String s1)
    {
        af = s1;
    }

    public void setScene(String s1)
    {
        ae = s1;
    }

    public void setSdkNetwork(String s1)
    {
        p = s1;
    }

    public void setSetTrackingId(boolean flag)
    {
        aj = flag;
    }

    public void setSlotName(String s1)
    {
        Q = s1;
    }

    public void setSource(String s1)
    {
        G = s1;
    }

    public void setTest(boolean flag)
    {
        u = flag;
    }

    public void setText(String s1)
    {
        e = s1;
    }

    public void setTimercountdown(boolean flag)
    {
        aq = flag;
    }

    public void setVideoplacement(String s1)
    {
        ap = s1;
    }

    public void setWidth(String s1)
    {
        F = s1;
    }

    public void setXhtml(String s1)
    {
        d = s1;
    }

    public void setZoneId(String s1)
    {
        X = s1;
    }

    private class AdType extends Enum
    {

        private static final AdType $VALUES[];
        public static final AdType CUSTOM;
        public static final AdType ERROR;
        public static final AdType IMAGE;
        public static final AdType JAVASCRIPT;
        public static final AdType SDKCALL;
        public static final AdType TEXT;

        public static AdType valueOf(String s1)
        {
            return (AdType)Enum.valueOf(com/admarvel/android/ads/AdMarvelAd$AdType, s1);
        }

        public static AdType[] values()
        {
            return (AdType[])$VALUES.clone();
        }

        static 
        {
            TEXT = new AdType("TEXT", 0);
            IMAGE = new AdType("IMAGE", 1);
            JAVASCRIPT = new AdType("JAVASCRIPT", 2);
            SDKCALL = new AdType("SDKCALL", 3);
            ERROR = new AdType("ERROR", 4);
            CUSTOM = new AdType("CUSTOM", 5);
            AdType aadtype[] = new AdType[6];
            aadtype[0] = TEXT;
            aadtype[1] = IMAGE;
            aadtype[2] = JAVASCRIPT;
            aadtype[3] = SDKCALL;
            aadtype[4] = ERROR;
            aadtype[5] = CUSTOM;
            $VALUES = aadtype;
        }

        private AdType(String s1, int i1)
        {
            super(s1, i1);
        }
    }

}
