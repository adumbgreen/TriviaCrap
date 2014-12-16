.class public Lcom/facebook/ads/internal/HtmlAdDataModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/internal/AdDataModel;


# static fields
.field private static final ACTIVATION_COMMAND_KEY:Ljava/lang/String; = "activation_command"

.field private static final DETECTION_STRINGS_KEY:Ljava/lang/String; = "detection_strings"

.field private static final INVALIDATION_BEHAVIOR_KEY:Ljava/lang/String; = "invalidation_behavior"

.field private static final MARKUP_KEY:Ljava/lang/String; = "markup"

.field private static final NATIVE_IMPRESSION_URL:Ljava/lang/String; = "native_impression_report_url"

.field private static final SECONDARY_ACTIVATION_COMMAND_KEY:Ljava/lang/String; = "secondary_activation_command"

.field private static final SECONDARY_MARKUP_KEY:Ljava/lang/String; = "secondary_markup"


# instance fields
.field private final activationCommand:Ljava/lang/String;

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

.field private final invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

.field private final markup:Ljava/lang/String;

.field private final nativeImpressionUrl:Ljava/lang/String;

.field private final secondaryActivationCommand:Ljava/lang/String;

.field private final secondaryMarkup:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V
    .locals 0
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->markup:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->secondaryMarkup:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->activationCommand:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->secondaryActivationCommand:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->nativeImpressionUrl:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    .line 61
    iput-object p7, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->detectionStrings:Ljava/util/Collection;

    .line 62
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/facebook/ads/internal/HtmlAdDataModel;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string v0, "markup"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v0, "activation_command"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    const-string v0, "native_impression_report_url"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    new-instance v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    sget-object v6, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    move-object v4, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/HtmlAdDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static fromIntentExtra(Landroid/content/Intent;)Lcom/facebook/ads/internal/HtmlAdDataModel;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 124
    const-string v0, "markup"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    const-string v0, "activation_command"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    const-string v0, "native_impression_report_url"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    new-instance v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    sget-object v6, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    move-object v4, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/HtmlAdDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/HtmlAdDataModel;
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 131
    if-nez p0, :cond_0

    .line 150
    :goto_0
    return-object v7

    .line 135
    :cond_0
    const-string v0, "markup"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v0, "secondary_markup"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    const-string v0, "activation_command"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    const-string v0, "secondary_activation_command"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    const-string v0, "native_impression_report_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    const-string v0, "invalidation_behavior"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/AdInvalidationBehavior;->fromString(Ljava/lang/String;)Lcom/facebook/ads/internal/AdInvalidationBehavior;

    move-result-object v6

    .line 144
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v8, "detection_strings"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/internal/AdInvalidationUtils;->parseDetectionStrings(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v7

    .line 150
    new-instance v0, Lcom/facebook/ads/internal/HtmlAdDataModel;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/internal/HtmlAdDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/AdInvalidationBehavior;Ljava/util/Collection;)V

    move-object v7, v0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v7

    goto :goto_1
.end method


# virtual methods
.method public addSecondaryToIntentExtra(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    const-string v0, "secondary_markup"

    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->secondaryMarkup:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v0, "secondary_activation_command"

    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->secondaryActivationCommand:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public addToIntentExtra(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    const-string v0, "markup"

    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->markup:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v0, "activation_command"

    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->activationCommand:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v0, "native_impression_report_url"

    iget-object v1, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->nativeImpressionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method public getActivationCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->activationCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getDataModelMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    const-string v1, "markup"

    iget-object v2, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->secondaryMarkup:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "activation_command"

    iget-object v2, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->secondaryActivationCommand:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "native_impression_report_url"

    iget-object v2, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->nativeImpressionUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
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
    .line 87
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->detectionStrings:Ljava/util/Collection;

    return-object v0
.end method

.method public getInvalidationBehavior()Lcom/facebook/ads/internal/AdInvalidationBehavior;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->invalidationBehavior:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    return-object v0
.end method

.method public getMarkup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->markup:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeImpressionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->nativeImpressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSendImpressionCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "facebookAd.sendImpression();"

    return-object v0
.end method

.method public saveToBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string v1, "markup"

    iget-object v2, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->markup:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "native_impression_report_url"

    iget-object v2, p0, Lcom/facebook/ads/internal/HtmlAdDataModel;->nativeImpressionUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-object v0
.end method
