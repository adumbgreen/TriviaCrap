.class Lcom/smartadserver/android/library/ui/SASAdView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/SASAdView;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/smartadserver/android/library/ui/SASAdView;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 691
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->setEnableStateChangeEvent(Z)V

    .line 692
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->k:Lcom/smartadserver/android/library/ui/g;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/g;->setInAppBrowserMode(Z)V

    .line 693
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/a;->expand(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    invoke-virtual {v0, v2}, Lcom/smartadserver/android/library/ui/SASAdView;->setEnableStateChangeEvent(Z)V

    .line 695
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$5;->b:Lcom/smartadserver/android/library/ui/SASAdView;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/SASAdView;->g:Lcom/smartadserver/android/library/controller/a;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/a;->c:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->b()V

    .line 696
    return-void
.end method
