.class Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;->context:Landroid/content/Context;

    .line 403
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 408
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/amazon/device/ads/WebUtils;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    .line 409
    const/4 v0, 0x1

    return v0
.end method
