// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            MoPubView

public class AdTypeTranslator
{

    public AdTypeTranslator()
    {
    }

    static String a(MoPubView mopubview, String s, String s1)
    {
        CustomEventType customeventtype;
        if ("html".equals(s) || "mraid".equals(s))
        {
            if (a(mopubview))
            {
                customeventtype = CustomEventType.a((new StringBuilder()).append(s).append("_interstitial").toString());
            } else
            {
                customeventtype = CustomEventType.a((new StringBuilder()).append(s).append("_banner").toString());
            }
        } else
        if ("interstitial".equals(s))
        {
            customeventtype = CustomEventType.a((new StringBuilder()).append(s1).append("_interstitial").toString());
        } else
        {
            customeventtype = CustomEventType.a((new StringBuilder()).append(s).append("_banner").toString());
        }
        return customeventtype.toString();
    }

    static String a(String s, String s1)
    {
        String s2;
        if ("interstitial".equals(s))
        {
            s2 = s1;
        } else
        {
            s2 = s;
        }
        if (s2 != null)
        {
            return s2;
        } else
        {
            return "unknown";
        }
    }

    private static boolean a(MoPubView mopubview)
    {
        return mopubview instanceof MoPubInterstitial.MoPubInterstitialView;
    }

    private class CustomEventType extends Enum
    {

        public static final CustomEventType GOOGLE_PLAY_SERVICES_BANNER;
        public static final CustomEventType GOOGLE_PLAY_SERVICES_INTERSTITIAL;
        public static final CustomEventType HTML_BANNER;
        public static final CustomEventType HTML_INTERSTITIAL;
        public static final CustomEventType MILLENNIAL_BANNER;
        public static final CustomEventType MILLENNIAL_INTERSTITIAL;
        public static final CustomEventType MRAID_BANNER;
        public static final CustomEventType MRAID_INTERSTITIAL;
        public static final CustomEventType UNSPECIFIED;
        public static final CustomEventType VAST_VIDEO_INTERSTITIAL;
        private static final CustomEventType c[];
        private final String a;
        private final String b;

        static CustomEventType a(String s)
        {
            return b(s);
        }

        private static CustomEventType b(String s)
        {
            CustomEventType acustomeventtype[] = values();
            int i = acustomeventtype.length;
            for (int j = 0; j < i; j++)
            {
                CustomEventType customeventtype = acustomeventtype[j];
                if (customeventtype.a.equals(s))
                {
                    return customeventtype;
                }
            }

            return UNSPECIFIED;
        }

        public static CustomEventType valueOf(String s)
        {
            return (CustomEventType)Enum.valueOf(com/mopub/mobileads/AdTypeTranslator$CustomEventType, s);
        }

        public static CustomEventType[] values()
        {
            return (CustomEventType[])c.clone();
        }

        public String toString()
        {
            return b;
        }

        static 
        {
            GOOGLE_PLAY_SERVICES_BANNER = new CustomEventType("GOOGLE_PLAY_SERVICES_BANNER", 0, "admob_native_banner", "com.mopub.mobileads.GooglePlayServicesBanner");
            GOOGLE_PLAY_SERVICES_INTERSTITIAL = new CustomEventType("GOOGLE_PLAY_SERVICES_INTERSTITIAL", 1, "admob_full_interstitial", "com.mopub.mobileads.GooglePlayServicesInterstitial");
            MILLENNIAL_BANNER = new CustomEventType("MILLENNIAL_BANNER", 2, "millennial_native_banner", "com.mopub.mobileads.MillennialBanner");
            MILLENNIAL_INTERSTITIAL = new CustomEventType("MILLENNIAL_INTERSTITIAL", 3, "millennial_full_interstitial", "com.mopub.mobileads.MillennialInterstitial");
            MRAID_BANNER = new CustomEventType("MRAID_BANNER", 4, "mraid_banner", "com.mopub.mobileads.MraidBanner");
            MRAID_INTERSTITIAL = new CustomEventType("MRAID_INTERSTITIAL", 5, "mraid_interstitial", "com.mopub.mobileads.MraidInterstitial");
            HTML_BANNER = new CustomEventType("HTML_BANNER", 6, "html_banner", "com.mopub.mobileads.HtmlBanner");
            HTML_INTERSTITIAL = new CustomEventType("HTML_INTERSTITIAL", 7, "html_interstitial", "com.mopub.mobileads.HtmlInterstitial");
            VAST_VIDEO_INTERSTITIAL = new CustomEventType("VAST_VIDEO_INTERSTITIAL", 8, "vast_interstitial", "com.mopub.mobileads.VastVideoInterstitial");
            UNSPECIFIED = new CustomEventType("UNSPECIFIED", 9, "", null);
            CustomEventType acustomeventtype[] = new CustomEventType[10];
            acustomeventtype[0] = GOOGLE_PLAY_SERVICES_BANNER;
            acustomeventtype[1] = GOOGLE_PLAY_SERVICES_INTERSTITIAL;
            acustomeventtype[2] = MILLENNIAL_BANNER;
            acustomeventtype[3] = MILLENNIAL_INTERSTITIAL;
            acustomeventtype[4] = MRAID_BANNER;
            acustomeventtype[5] = MRAID_INTERSTITIAL;
            acustomeventtype[6] = HTML_BANNER;
            acustomeventtype[7] = HTML_INTERSTITIAL;
            acustomeventtype[8] = VAST_VIDEO_INTERSTITIAL;
            acustomeventtype[9] = UNSPECIFIED;
            c = acustomeventtype;
        }

        private CustomEventType(String s, int i, String s1, String s2)
        {
            super(s, i);
            a = s1;
            b = s2;
        }
    }

}
