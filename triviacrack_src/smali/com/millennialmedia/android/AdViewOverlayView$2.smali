.class Lcom/millennialmedia/android/AdViewOverlayView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/AdViewOverlayView;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$2;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$2;->a:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->c()V

    .line 397
    return-void
.end method
