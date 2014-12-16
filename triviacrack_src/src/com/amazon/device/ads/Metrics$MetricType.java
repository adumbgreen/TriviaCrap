// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


final class isAdTypeSpecific extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES AAX_CONFIG_DOWNLOAD_FAILED;
    public static final .VALUES AAX_CONFIG_DOWNLOAD_LATENCY;
    public static final .VALUES AAX_LATENCY_GET_AD;
    public static final .VALUES ADLAYOUT_HEIGHT_ZERO;
    public static final .VALUES AD_COUNTER_AUTO_AD_SIZE;
    public static final .VALUES AD_COUNTER_FAILED_DUE_TO_NO_RETRY;
    public static final .VALUES AD_COUNTER_IDENTIFIED_DEVICE;
    public static final .VALUES AD_COUNTER_PARENT_VIEW_MISSING;
    public static final .VALUES AD_COUNTER_RENDERING_FATAL;
    public static final .VALUES AD_FAILED_INVALID_AUTO_AD_SIZE;
    public static final .VALUES AD_FAILED_LAYOUT_NOT_RUN;
    public static final .VALUES AD_FAILED_NULL_LAYOUT_PARAMS;
    public static final .VALUES AD_FAILED_UNKNOWN_WEBVIEW_ISSUE;
    public static final .VALUES AD_IS_INTERSTITIAL;
    public static final .VALUES AD_LATENCY_RENDER;
    public static final .VALUES AD_LATENCY_RENDER_FAILED;
    public static final .VALUES AD_LATENCY_TOTAL;
    public static final .VALUES AD_LATENCY_TOTAL_FAILURE;
    public static final .VALUES AD_LATENCY_TOTAL_SUCCESS;
    public static final .VALUES AD_LAYOUT_INITIALIZATION;
    public static final .VALUES AD_LOADED_TO_AD_SHOW_TIME;
    public static final .VALUES AD_LOAD_FAILED;
    public static final .VALUES AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT;
    public static final .VALUES AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT;
    public static final .VALUES AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END;
    public static final HREAD_END AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL;
    public static final HREAD_END AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP;
    public static final HREAD_END AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START;
    public static final _GET_AD_START AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP;
    public static final _GET_AD_START AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE;
    public static final AILURE AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START;
    public static final ENDER_START AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START;
    public static final QUEST_START AD_NO_RETRY_TTL_RECEIVED;
    public static final QUEST_START AD_SHOW_DURATION;
    public static final QUEST_START AD_SHOW_LATENCY;
    public static final QUEST_START ASSETS_CREATED_LATENCY;
    public static final QUEST_START ASSETS_ENSURED_LATENCY;
    public static final QUEST_START ASSETS_FAILED;
    public static final QUEST_START CARRIER_NAME;
    public static final QUEST_START CONFIG_DOWNLOAD_ERROR;
    public static final QUEST_START CONFIG_DOWNLOAD_LATENCY;
    public static final QUEST_START CONFIG_PARSE_ERROR;
    public static final QUEST_START CONNECTION_TYPE;
    public static final QUEST_START CUSTOM_RENDER_HANDLED;
    public static final QUEST_START INTERSTITIAL_AD_ACTIVITY_FAILED;
    public static final QUEST_START SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED;
    public static final QUEST_START SIS_LATENCY_REGISTER;
    public static final QUEST_START SIS_LATENCY_REGISTER_EVENT;
    public static final QUEST_START SIS_LATENCY_UPDATE_DEVICE_INFO;
    public static final QUEST_START TLS_ENABLED;
    public static final QUEST_START VIEWPORT_SCALE;
    public static final QUEST_START WIFI_PRESENT;
    private final String aaxName;
    private final boolean isAdTypeSpecific;

    public static isAdTypeSpecific valueOf(String s)
    {
        return (isAdTypeSpecific)Enum.valueOf(com/amazon/device/ads/Metrics$MetricType, s);
    }

    public static isAdTypeSpecific[] values()
    {
        return (isAdTypeSpecific[])$VALUES.clone();
    }

    public String getAaxName()
    {
        return aaxName;
    }

    public boolean isAdTypeSpecific()
    {
        return isAdTypeSpecific;
    }

    static 
    {
        AD_LATENCY_TOTAL = new <init>("AD_LATENCY_TOTAL", 0, "tl", true);
        AD_LATENCY_TOTAL_SUCCESS = new <init>("AD_LATENCY_TOTAL_SUCCESS", 1, "tsl", true);
        AD_LATENCY_TOTAL_FAILURE = new <init>("AD_LATENCY_TOTAL_FAILURE", 2, "tfl", true);
        AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START = new <init>("AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START", 3, "llfsl", true);
        AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP = new <init>("AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP", 4, "lfsul");
        AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START = new <init>("AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START", 5, "lfsasl");
        AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END = new <init>("AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END", 6, "laefel");
        AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP = new <init>("AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP", 7, "lffsul");
        AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START = new <init>("AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START", 8, "lffsrsl", true);
        AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE = new <init>("AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE", 9, "lffsfl", true);
        AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL = new <init>("AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL", 10, "lcaul");
        ASSETS_CREATED_LATENCY = new <init>("ASSETS_CREATED_LATENCY", 11, "lacl");
        ASSETS_ENSURED_LATENCY = new <init>("ASSETS_ENSURED_LATENCY", 12, "lael");
        ASSETS_FAILED = new <init>("ASSETS_FAILED", 13, "af");
        AD_LOADED_TO_AD_SHOW_TIME = new <init>("AD_LOADED_TO_AD_SHOW_TIME", 14, "alast");
        AD_SHOW_LATENCY = new <init>("AD_SHOW_LATENCY", 15, "lsa");
        AD_SHOW_DURATION = new <init>("AD_SHOW_DURATION", 16, "asd");
        AD_LAYOUT_INITIALIZATION = new <init>("AD_LAYOUT_INITIALIZATION", 17, "ali");
        AAX_LATENCY_GET_AD = new <init>("AAX_LATENCY_GET_AD", 18, "al");
        AD_LOAD_FAILED = new <init>("AD_LOAD_FAILED", 19, "lf");
        AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT = new <init>("AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT", 20, "lfat");
        AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT = new <init>("AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT", 21, "lfpt");
        AD_COUNTER_IDENTIFIED_DEVICE = new <init>("AD_COUNTER_IDENTIFIED_DEVICE", 22, "id");
        AD_COUNTER_RENDERING_FATAL = new <init>("AD_COUNTER_RENDERING_FATAL", 23, "rf", true);
        AD_LATENCY_RENDER = new <init>("AD_LATENCY_RENDER", 24, "rl", true);
        AD_LATENCY_RENDER_FAILED = new <init>("AD_LATENCY_RENDER_FAILED", 25, "rlf", true);
        AD_COUNTER_FAILED_DUE_TO_NO_RETRY = new <init>("AD_COUNTER_FAILED_DUE_TO_NO_RETRY", 26, "nrtf");
        AD_NO_RETRY_TTL_RECEIVED = new <init>("AD_NO_RETRY_TTL_RECEIVED", 27, "nrtr");
        AD_COUNTER_AUTO_AD_SIZE = new <init>("AD_COUNTER_AUTO_AD_SIZE", 28, "aas");
        AD_COUNTER_PARENT_VIEW_MISSING = new <init>("AD_COUNTER_PARENT_VIEW_MISSING", 29, "pvm");
        ADLAYOUT_HEIGHT_ZERO = new <init>("ADLAYOUT_HEIGHT_ZERO", 30, "ahz");
        VIEWPORT_SCALE = new <init>("VIEWPORT_SCALE", 31, "vs");
        AD_FAILED_UNKNOWN_WEBVIEW_ISSUE = new <init>("AD_FAILED_UNKNOWN_WEBVIEW_ISSUE", 32, "fuwi");
        AD_FAILED_NULL_LAYOUT_PARAMS = new <init>("AD_FAILED_NULL_LAYOUT_PARAMS", 33, "fnlp");
        AD_FAILED_LAYOUT_NOT_RUN = new <init>("AD_FAILED_LAYOUT_NOT_RUN", 34, "flnr");
        AD_FAILED_INVALID_AUTO_AD_SIZE = new <init>("AD_FAILED_INVALID_AUTO_AD_SIZE", 35, "faas");
        SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED = new <init>("SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED", 36, "sid");
        SIS_LATENCY_REGISTER = new <init>("SIS_LATENCY_REGISTER", 37, "srl");
        SIS_LATENCY_UPDATE_DEVICE_INFO = new <init>("SIS_LATENCY_UPDATE_DEVICE_INFO", 38, "sul");
        SIS_LATENCY_REGISTER_EVENT = new <init>("SIS_LATENCY_REGISTER_EVENT", 39, "srel");
        CONFIG_DOWNLOAD_ERROR = new <init>("CONFIG_DOWNLOAD_ERROR", 40, "cde");
        CONFIG_DOWNLOAD_LATENCY = new <init>("CONFIG_DOWNLOAD_LATENCY", 41, "cdt");
        CONFIG_PARSE_ERROR = new <init>("CONFIG_PARSE_ERROR", 42, "cpe");
        AAX_CONFIG_DOWNLOAD_LATENCY = new <init>("AAX_CONFIG_DOWNLOAD_LATENCY", 43, "acl");
        AAX_CONFIG_DOWNLOAD_FAILED = new <init>("AAX_CONFIG_DOWNLOAD_FAILED", 44, "acf");
        CUSTOM_RENDER_HANDLED = new <init>("CUSTOM_RENDER_HANDLED", 45, "crh");
        TLS_ENABLED = new <init>("TLS_ENABLED", 46, "tls");
        WIFI_PRESENT = new <init>("WIFI_PRESENT", 47, "wifi");
        CARRIER_NAME = new <init>("CARRIER_NAME", 48, "car");
        CONNECTION_TYPE = new <init>("CONNECTION_TYPE", 49, "ct");
        AD_IS_INTERSTITIAL = new <init>("AD_IS_INTERSTITIAL", 50, "i");
        INTERSTITIAL_AD_ACTIVITY_FAILED = new <init>("INTERSTITIAL_AD_ACTIVITY_FAILED", 51, "iaaf");
        isAdTypeSpecific aisadtypespecific[] = new <init>[52];
        aisadtypespecific[0] = AD_LATENCY_TOTAL;
        aisadtypespecific[1] = AD_LATENCY_TOTAL_SUCCESS;
        aisadtypespecific[2] = AD_LATENCY_TOTAL_FAILURE;
        aisadtypespecific[3] = AD_LOAD_LATENCY_LOADAD_TO_FETCH_THREAD_REQUEST_START;
        aisadtypespecific[4] = AD_LOAD_LATENCY_FETCH_THREAD_SPIN_UP;
        aisadtypespecific[5] = AD_LOAD_LATENCY_FETCH_THREAD_START_TO_AAX_GET_AD_START;
        aisadtypespecific[6] = AD_LOAD_LATENCY_AAX_GET_AD_END_TO_FETCH_THREAD_END;
        aisadtypespecific[7] = AD_LOAD_LATENCY_FINALIZE_FETCH_SPIN_UP;
        aisadtypespecific[8] = AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_RENDER_START;
        aisadtypespecific[9] = AD_LOAD_LATENCY_FINALIZE_FETCH_START_TO_FAILURE;
        aisadtypespecific[10] = AD_LOAD_LATENCY_CREATE_AAX_GET_AD_URL;
        aisadtypespecific[11] = ASSETS_CREATED_LATENCY;
        aisadtypespecific[12] = ASSETS_ENSURED_LATENCY;
        aisadtypespecific[13] = ASSETS_FAILED;
        aisadtypespecific[14] = AD_LOADED_TO_AD_SHOW_TIME;
        aisadtypespecific[15] = AD_SHOW_LATENCY;
        aisadtypespecific[16] = AD_SHOW_DURATION;
        aisadtypespecific[17] = AD_LAYOUT_INITIALIZATION;
        aisadtypespecific[18] = AAX_LATENCY_GET_AD;
        aisadtypespecific[19] = AD_LOAD_FAILED;
        aisadtypespecific[20] = AD_LOAD_FAILED_ON_AAX_CALL_TIMEOUT;
        aisadtypespecific[21] = AD_LOAD_FAILED_ON_PRERENDERING_TIMEOUT;
        aisadtypespecific[22] = AD_COUNTER_IDENTIFIED_DEVICE;
        aisadtypespecific[23] = AD_COUNTER_RENDERING_FATAL;
        aisadtypespecific[24] = AD_LATENCY_RENDER;
        aisadtypespecific[25] = AD_LATENCY_RENDER_FAILED;
        aisadtypespecific[26] = AD_COUNTER_FAILED_DUE_TO_NO_RETRY;
        aisadtypespecific[27] = AD_NO_RETRY_TTL_RECEIVED;
        aisadtypespecific[28] = AD_COUNTER_AUTO_AD_SIZE;
        aisadtypespecific[29] = AD_COUNTER_PARENT_VIEW_MISSING;
        aisadtypespecific[30] = ADLAYOUT_HEIGHT_ZERO;
        aisadtypespecific[31] = VIEWPORT_SCALE;
        aisadtypespecific[32] = AD_FAILED_UNKNOWN_WEBVIEW_ISSUE;
        aisadtypespecific[33] = AD_FAILED_NULL_LAYOUT_PARAMS;
        aisadtypespecific[34] = AD_FAILED_LAYOUT_NOT_RUN;
        aisadtypespecific[35] = AD_FAILED_INVALID_AUTO_AD_SIZE;
        aisadtypespecific[36] = SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED;
        aisadtypespecific[37] = SIS_LATENCY_REGISTER;
        aisadtypespecific[38] = SIS_LATENCY_UPDATE_DEVICE_INFO;
        aisadtypespecific[39] = SIS_LATENCY_REGISTER_EVENT;
        aisadtypespecific[40] = CONFIG_DOWNLOAD_ERROR;
        aisadtypespecific[41] = CONFIG_DOWNLOAD_LATENCY;
        aisadtypespecific[42] = CONFIG_PARSE_ERROR;
        aisadtypespecific[43] = AAX_CONFIG_DOWNLOAD_LATENCY;
        aisadtypespecific[44] = AAX_CONFIG_DOWNLOAD_FAILED;
        aisadtypespecific[45] = CUSTOM_RENDER_HANDLED;
        aisadtypespecific[46] = TLS_ENABLED;
        aisadtypespecific[47] = WIFI_PRESENT;
        aisadtypespecific[48] = CARRIER_NAME;
        aisadtypespecific[49] = CONNECTION_TYPE;
        aisadtypespecific[50] = AD_IS_INTERSTITIAL;
        aisadtypespecific[51] = INTERSTITIAL_AD_ACTIVITY_FAILED;
        $VALUES = aisadtypespecific;
    }

    private (String s, int i, String s1)
    {
        this(s, i, s1, false);
    }

    private <init>(String s, int i, String s1, boolean flag)
    {
        super(s, i);
        aaxName = s1;
        isAdTypeSpecific = flag;
    }
}
