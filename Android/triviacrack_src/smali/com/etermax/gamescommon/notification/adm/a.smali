.class public Lcom/etermax/gamescommon/notification/adm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/notification/c;


# instance fields
.field private a:Lcom/etermax/gamescommon/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/notification/adm/a;->a:Lcom/etermax/gamescommon/e;

    .line 23
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-static {p1}, Lcom/amazon/device/messaging/development/ADMManifest;->checkManifestAuthoredProperly(Landroid/content/Context;)V

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "api_key.txt"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing Amazon api key defined in assets/api_key.txt"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing Amazon api key defined in assets/api_key.txt"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/adm/a;->a:Lcom/etermax/gamescommon/e;

    const-string v1, "amazon_registration_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/etermax/gamescommon/login/datasource/c;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v0, p1}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/notification/adm/a;->b(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 36
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/etermax/gamescommon/notification/adm/a;->a:Lcom/etermax/gamescommon/e;

    const-string v2, "amazon_registration_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/etermax/gamescommon/login/datasource/c;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    if-eqz p2, :cond_1

    .line 65
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v0, p1}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/etermax/gamescommon/notification/adm/a;->a:Lcom/etermax/gamescommon/e;

    const-string v2, "amazon_registration_id"

    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/notification/adm/a;->a:Lcom/etermax/gamescommon/e;

    const-string v1, "amazon_registration_id"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
