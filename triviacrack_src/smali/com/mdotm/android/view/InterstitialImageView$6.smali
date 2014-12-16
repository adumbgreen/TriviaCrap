.class Lcom/mdotm/android/view/InterstitialImageView$6;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/InterstitialImageView;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/InterstitialImageView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$6;->a:Lcom/mdotm/android/view/InterstitialImageView;

    .line 626
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$6;->a:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->h(Lcom/mdotm/android/view/InterstitialImageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$6;->a:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->h(Lcom/mdotm/android/view/InterstitialImageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 634
    :cond_0
    return-void
.end method
