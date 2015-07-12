.class public Lcom/facebook/ads/internal/NativeAdDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/internal/AdDataModel;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final adCommand:Landroid/net/Uri;

.field private final body:Ljava/lang/String;

.field private final callToAction:Ljava/lang/String;

.field private clickLogged:Z

.field private final clickReportUrl:Ljava/lang/String;

.field private final detectionStrings:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final icon:Lcom/facebook/ads/NativeAd$Image;

.field private final image:Lcom/facebook/ads/NativeAd$Image;

.field private impressionLogged:Z

.field private final impressionReportUrl:Ljava/lang/String;

.field private final invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

.field private final socialContext:Ljava/lang/String;

.field private final starRating:Lcom/facebook/ads/NativeAd$Rating;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/ads/internal/NativeAdDataModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/NativeAdDataModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Rating;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/NativeAd$Image;",
            "Lcom/facebook/ads/NativeAd$Image;",
            "Lcom/facebook/ads/NativeAd$Rating;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/AdInvalidationBehavior;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->adCommand:Landroid/net/Uri;

    .line 62
    iput-object p2, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->title:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->body:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->callToAction:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->socialContext:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->icon:Lcom/facebook/ads/NativeAd$Image;

    .line 67
    iput-object p7, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->image:Lcom/facebook/ads/NativeAd$Image;

    .line 68
    iput-object p8, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->starRating:Lcom/facebook/ads/NativeAd$Rating;

    .line 69
    iput-object p9, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->impressionReportUrl:Ljava/lang/String;

    .line 70
    iput-object p10, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->clickReportUrl:Ljava/lang/String;

    .line 71
    iput-object p11, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    .line 72
    iput-object p12, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->detectionStrings:Ljava/util/Collection;

    .line 73
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/NativeAdDataModel;
    .locals 14
    .parameter

    .prologue
    const/4 v12, 0x0

    .line 148
    if-nez p0, :cond_0

    .line 174
    :goto_0
    return-object v12

    .line 152
    :cond_0
    const-string v0, "fbad_command"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 154
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    const-string v0, "body"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    const-string v0, "call_to_action"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    const-string v0, "social_context"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    const-string v0, "icon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/NativeAd$Image;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Image;

    move-result-object v6

    .line 159
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/NativeAd$Image;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Image;

    move-result-object v7

    .line 160
    const-string v0, "star_rating"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/NativeAd$Rating;->fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v8

    .line 161
    const-string v0, "impression_report_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 162
    const-string v0, "click_report_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 164
    const-string v0, "invalidation_behavior"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/AdInvalidationBehavior;->fromString(Ljava/lang/String;)Lcom/facebook/ads/internal/AdInvalidationBehavior;

    move-result-object v11

    .line 168
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v13, "detection_strings"

    invoke-virtual {p0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/internal/AdInvalidationUtils;->parseDetectionStrings(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v12

    .line 174
    new-instance v0, Lcom/facebook/ads/internal/NativeAdDataModel;

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/internal/NativeAdDataModel;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Image;Lcom/facebook/ads/NativeAd$Rating;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V

    move-object v12, v0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v12

    goto :goto_1
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->callToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getDetectionStrings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->detectionStrings:Ljava/util/Collection;

    return-object v0
.end method

.method public getIcon()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->icon:Lcom/facebook/ads/NativeAd$Image;

    return-object v0
.end method

.method public getImage()Lcom/facebook/ads/NativeAd$Image;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->image:Lcom/facebook/ads/NativeAd$Image;

    return-object v0
.end method

.method public getInvalidationBehavior()Lcom/facebook/ads/internal/AdInvalidationBehavior;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    return-object v0
.end method

.method public getSocialContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->socialContext:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()Lcom/facebook/ads/NativeAd$Rating;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->starRating:Lcom/facebook/ads/NativeAd$Rating;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 125
    iget-boolean v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->clickLogged:Z

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    const-string v1, "touch"

    invoke-static {p2}, Lcom/facebook/ads/internal/AdUtilities;->jsonEncode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v1, Lcom/facebook/ads/internal/OpenUrlTask;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/OpenUrlTask;-><init>(Ljava/util/Map;)V

    new-array v0, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->clickReportUrl:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/OpenUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    iput-boolean v4, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->clickLogged:Z

    .line 130
    const-string v0, "Click logged"

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/AdUtilities;->displayDebugMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->adCommand:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/action/AdActionFactory;->getAdAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/AdAction;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_1

    .line 135
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/action/AdAction;->execute(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    sget-object v1, Lcom/facebook/ads/internal/NativeAdDataModel;->TAG:Ljava/lang/String;

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->callToAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->callToAction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->icon:Lcom/facebook/ads/NativeAd$Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->image:Lcom/facebook/ads/NativeAd$Image;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logImpression()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 114
    iget-boolean v0, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->impressionLogged:Z

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/facebook/ads/internal/OpenUrlTask;

    invoke-direct {v0}, Lcom/facebook/ads/internal/OpenUrlTask;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->impressionReportUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/OpenUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 116
    iput-boolean v4, p0, Lcom/facebook/ads/internal/NativeAdDataModel;->impressionLogged:Z

    .line 118
    :cond_0
    return-void
.end method
