.class Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/CachedVideoPlayerActivity;->a(J)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/CachedVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;->a:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;->a:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->m()V

    .line 176
    return-void
.end method
