.class Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->i()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->b:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->b:Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->a:Lcom/millennialmedia/android/MMAdView;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 445
    return-void
.end method
