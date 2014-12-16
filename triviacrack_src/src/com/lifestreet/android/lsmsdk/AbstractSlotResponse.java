// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.lifestreet.android.lsmsdk;

import com.lifestreet.android.lsmsdk.exceptions.InvalidNetworkParameterException;
import com.lifestreet.android.lsmsdk.exceptions.SlotResponseException;
import java.lang.reflect.Constructor;
import java.util.EnumMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.lifestreet.android.lsmsdk:
//            SlotResponse, SlotJsonResponse, SlotHtmlResponse, AdType, 
//            SlotContext, SlotType, ErrorCode, TransitionAnimation, 
//            AdNetworkBuilder, AdsParams, AdNetwork

public abstract class AbstractSlotResponse
    implements SlotResponse
{

    public static final String PROPERTY_ADS_PARAMS = "adsParams";
    public static final String PROPERTY_AD_TYPE = "AdType";
    public static final String PROPERTY_CLICK_URL = "ClickUrl";
    public static final String PROPERTY_IMPRESSION_URL = "ImpressionUrl";
    public static final String PROPERTY_NETWORKS = "networks";
    public static final String PROPERTY_NETWORK_TYPE = "NetworkType";
    public static final String PROPERTY_NO_BID_URL = "NobidUrl";
    public static final String PROPERTY_PARAMETERS = "Parameters";
    public static final String PROPERTY_REFRESH_RATE = "RefreshRate";
    public static final String PROPERTY_TRANSITION_ANIMATION = "TransitionAnimation";
    private static final Map sResponseTypeMap;
    private AdsParams mAdsParams;
    private List mNetworks;
    private final SlotContext mSlotContext;

    public AbstractSlotResponse(SlotContext slotcontext)
    {
        mSlotContext = slotcontext;
    }

    private AdType getAdType(Map map)
    {
        AdType adtype = AdType.DEFAULT;
        if (mSlotContext != null && mSlotContext.getSlotType() == SlotType.INTERSTITIAL)
        {
            return AdType.INTERSTITIAL;
        }
        String s = (String)map.get("AdType");
        if (s != null)
        {
            String s1 = s.toUpperCase(Locale.US);
            if (AdType.doesNotExist(s1))
            {
                throw new InvalidNetworkParameterException(ErrorCode.UNKNOWN_AD_TYPE, (new StringBuilder()).append("Unknown ad type: ").append(s1).toString(), mSlotContext);
            }
            AdType adtype1;
            try
            {
                adtype1 = AdType.valueOf(s1);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw new InvalidNetworkParameterException("Invalid AdType value", mSlotContext);
            }
            return adtype1;
        } else
        {
            return adtype;
        }
    }

    private int getRefreshRate(Map map)
    {
        String s = (String)map.get("RefreshRate");
        if (s == null || s.trim().length() == 0)
        {
            s = String.valueOf(300);
        }
        int i;
        try
        {
            i = Integer.valueOf(s).intValue();
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new InvalidNetworkParameterException("Invalid RefreshRate value", mSlotContext);
        }
        return i;
    }

    private static ResponseType getResponseType(String s)
    {
        ResponseType responsetype = null;
        if (s != null)
        {
            if (s.contains("json"))
            {
                responsetype = ResponseType.JSON;
            } else
            {
                boolean flag = s.contains("html");
                responsetype = null;
                if (flag)
                {
                    return ResponseType.HTML;
                }
            }
        }
        return responsetype;
    }

    private TransitionAnimation getTransitionAnimation(Map map)
    {
        TransitionAnimation transitionanimation = TransitionAnimation.DEFAULT;
        String s = (String)map.get("TransitionAnimation");
        if (s != null)
        {
            String s1 = s.toUpperCase(Locale.US);
            if (TransitionAnimation.doesNotExist(s1))
            {
                throw new InvalidNetworkParameterException((new StringBuilder()).append("Unknown transition animation type: ").append(s1).toString(), mSlotContext);
            }
            TransitionAnimation transitionanimation1;
            try
            {
                transitionanimation1 = TransitionAnimation.valueOf(s1);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw new InvalidNetworkParameterException("Invalid TransitionAnimation value", mSlotContext);
            }
            return transitionanimation1;
        } else
        {
            return transitionanimation;
        }
    }

    public static SlotResponse newInstance(SlotContext slotcontext, String s, String s1)
    {
        if (s == null || s1 == null)
        {
            throw new SlotResponseException(ErrorCode.EMPTY_RESPONSE, "Empty response", slotcontext);
        }
        ResponseType responsetype = getResponseType(s1);
        if (responsetype == null)
        {
            throw new SlotResponseException(ErrorCode.UNKNOWN_CONTENT_TYPE, (new StringBuilder()).append("Unknown Content-Type: ").append(s1).toString(), slotcontext);
        }
        Class class1 = (Class)sResponseTypeMap.get(responsetype);
        SlotResponse slotresponse;
        try
        {
            slotresponse = (SlotResponse)class1.getConstructor(new Class[] {
                com/lifestreet/android/lsmsdk/SlotContext, java/lang/String
            }).newInstance(new Object[] {
                slotcontext, s
            });
        }
        catch (Exception exception)
        {
            throw new SlotResponseException(ErrorCode.EMPTY_RESPONSE, (new StringBuilder()).append("Error instantiating SlotResponse class: ").append(exception.getMessage()).toString(), slotcontext);
        }
        slotresponse.parse();
        return slotresponse;
    }

    protected AdNetwork createNetworkInstanceFromMap(Map map, String s, Map map1)
    {
        AdType adtype = getAdType(map);
        TransitionAnimation transitionanimation = getTransitionAnimation(map);
        String s1 = (String)map.get("ClickUrl");
        String s2 = (String)map.get("NobidUrl");
        String s3 = (String)map.get("ImpressionUrl");
        int i = getRefreshRate(map);
        return (new AdNetworkBuilder()).networkType(s).adType(adtype).transitionAnimation(transitionanimation).impressionUrl(s3).noBidUrl(s2).clickUrl(s1).parameters(map1).refreshRate(i).build();
    }

    public AdsParams getAdsParams()
    {
        return mAdsParams;
    }

    public List getNetworks()
    {
        return mNetworks;
    }

    protected SlotContext getSlotContext()
    {
        return mSlotContext;
    }

    protected void setAdsParams(AdsParams adsparams)
    {
        mAdsParams = adsparams;
    }

    protected void setNetworks(List list)
    {
        mNetworks = list;
    }

    static 
    {
        sResponseTypeMap = new EnumMap(com/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType);
        sResponseTypeMap.put(ResponseType.JSON, com/lifestreet/android/lsmsdk/SlotJsonResponse);
        sResponseTypeMap.put(ResponseType.HTML, com/lifestreet/android/lsmsdk/SlotHtmlResponse);
    }

    private class ResponseType extends Enum
    {

        private static final ResponseType $VALUES[];
        public static final ResponseType HTML;
        public static final ResponseType JSON;

        public static ResponseType valueOf(String s)
        {
            return (ResponseType)Enum.valueOf(com/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType, s);
        }

        public static ResponseType[] values()
        {
            return (ResponseType[])$VALUES.clone();
        }

        static 
        {
            JSON = new ResponseType("JSON", 0);
            HTML = new ResponseType("HTML", 1);
            ResponseType aresponsetype[] = new ResponseType[2];
            aresponsetype[0] = JSON;
            aresponsetype[1] = HTML;
            $VALUES = aresponsetype;
        }

        private ResponseType(String s, int i)
        {
            super(s, i);
        }
    }

}
