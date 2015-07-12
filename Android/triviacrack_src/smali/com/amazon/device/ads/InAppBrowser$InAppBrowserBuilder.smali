.class public Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private showOpenExternalBrowserButton:Z

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 436
    const-class v0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 5

    .prologue
    .line 480
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Url must not be null or white space"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_1
    invoke-static {}, Lcom/amazon/device/ads/Assets;->getInstance()Lcom/amazon/device/ads/Assets;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/Assets;->ensureAssetsCreated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 491
    sget-object v0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->LOGTAG:Ljava/lang/String;

    const-string v1, "Could not load application assets, failed to open URI: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->url:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    :goto_0
    return-void

    .line 495
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->context:Landroid/content/Context;

    const-class v2, Lcom/amazon/device/ads/AdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 496
    const-string v1, "adapter"

    const-class v2, Lcom/amazon/device/ads/InAppBrowser;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v1, "extra_url"

    iget-object v2, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v1, "extra_open_btn"

    iget-boolean v2, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->showOpenExternalBrowserButton:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public withContext(Landroid/content/Context;)Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->context:Landroid/content/Context;

    .line 450
    return-object p0
.end method

.method public withExternalBrowserButton()Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->showOpenExternalBrowserButton:Z

    .line 471
    return-object p0
.end method

.method public withUrl(Ljava/lang/String;)Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->url:Ljava/lang/String;

    .line 461
    return-object p0
.end method
