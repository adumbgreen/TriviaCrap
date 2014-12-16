.class Lcom/etermax/mopubads/custom/a/a$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/mopubads/custom/a/a$1;->adLoadingFailed(Ljava/lang/Exception;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/mopubads/custom/a/a$1;


# direct methods
.method constructor <init>(Lcom/etermax/mopubads/custom/a/a$1;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/etermax/mopubads/custom/a/a$1$2;->a:Lcom/etermax/mopubads/custom/a/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a$1$2;->a:Lcom/etermax/mopubads/custom/a/a$1;

    iget-object v0, v0, Lcom/etermax/mopubads/custom/a/a$1;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 114
    return-void
.end method
