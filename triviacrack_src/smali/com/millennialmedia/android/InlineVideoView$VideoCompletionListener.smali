.class Lcom/millennialmedia/android/InlineVideoView$VideoCompletionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/InlineVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/InlineVideoView;)V
    .locals 1
    .parameter

    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$VideoCompletionListener;->a:Ljava/lang/ref/WeakReference;

    .line 721
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 726
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$VideoCompletionListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/InlineVideoView;

    .line 727
    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/InlineVideoView;->a(Landroid/media/MediaPlayer;)V

    .line 731
    :cond_0
    return-void
.end method
