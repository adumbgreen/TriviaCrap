.class public Lcom/facebook/ads/internal/AppSiteData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final appLinkUri:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private final fallbackUrl:Ljava/lang/String;

.field private final keyHashes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final marketUri:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/ads/internal/AppSiteData;->packageName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/facebook/ads/internal/AppSiteData;->className:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/facebook/ads/internal/AppSiteData;->appLinkUri:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/facebook/ads/internal/AppSiteData;->keyHashes:Ljava/util/List;

    .line 45
    iput-object p5, p0, Lcom/facebook/ads/internal/AppSiteData;->marketUri:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/facebook/ads/internal/AppSiteData;->fallbackUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/AppSiteData;
    .locals 7
    .parameter

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const-string v0, "package"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v0, "appsite"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v0, "appsite_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    const-string v0, "key_hashes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    if-eqz v5, :cond_1

    .line 84
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 85
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_1
    const-string v0, "market_uri"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    const-string v0, "fallback_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    new-instance v0, Lcom/facebook/ads/internal/AppSiteData;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/internal/AppSiteData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAppLinkUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->appLinkUri:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->fallbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyHashes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->keyHashes:Ljava/util/List;

    return-object v0
.end method

.method public getMarketUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->marketUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/ads/internal/AppSiteData;->packageName:Ljava/lang/String;

    return-object v0
.end method
