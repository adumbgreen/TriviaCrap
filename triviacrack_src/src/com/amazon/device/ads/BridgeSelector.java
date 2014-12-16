// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.amazon.device.ads:
//            MraidAdSDKBridgeFactory, AAXCreative, AdSDKBridgeFactory

class BridgeSelector
{

    private static BridgeSelector instance = new BridgeSelector();
    private HashMap bridgesForCT;
    private HashMap bridgesForPattern;
    private HashMap bridgesForResourcePattern;
    private HashMap patterns;

    BridgeSelector()
    {
        initialize();
    }

    public static BridgeSelector getInstance()
    {
        return instance;
    }

    private Pattern getPattern(String s)
    {
        Pattern pattern = (Pattern)patterns.get(s);
        if (pattern == null)
        {
            pattern = Pattern.compile(s);
            patterns.put(s, pattern);
        }
        return pattern;
    }

    public void addBridgeFactory(AAXCreative aaxcreative, AdSDKBridgeFactory adsdkbridgefactory)
    {
        HashSet hashset = (HashSet)bridgesForCT.get(aaxcreative);
        if (hashset == null)
        {
            hashset = new HashSet();
            bridgesForCT.put(aaxcreative, hashset);
        }
        hashset.add(adsdkbridgefactory);
    }

    public void addBridgeFactory(String s, AdSDKBridgeFactory adsdkbridgefactory)
    {
        HashSet hashset = (HashSet)bridgesForPattern.get(s);
        if (hashset == null)
        {
            hashset = new HashSet();
            bridgesForPattern.put(s, hashset);
        }
        hashset.add(adsdkbridgefactory);
    }

    public void addBridgeFactoryForResourceLoad(String s, AdSDKBridgeFactory adsdkbridgefactory)
    {
        HashSet hashset = (HashSet)bridgesForResourcePattern.get(s);
        if (hashset == null)
        {
            hashset = new HashSet();
            bridgesForResourcePattern.put(s, hashset);
        }
        hashset.add(adsdkbridgefactory);
    }

    public Set getBridgeFactories(AAXCreative aaxcreative)
    {
        return (Set)bridgesForCT.get(aaxcreative);
    }

    public Set getBridgeFactories(String s)
    {
        HashSet hashset = new HashSet();
        Iterator iterator = bridgesForPattern.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            if (getPattern(s1).matcher(s).find())
            {
                hashset.addAll((Collection)bridgesForPattern.get(s1));
            }
        } while (true);
        return hashset;
    }

    public Set getBridgeFactoriesForResourceLoad(String s)
    {
        HashSet hashset = new HashSet();
        Iterator iterator = bridgesForResourcePattern.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            if (getPattern(s1).matcher(s).find())
            {
                hashset.addAll((Collection)bridgesForResourcePattern.get(s1));
            }
        } while (true);
        return hashset;
    }

    void initialize()
    {
        bridgesForCT = new HashMap();
        bridgesForPattern = new HashMap();
        patterns = new HashMap();
        bridgesForResourcePattern = new HashMap();
        MraidAdSDKBridgeFactory mraidadsdkbridgefactory = new MraidAdSDKBridgeFactory();
        addBridgeFactory(AAXCreative.MRAID1, mraidadsdkbridgefactory);
        addBridgeFactory(AAXCreative.MRAID2, mraidadsdkbridgefactory);
        addBridgeFactory(AAXCreative.INTERSTITIAL, mraidadsdkbridgefactory);
        addBridgeFactory("<[Ss][Cc][Rr][Ii][Pp][Tt](\\s[^>]*\\s|\\s)[Ss][Rr][Cc]\\s*=\\s*[\"']mraid.js[\"']", mraidadsdkbridgefactory);
        addBridgeFactoryForResourceLoad(".*\\Wmraid.js$|^mraid.js$", mraidadsdkbridgefactory);
    }

}
