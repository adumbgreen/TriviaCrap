.class Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;->isHandlingMMVideo(Landroid/net/Uri;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/VideoPlayerActivity;

.field final synthetic b:Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;->b:Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;

    iput-object p2, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;->a:Lcom/millennialmedia/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoPlayerActivity;->i()V

    .line 142
    return-void
.end method
