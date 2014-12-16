.class public abstract Lcom/etermax/admob/custom/BaseAdEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected appVersion:Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;

.field protected minAppVersionSupported:Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;

.field protected serverParameter:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method protected adAvailable()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/etermax/admob/custom/BaseAdEvent;->appVersion:Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;

    iget-object v1, p0, Lcom/etermax/admob/custom/BaseAdEvent;->minAppVersionSupported:Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;

    invoke-virtual {v0, v1}, Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;->compareTo(Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAdData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lcom/etermax/admob/custom/BaseAdEvent;->serverParameter:Lorg/json/JSONObject;

    const-string v2, "d"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/etermax/admob/custom/BaseAdEvent;->serverParameter:Lorg/json/JSONObject;

    const-string v2, "d"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    const-string v2, "ADMOB"

    const-string v3, "BaseAdEvent Exception"

    invoke-static {v2, v3, v1}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/etermax/admob/custom/BaseAdEvent;->serverParameter:Lorg/json/JSONObject;

    .line 76
    new-instance v0, Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;

    iget-object v1, p0, Lcom/etermax/admob/custom/BaseAdEvent;->serverParameter:Lorg/json/JSONObject;

    const-string v2, "v"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;-><init>(Lcom/etermax/admob/custom/BaseAdEvent;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/etermax/admob/custom/BaseAdEvent;->minAppVersionSupported:Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    invoke-static {p1}, Lcom/etermax/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "RC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 84
    if-lez v1, :cond_1

    .line 85
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    :goto_1
    new-instance v1, Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;

    invoke-direct {v1, p0, v0}, Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;-><init>(Lcom/etermax/admob/custom/BaseAdEvent;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/etermax/admob/custom/BaseAdEvent;->appVersion:Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;

    .line 94
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "ADMOB"

    const-string v2, "BaseAdEvent Exception"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    new-instance v0, Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;

    const-string v1, "0"

    invoke-direct {v0, p0, v1}, Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;-><init>(Lcom/etermax/admob/custom/BaseAdEvent;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/etermax/admob/custom/BaseAdEvent;->minAppVersionSupported:Lcom/etermax/admob/custom/BaseAdEvent$AppVersion;

    goto :goto_0

    .line 87
    :cond_1
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 88
    if-lez v1, :cond_0

    .line 89
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
