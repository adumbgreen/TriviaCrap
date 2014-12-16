.class Lcom/smartadserver/android/library/controller/mraid/a$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/mraid/a$2;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/controller/mraid/a$2;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/mraid/a$2;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/mraid/a$2;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->d(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/controller/mraid/b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smartadserver/android/library/controller/mraid/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2;

    iget-boolean v0, v0, Lcom/smartadserver/android/library/controller/mraid/a$2;->b:Z

    if-eqz v0, :cond_2

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/a$2$1$1;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/controller/mraid/a$2$1$1;-><init>(Lcom/smartadserver/android/library/controller/mraid/a$2$1;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->a(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_1
    :goto_0
    return-void

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/mraid/a$2;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 240
    const-string v0, "interstitial"

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2;

    iget-object v1, v1, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-virtual {v1}, Lcom/smartadserver/android/library/controller/mraid/a;->getPlacementType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/mraid/a$2$1;->a:Lcom/smartadserver/android/library/controller/mraid/a$2;

    iget-object v0, v0, Lcom/smartadserver/android/library/controller/mraid/a$2;->c:Lcom/smartadserver/android/library/controller/mraid/a;

    invoke-static {v0}, Lcom/smartadserver/android/library/controller/mraid/a;->a(Lcom/smartadserver/android/library/controller/mraid/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v0

    new-instance v1, Lcom/smartadserver/android/library/controller/mraid/a$2$1$2;

    invoke-direct {v1, p0}, Lcom/smartadserver/android/library/controller/mraid/a$2$1$2;-><init>(Lcom/smartadserver/android/library/controller/mraid/a$2$1;)V

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/ui/SASAdView;->b(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
