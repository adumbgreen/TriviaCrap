.class Lcom/etermax/mopubads/custom/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/ui/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/mopubads/custom/a/a;->b(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)Lcom/smartadserver/android/library/ui/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

.field final synthetic b:Lcom/etermax/mopubads/custom/a/a;


# direct methods
.method constructor <init>(Lcom/etermax/mopubads/custom/a/a;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/etermax/mopubads/custom/a/a$1;->b:Lcom/etermax/mopubads/custom/a/a;

    iput-object p2, p0, Lcom/etermax/mopubads/custom/a/a$1;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    const-string v0, "mopub ads"

    const-string v1, "SmartAdsBannerContainer - adLoadingCompleted"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a$1;->b:Lcom/etermax/mopubads/custom/a/a;

    iget-object v0, v0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a$1;->b:Lcom/etermax/mopubads/custom/a/a;

    iget-object v0, v0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    new-instance v1, Lcom/etermax/mopubads/custom/a/a$1$1;

    invoke-direct {v1, p0}, Lcom/etermax/mopubads/custom/a/a$1$1;-><init>(Lcom/etermax/mopubads/custom/a/a$1;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASBannerView;->a(Ljava/lang/Runnable;)V

    .line 105
    :cond_0
    return-void
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    const-string v0, "mopub ads"

    const-string v1, "SmartAdsBannerContainer - adLoadingFailed"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a$1;->b:Lcom/etermax/mopubads/custom/a/a;

    iget-object v0, v0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a$1;->b:Lcom/etermax/mopubads/custom/a/a;

    iget-object v0, v0, Lcom/etermax/mopubads/custom/a/a;->e:Lcom/smartadserver/android/library/SASBannerView;

    new-instance v1, Lcom/etermax/mopubads/custom/a/a$1$2;

    invoke-direct {v1, p0}, Lcom/etermax/mopubads/custom/a/a$1$2;-><init>(Lcom/etermax/mopubads/custom/a/a$1;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASBannerView;->a(Ljava/lang/Runnable;)V

    .line 117
    :cond_0
    return-void
.end method
