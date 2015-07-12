.class public Lcom/facebook/ads/NativeAd$Image;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final height:I

.field private final url:Ljava/lang/String;

.field private final width:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/facebook/ads/NativeAd$Image;->url:Ljava/lang/String;

    .line 71
    iput p2, p0, Lcom/facebook/ads/NativeAd$Image;->width:I

    .line 72
    iput p3, p0, Lcom/facebook/ads/NativeAd$Image;->height:I

    .line 73
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Image;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 105
    if-nez p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :cond_1
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    .line 113
    const-string v0, "width"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 114
    const-string v0, "height"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 115
    new-instance v0, Lcom/facebook/ads/NativeAd$Image;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/NativeAd$Image;-><init>(Ljava/lang/String;II)V

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/facebook/ads/NativeAd$Image;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/ads/NativeAd$Image;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/facebook/ads/NativeAd$Image;->width:I

    return v0
.end method
