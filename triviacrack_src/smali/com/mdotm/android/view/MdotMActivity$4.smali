.class Lcom/mdotm/android/view/MdotMActivity$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/MdotMActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$4;->a:Lcom/mdotm/android/view/MdotMActivity;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMActivity$4;->b:Ljava/lang/String;

    .line 563
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/view/MdotMActivity$4;)Lcom/mdotm/android/view/MdotMActivity;
    .locals 1
    .parameter

    .prologue
    .line 563
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$4;->a:Lcom/mdotm/android/view/MdotMActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$4;->a:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMActivity;->c()V

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch type is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$4;->a:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMActivity;->d(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mdotm/android/d/b;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$4;->a:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->d(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/d/b;->k()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 572
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$4;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 571
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 573
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$4;->a:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/view/MdotMActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$4;->a:Lcom/mdotm/android/view/MdotMActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mdotm/android/view/MdotMActivity;->b:Z

    .line 595
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$4;->a:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->b(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$4;->a:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->b(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/a;->b()V

    .line 610
    :cond_0
    :goto_1
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open browser on ad click to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$4;->a:Lcom/mdotm/android/view/MdotMActivity;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/MdotMActivity$4$1;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$4;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/mdotm/android/view/MdotMActivity$4$1;-><init>(Lcom/mdotm/android/view/MdotMActivity$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
