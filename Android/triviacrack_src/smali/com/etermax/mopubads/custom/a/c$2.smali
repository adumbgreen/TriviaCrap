.class Lcom/etermax/mopubads/custom/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/ui/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/mopubads/custom/a/c;->b(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)Lcom/smartadserver/android/library/ui/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/mopubads/custom/a/c;


# direct methods
.method constructor <init>(Lcom/etermax/mopubads/custom/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/etermax/mopubads/custom/a/c$2;->a:Lcom/etermax/mopubads/custom/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
    .locals 3
    .parameter

    .prologue
    .line 109
    const-string v0, "mopub ads"

    const-string v1, "SmartAdsInterstitialContainer - adLoadingCompleted"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c$2;->a:Lcom/etermax/mopubads/custom/a/c;

    invoke-static {v0}, Lcom/etermax/mopubads/custom/a/c;->a(Lcom/etermax/mopubads/custom/a/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/etermax/mopubads/custom/a/c$2$1;

    invoke-direct {v1, p0}, Lcom/etermax/mopubads/custom/a/c$2$1;-><init>(Lcom/etermax/mopubads/custom/a/c$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v1, "mopub ads"

    const-string v2, "Error calling ShowInterstitialListener onSuccess()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 123
    const-string v0, "mopub ads"

    const-string v1, "SmartAdsInterstitialContainer - adLoadingFailed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c$2;->a:Lcom/etermax/mopubads/custom/a/c;

    invoke-static {v0}, Lcom/etermax/mopubads/custom/a/c;->a(Lcom/etermax/mopubads/custom/a/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/etermax/mopubads/custom/a/c$2$2;

    invoke-direct {v1, p0}, Lcom/etermax/mopubads/custom/a/c$2$2;-><init>(Lcom/etermax/mopubads/custom/a/c$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string v1, "mopub ads"

    const-string v2, "Error calling ShowInterstitialListener onFailed()"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
