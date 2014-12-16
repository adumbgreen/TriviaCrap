.class Lcom/etermax/mopubads/custom/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/ui/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/mopubads/custom/a/c;->b(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)Lcom/smartadserver/android/library/ui/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field final synthetic b:Lcom/etermax/mopubads/custom/a/c;


# direct methods
.method constructor <init>(Lcom/etermax/mopubads/custom/a/c;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/etermax/mopubads/custom/a/c$1;->b:Lcom/etermax/mopubads/custom/a/c;

    iput-object p2, p0, Lcom/etermax/mopubads/custom/a/c$1;->a:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/smartadserver/android/library/ui/d;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/c$1;->b:Lcom/etermax/mopubads/custom/a/c;

    iget-object v0, v0, Lcom/etermax/mopubads/custom/a/c;->e:Lcom/smartadserver/android/library/SASInterstitialView;

    new-instance v1, Lcom/etermax/mopubads/custom/a/c$1$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/mopubads/custom/a/c$1$1;-><init>(Lcom/etermax/mopubads/custom/a/c$1;Lcom/smartadserver/android/library/ui/d;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/SASInterstitialView;->a(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method
