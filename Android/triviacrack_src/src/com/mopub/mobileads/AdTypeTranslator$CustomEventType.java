// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


public final class b extends Enum
{

    public static final c GOOGLE_PLAY_SERVICES_BANNER;
    public static final c GOOGLE_PLAY_SERVICES_INTERSTITIAL;
    public static final c HTML_BANNER;
    public static final c HTML_INTERSTITIAL;
    public static final c MILLENNIAL_BANNER;
    public static final c MILLENNIAL_INTERSTITIAL;
    public static final c MRAID_BANNER;
    public static final c MRAID_INTERSTITIAL;
    public static final c UNSPECIFIED;
    public static final c VAST_VIDEO_INTERSTITIAL;
    private static final c c[];
    private final String a;
    private final String b;

    static b a(String s)
    {
        return b(s);
    }

    private static b b(String s)
    {
        b ab[] = values();
        int i = ab.length;
        for (int j = 0; j < i; j++)
        {
            b b1 = ab[j];
            if (b1.a.equals(s))
            {
                return b1;
            }
        }

        return UNSPECIFIED;
    }

    public static UNSPECIFIED valueOf(String s)
    {
        return (UNSPECIFIED)Enum.valueOf(com/mopub/mobileads/AdTypeTranslator$CustomEventType, s);
    }

    public static UNSPECIFIED[] values()
    {
        return (UNSPECIFIED[])c.clone();
    }

    public String toString()
    {
        return b;
    }

    static 
    {
        GOOGLE_PLAY_SERVICES_BANNER = new <init>("GOOGLE_PLAY_SERVICES_BANNER", 0, "admob_native_banner", "com.mopub.mobileads.GooglePlayServicesBanner");
        GOOGLE_PLAY_SERVICES_INTERSTITIAL = new <init>("GOOGLE_PLAY_SERVICES_INTERSTITIAL", 1, "admob_full_interstitial", "com.mopub.mobileads.GooglePlayServicesInterstitial");
        MILLENNIAL_BANNER = new <init>("MILLENNIAL_BANNER", 2, "millennial_native_banner", "com.mopub.mobileads.MillennialBanner");
        MILLENNIAL_INTERSTITIAL = new <init>("MILLENNIAL_INTERSTITIAL", 3, "millennial_full_interstitial", "com.mopub.mobileads.MillennialInterstitial");
        MRAID_BANNER = new <init>("MRAID_BANNER", 4, "mraid_banner", "com.mopub.mobileads.MraidBanner");
        MRAID_INTERSTITIAL = new <init>("MRAID_INTERSTITIAL", 5, "mraid_interstitial", "com.mopub.mobileads.MraidInterstitial");
        HTML_BANNER = new <init>("HTML_BANNER", 6, "html_banner", "com.mopub.mobileads.HtmlBanner");
        HTML_INTERSTITIAL = new <init>("HTML_INTERSTITIAL", 7, "html_interstitial", "com.mopub.mobileads.HtmlInterstitial");
        VAST_VIDEO_INTERSTITIAL = new <init>("VAST_VIDEO_INTERSTITIAL", 8, "vast_interstitial", "com.mopub.mobileads.VastVideoInterstitial");
        UNSPECIFIED = new <init>("UNSPECIFIED", 9, "", null);
        b ab[] = new <init>[10];
        ab[0] = GOOGLE_PLAY_SERVICES_BANNER;
        ab[1] = GOOGLE_PLAY_SERVICES_INTERSTITIAL;
        ab[2] = MILLENNIAL_BANNER;
        ab[3] = MILLENNIAL_INTERSTITIAL;
        ab[4] = MRAID_BANNER;
        ab[5] = MRAID_INTERSTITIAL;
        ab[6] = HTML_BANNER;
        ab[7] = HTML_INTERSTITIAL;
        ab[8] = VAST_VIDEO_INTERSTITIAL;
        ab[9] = UNSPECIFIED;
        c = ab;
    }

    private (String s, int i, String s1, String s2)
    {
        super(s, i);
        a = s1;
        b = s2;
    }
}
