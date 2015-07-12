.class Lcom/mdotm/android/view/InterstitialImageView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/InterstitialImageView;-><init>(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/InterstitialImageView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->a:Lcom/mdotm/android/view/InterstitialImageView;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->a:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->e(Lcom/mdotm/android/view/InterstitialImageView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->a:Lcom/mdotm/android/view/InterstitialImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->a(Lcom/mdotm/android/view/InterstitialImageView;Z)V

    .line 211
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->a:Lcom/mdotm/android/view/InterstitialImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->setClickable(Z)V

    .line 212
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->a:Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView$2;->a:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-virtual {v1}, Lcom/mdotm/android/view/InterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mdotm/android/view/InterstitialImageView;->a(Lcom/mdotm/android/view/InterstitialImageView;Landroid/content/Context;)V

    .line 215
    :cond_0
    return-void
.end method
