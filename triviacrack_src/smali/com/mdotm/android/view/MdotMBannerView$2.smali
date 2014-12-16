.class Lcom/mdotm/android/view/MdotMBannerView$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMBannerView;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/MdotMBannerView;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMBannerView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->a:Lcom/mdotm/android/view/MdotMBannerView;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->b:Ljava/lang/String;

    .line 593
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/view/MdotMBannerView$2;)Lcom/mdotm/android/view/MdotMBannerView;
    .locals 1
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->a:Lcom/mdotm/android/view/MdotMBannerView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 597
    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destination url is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->a:Lcom/mdotm/android/view/MdotMBannerView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->d(Lcom/mdotm/android/view/MdotMBannerView;)Lcom/mdotm/android/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/c;->c()V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch type is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->a:Lcom/mdotm/android/view/MdotMBannerView;

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMBannerView;->f(Lcom/mdotm/android/view/MdotMBannerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->a:Lcom/mdotm/android/view/MdotMBannerView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->f(Lcom/mdotm/android/view/MdotMBannerView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 605
    new-instance v0, Landroid/content/Intent;

    .line 606
    const-string v1, "android.intent.action.VIEW"

    .line 607
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 605
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 608
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 609
    const-string v1, "BannerAd"

    const-string v2, "clicked and new flag activity created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :try_start_0
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->a:Lcom/mdotm/android/view/MdotMBannerView;

    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->a:Lcom/mdotm/android/view/MdotMBannerView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->d(Lcom/mdotm/android/view/MdotMBannerView;)Lcom/mdotm/android/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/c;->d()V

    .line 624
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->a:Lcom/mdotm/android/view/MdotMBannerView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMBannerView;->b(Lcom/mdotm/android/view/MdotMBannerView;)V

    .line 638
    :goto_1
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open browser on ad click to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->a:Lcom/mdotm/android/view/MdotMBannerView;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMBannerView;->c:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/MdotMBannerView$2$1;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMBannerView$2;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/mdotm/android/view/MdotMBannerView$2$1;-><init>(Lcom/mdotm/android/view/MdotMBannerView$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
