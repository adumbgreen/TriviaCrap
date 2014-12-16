.class Lcom/millennialmedia/android/VideoPlayerActivity$4;
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
    .line 306
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(Lcom/millennialmedia/android/VideoPlayerActivity;Z)Z

    .line 312
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$4;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->m()V

    .line 314
    :cond_0
    return-void
.end method
