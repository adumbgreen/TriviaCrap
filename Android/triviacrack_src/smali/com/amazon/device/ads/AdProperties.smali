.class public Lcom/amazon/device/ads/AdProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AdProperties"


# instance fields
.field private adType_:Lcom/amazon/device/ads/AdProperties$AdType;

.field private canExpand_:Z

.field private canPlayAudio_:Z

.field private canPlayVideo_:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdProperties;->canExpand_:Z

    .line 20
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdProperties;->canPlayAudio_:Z

    .line 21
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdProperties;->canPlayVideo_:Z

    .line 79
    return-void
.end method

.method constructor <init>(Lorg/json/JSONArray;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdProperties;->canExpand_:Z

    .line 20
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdProperties;->canPlayAudio_:Z

    .line 21
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdProperties;->canPlayVideo_:Z

    .line 90
    if-eqz p1, :cond_0

    move v0, v1

    .line 92
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 92
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :pswitch_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amazon/device/ads/AdProperties;->canPlayAudio_:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 121
    :catch_0
    move-exception v2

    .line 122
    const-string v3, "AdProperties"

    const-string v4, "Unable to parse creative type: %s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 103
    :pswitch_2
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/amazon/device/ads/AdProperties;->canExpand_:Z

    goto :goto_1

    .line 106
    :pswitch_3
    sget-object v2, Lcom/amazon/device/ads/AdProperties$AdType;->IMAGE_BANNER:Lcom/amazon/device/ads/AdProperties$AdType;

    iput-object v2, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;

    goto :goto_1

    .line 109
    :pswitch_4
    sget-object v2, Lcom/amazon/device/ads/AdProperties$AdType;->INTERSTITIAL:Lcom/amazon/device/ads/AdProperties$AdType;

    iput-object v2, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;

    goto :goto_1

    .line 112
    :pswitch_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amazon/device/ads/AdProperties;->canPlayVideo_:Z

    goto :goto_1

    .line 115
    :pswitch_6
    sget-object v2, Lcom/amazon/device/ads/AdProperties$AdType;->MRAID_1:Lcom/amazon/device/ads/AdProperties$AdType;

    iput-object v2, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;

    goto :goto_1

    .line 118
    :pswitch_7
    sget-object v2, Lcom/amazon/device/ads/AdProperties$AdType;->MRAID_2:Lcom/amazon/device/ads/AdProperties$AdType;

    iput-object v2, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 126
    :cond_0
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public canExpand()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdProperties;->canExpand_:Z

    return v0
.end method

.method public canPlayAudio()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdProperties;->canPlayAudio_:Z

    return v0
.end method

.method public canPlayVideo()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdProperties;->canPlayVideo_:Z

    return v0
.end method

.method public getAdType()Lcom/amazon/device/ads/AdProperties$AdType;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;

    return-object v0
.end method

.method setAdType(Lcom/amazon/device/ads/AdProperties$AdType;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/amazon/device/ads/AdProperties;->adType_:Lcom/amazon/device/ads/AdProperties$AdType;

    .line 130
    return-void
.end method

.method setCanExpand(Z)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdProperties;->canExpand_:Z

    .line 143
    return-void
.end method

.method setCanPlayAudio(Z)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdProperties;->canPlayAudio_:Z

    .line 156
    return-void
.end method

.method setCanPlayVideo(Z)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdProperties;->canPlayVideo_:Z

    .line 169
    return-void
.end method
