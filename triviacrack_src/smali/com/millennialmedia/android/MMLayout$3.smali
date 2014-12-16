.class Lcom/millennialmedia/android/MMLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMLayout;->a(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

.field final synthetic b:Lcom/millennialmedia/android/MMLayout;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMLayout;Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/millennialmedia/android/MMLayout$3;->b:Lcom/millennialmedia/android/MMLayout;

    iput-object p2, p0, Lcom/millennialmedia/android/MMLayout$3;->a:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$3;->b:Lcom/millennialmedia/android/MMLayout;

    iget-object v0, v0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$3;->b:Lcom/millennialmedia/android/MMLayout;

    iget-object v0, v0, Lcom/millennialmedia/android/MMLayout;->m:Lcom/millennialmedia/android/InlineVideoView;

    iget-object v1, p0, Lcom/millennialmedia/android/MMLayout$3;->a:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->c(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)Z

    .line 559
    :cond_0
    return-void
.end method
