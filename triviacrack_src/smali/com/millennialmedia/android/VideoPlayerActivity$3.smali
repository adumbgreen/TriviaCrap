.class Lcom/millennialmedia/android/VideoPlayerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;->a(Landroid/widget/RelativeLayout;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->n()V

    .line 288
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->f:Z

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(I)V

    .line 297
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->l:Landroid/widget/Button;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->f:Z

    if-nez v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->g()V

    goto :goto_1

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$3;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget v1, v1, Lcom/millennialmedia/android/VideoPlayerActivity;->e:I

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(I)V

    goto :goto_1
.end method
