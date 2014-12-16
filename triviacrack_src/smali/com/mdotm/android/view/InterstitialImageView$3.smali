.class Lcom/mdotm/android/view/InterstitialImageView$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/InterstitialImageView;->a(Lcom/mdotm/android/d/b;Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/view/InterstitialImageView;

.field private final synthetic b:Lcom/mdotm/android/d/b;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView;Lcom/mdotm/android/d/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->a:Lcom/mdotm/android/view/InterstitialImageView;

    iput-object p2, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->b:Lcom/mdotm/android/d/b;

    .line 279
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/view/InterstitialImageView$3;)Lcom/mdotm/android/view/InterstitialImageView;
    .locals 1
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->a:Lcom/mdotm/android/view/InterstitialImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->a:Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->a:Lcom/mdotm/android/view/InterstitialImageView;

    .line 284
    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->b:Lcom/mdotm/android/d/b;

    invoke-virtual {v2}, Lcom/mdotm/android/d/b;->m()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 283
    invoke-static {v1, v2, v3}, Lcom/mdotm/android/view/InterstitialImageView;->a(Lcom/mdotm/android/view/InterstitialImageView;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/mdotm/android/view/InterstitialImageView;->c:Landroid/graphics/Bitmap;

    .line 285
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->a:Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v0, v0, Lcom/mdotm/android/view/InterstitialImageView;->b:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/InterstitialImageView$3$1;

    iget-object v2, p0, Lcom/mdotm/android/view/InterstitialImageView$3;->b:Lcom/mdotm/android/d/b;

    invoke-direct {v1, p0, v2}, Lcom/mdotm/android/view/InterstitialImageView$3$1;-><init>(Lcom/mdotm/android/view/InterstitialImageView$3;Lcom/mdotm/android/d/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    return-void
.end method
