.class Lcom/smartadserver/android/library/controller/mraid/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/a;->a(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/mraid/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/a;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a$4;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$4;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->setEnableStateChangeEvent(Z)V

    .line 403
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$4;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->resize()V

    .line 404
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$4;->a:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->setEnableStateChangeEvent(Z)V

    .line 405
    return-void
.end method
