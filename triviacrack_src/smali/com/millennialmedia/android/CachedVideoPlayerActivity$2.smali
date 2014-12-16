.class Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/CachedVideoPlayerActivity;->b()Landroid/widget/RelativeLayout;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Lcom/millennialmedia/android/VideoImage;

.field final synthetic c:Lcom/millennialmedia/android/CachedVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Landroid/widget/ImageButton;Lcom/millennialmedia/android/VideoImage;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->c:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    iput-object p2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->a:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->b:Lcom/millennialmedia/android/VideoImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->a:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->c:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->h:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->b:Lcom/millennialmedia/android/VideoImage;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->d:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->c:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->b:Lcom/millennialmedia/android/VideoImage;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->e(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->c:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;->b:Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(Lcom/millennialmedia/android/VideoImage;)V

    .line 321
    return-void
.end method
