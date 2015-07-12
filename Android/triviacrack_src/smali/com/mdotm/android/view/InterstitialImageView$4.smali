.class Lcom/mdotm/android/view/InterstitialImageView$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/InterstitialImageView;->a(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/InterstitialImageView;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->a:Lcom/mdotm/android/view/InterstitialImageView;

    iput-object p2, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->b:Ljava/lang/String;

    .line 549
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/view/InterstitialImageView$4;)Lcom/mdotm/android/view/InterstitialImageView;
    .locals 1
    .parameter

    .prologue
    .line 549
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->a:Lcom/mdotm/android/view/InterstitialImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 553
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->a:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->d(Lcom/mdotm/android/view/InterstitialImageView;)Lcom/mdotm/android/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/c;->c()V

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch type is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->a:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v1}, Lcom/mdotm/android/view/InterstitialImageView;->g(Lcom/mdotm/android/view/InterstitialImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->a:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->g(Lcom/mdotm/android/view/InterstitialImageView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 562
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 563
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 562
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 564
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 568
    :try_start_1
    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->a:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-virtual {v1}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 577
    :goto_1
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->a:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->d(Lcom/mdotm/android/view/InterstitialImageView;)Lcom/mdotm/android/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/c;->d()V

    .line 578
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->a:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->b(Lcom/mdotm/android/view/InterstitialImageView;)V

    .line 591
    :goto_2
    return-void

    .line 554
    :catch_0
    move-exception v0

    .line 556
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 570
    :catch_1
    move-exception v0

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open browser on ad click to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->a:Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v0, v0, Lcom/mdotm/android/view/InterstitialImageView;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/InterstitialImageView$4$1;

    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView$4;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/mdotm/android/view/InterstitialImageView$4$1;-><init>(Lcom/mdotm/android/view/InterstitialImageView$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
