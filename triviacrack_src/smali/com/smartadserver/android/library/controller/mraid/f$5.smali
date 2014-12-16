.class Lcom/smartadserver/android/library/controller/mraid/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/controller/mraid/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/mraid/f;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/f;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->q(Lcom/smartadserver/android/library/controller/mraid/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartadserver/android/library/ui/SASVideoView;->getCurrentPosition()I

    move-result v0

    .line 318
    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/mraid/f;->d(Lcom/smartadserver/android/library/controller/mraid/f;)Lcom/smartadserver/android/library/ui/SASVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASVideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/f;->a(Lcom/smartadserver/android/library/controller/mraid/f;I)I

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->r(Lcom/smartadserver/android/library/controller/mraid/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/controller/mraid/f;->b(Lcom/smartadserver/android/library/controller/mraid/f;Z)Z

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/f$5;->a:Lcom/smartadserver/android/library/controller/mraid/f;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/f;->s(Lcom/smartadserver/android/library/controller/mraid/f;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
