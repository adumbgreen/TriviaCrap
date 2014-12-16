.class Lcom/mdotm/android/vast/VastInterstitialActivity$5;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/vast/VastInterstitialActivity;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    iput-object p2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->b:Ljava/lang/String;

    .line 397
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->c()V

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 402
    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 401
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 403
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->f(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->a:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->f(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/a;->b()V

    .line 420
    :cond_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open browser on ad click to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
