.class Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/ui/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->getResponseHandler(Lcom/google/ads/mediation/customevent/CustomEventInterstitialListener;)Lcom/smartadserver/android/library/ui/a;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;


# direct methods
.method constructor <init>(Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;->this$0:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    const-string v0, "admob ads"

    const-string v1, "SmartAdsInterstitialContainer - adLoadingCompleted"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;->this$0:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;

    #getter for: Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->access$000(Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2$1;

    invoke-direct {v1, p0}, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2$1;-><init>(Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v1, "SMARTADS"

    const-string v2, "Error calling ShowInterstitialListener onSuccess()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    const-string v0, "admob ads"

    const-string v1, "SmartAdsInterstitialContainer - adLoadingFailed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;->this$0:Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;

    #getter for: Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;->access$000(Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2$2;

    invoke-direct {v1, p0}, Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2$2;-><init>(Lcom/etermax/admob/smartads/SmartAdsInterstitialContainer$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "SMARTADS"

    const-string v2, "Error calling ShowInterstitialListener onFailed()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
