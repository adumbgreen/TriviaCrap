.class public abstract Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lifestreet/android/lsmsdk/SlotResponse;


# static fields
.field public static final PROPERTY_ADS_PARAMS:Ljava/lang/String; = "adsParams"

.field public static final PROPERTY_AD_TYPE:Ljava/lang/String; = "AdType"

.field public static final PROPERTY_CLICK_URL:Ljava/lang/String; = "ClickUrl"

.field public static final PROPERTY_IMPRESSION_URL:Ljava/lang/String; = "ImpressionUrl"

.field public static final PROPERTY_NETWORKS:Ljava/lang/String; = "networks"

.field public static final PROPERTY_NETWORK_TYPE:Ljava/lang/String; = "NetworkType"

.field public static final PROPERTY_NO_BID_URL:Ljava/lang/String; = "NobidUrl"

.field public static final PROPERTY_PARAMETERS:Ljava/lang/String; = "Parameters"

.field public static final PROPERTY_REFRESH_RATE:Ljava/lang/String; = "RefreshRate"

.field public static final PROPERTY_TRANSITION_ANIMATION:Ljava/lang/String; = "TransitionAnimation"

.field private static final sResponseTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lifestreet/android/lsmsdk/SlotResponse;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAdsParams:Lcom/lifestreet/android/lsmsdk/AdsParams;

.field private mNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lifestreet/android/lsmsdk/AdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->sResponseTypeMap:Ljava/util/Map;

    .line 37
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->sResponseTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;->JSON:Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    const-class v2, Lcom/lifestreet/android/lsmsdk/SlotJsonResponse;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->sResponseTypeMap:Ljava/util/Map;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;->HTML:Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    const-class v2, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/SlotContext;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    .line 51
    return-void
.end method

.method private getAdType(Ljava/util/Map;)Lcom/lifestreet/android/lsmsdk/AdType;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lifestreet/android/lsmsdk/AdType;"
        }
    .end annotation

    .prologue
    .line 156
    sget-object v1, Lcom/lifestreet/android/lsmsdk/AdType;->DEFAULT:Lcom/lifestreet/android/lsmsdk/AdType;

    .line 158
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getSlotType()Lcom/lifestreet/android/lsmsdk/SlotType;

    move-result-object v0

    sget-object v2, Lcom/lifestreet/android/lsmsdk/SlotType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/SlotType;

    if-ne v0, v2, :cond_0

    .line 159
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AdType;->INTERSTITIAL:Lcom/lifestreet/android/lsmsdk/AdType;

    .line 177
    :goto_0
    return-object v0

    .line 161
    :cond_0
    const-string v0, "AdType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    if-eqz v0, :cond_2

    .line 163
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/AdType;->doesNotExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNKNOWN_AD_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown ad type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v1, v2, v0, v3}, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v1

    .line 170
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/AdType;->valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;

    const-string v1, "Invalid AdType value"

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private getRefreshRate(Ljava/util/Map;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 138
    const-string v0, "RefreshRate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    const/16 v0, 0x12c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 151
    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;

    const-string v1, "Invalid RefreshRate value"

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0
.end method

.method private static getResponseType(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;
    .locals 2
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    if-eqz p0, :cond_0

    .line 87
    const-string v1, "json"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;->JSON:Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    const-string v1, "html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    sget-object v0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;->HTML:Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    goto :goto_0
.end method

.method private getTransitionAnimation(Ljava/util/Map;)Lcom/lifestreet/android/lsmsdk/TransitionAnimation;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lifestreet/android/lsmsdk/TransitionAnimation;"
        }
    .end annotation

    .prologue
    .line 182
    sget-object v1, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->DEFAULT:Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    .line 184
    const-string v0, "TransitionAnimation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    if-eqz v0, :cond_1

    .line 186
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->doesNotExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown transition animation type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v1, v0, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v1

    .line 193
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/TransitionAnimation;->valueOf(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/TransitionAnimation;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;

    const-string v1, "Invalid TransitionAnimation value"

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    invoke-direct {v0, v1, v2}, Lcom/lifestreet/android/lsmsdk/exceptions/InvalidNetworkParameterException;-><init>(Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static newInstance(Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/String;Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/SlotResponse;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 56
    :cond_0
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->EMPTY_RESPONSE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    const-string v2, "Empty response"

    invoke-direct {v0, v1, v2, p0}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 59
    :cond_1
    invoke-static {p2}, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->getResponseType(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse$ResponseType;

    move-result-object v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    new-instance v0, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;

    sget-object v1, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNKNOWN_CONTENT_TYPE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Content-Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v0

    .line 67
    :cond_2
    sget-object v1, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->sResponseTypeMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 70
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/lifestreet/android/lsmsdk/SlotContext;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 72
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lifestreet/android/lsmsdk/SlotResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    invoke-interface {v0}, Lcom/lifestreet/android/lsmsdk/SlotResponse;->parse()V

    .line 80
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;

    sget-object v2, Lcom/lifestreet/android/lsmsdk/ErrorCode;->EMPTY_RESPONSE:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error instantiating SlotResponse class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotResponseException;-><init>(Lcom/lifestreet/android/lsmsdk/ErrorCode;Ljava/lang/String;Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    throw v1
.end method


# virtual methods
.method protected createNetworkInstanceFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Lcom/lifestreet/android/lsmsdk/AdNetwork;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lifestreet/android/lsmsdk/AdNetwork;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->getAdType(Ljava/util/Map;)Lcom/lifestreet/android/lsmsdk/AdType;

    move-result-object v3

    .line 122
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->getTransitionAnimation(Ljava/util/Map;)Lcom/lifestreet/android/lsmsdk/TransitionAnimation;

    move-result-object v4

    .line 124
    const-string v0, "ClickUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    const-string v1, "NobidUrl"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    const-string v2, "ImpressionUrl"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->getRefreshRate(Ljava/util/Map;)I

    move-result v5

    .line 130
    new-instance v6, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;

    invoke-direct {v6}, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;-><init>()V

    invoke-virtual {v6, p2}, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->networkType(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->adType(Lcom/lifestreet/android/lsmsdk/AdType;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->transitionAnimation(Lcom/lifestreet/android/lsmsdk/TransitionAnimation;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->impressionUrl(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->noBidUrl(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->clickUrl(Ljava/lang/String;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->parameters(Ljava/util/Map;)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->refreshRate(I)Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/AdNetworkBuilder;->build()Lcom/lifestreet/android/lsmsdk/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getAdsParams()Lcom/lifestreet/android/lsmsdk/AdsParams;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mAdsParams:Lcom/lifestreet/android/lsmsdk/AdsParams;

    return-object v0
.end method

.method public getNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lifestreet/android/lsmsdk/AdNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mNetworks:Ljava/util/List;

    return-object v0
.end method

.method protected getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mSlotContext:Lcom/lifestreet/android/lsmsdk/SlotContext;

    return-object v0
.end method

.method protected setAdsParams(Lcom/lifestreet/android/lsmsdk/AdsParams;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mAdsParams:Lcom/lifestreet/android/lsmsdk/AdsParams;

    .line 113
    return-void
.end method

.method protected setNetworks(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lifestreet/android/lsmsdk/AdNetwork;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;->mNetworks:Ljava/util/List;

    .line 104
    return-void
.end method
