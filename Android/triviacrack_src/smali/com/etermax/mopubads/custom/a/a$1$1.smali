.class Lcom/etermax/mopubads/custom/a/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/mopubads/custom/a/a$1;->adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/mopubads/custom/a/a$1;


# direct methods
.method constructor <init>(Lcom/etermax/mopubads/custom/a/a$1;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/etermax/mopubads/custom/a/a$1$1;->a:Lcom/etermax/mopubads/custom/a/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/etermax/mopubads/custom/a/a$1$1;->a:Lcom/etermax/mopubads/custom/a/a$1;

    iget-object v0, v0, Lcom/etermax/mopubads/custom/a/a$1;->a:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    iget-object v1, p0, Lcom/etermax/mopubads/custom/a/a$1$1;->a:Lcom/etermax/mopubads/custom/a/a$1;

    iget-object v1, v1, Lcom/etermax/mopubads/custom/a/a$1;->b:Lcom/etermax/mopubads/custom/a/a;

    iget-object v1, v1, Lcom/etermax/mopubads/custom/a/a;->f:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 102
    return-void
.end method
