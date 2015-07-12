.class final Lcom/millennialmedia/android/MMSDK$Event$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMSDK$Event;->a(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/android/MMAdImpl;

.field final synthetic b:Lcom/millennialmedia/android/MMException;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->a:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p2, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->b:Lcom/millennialmedia/android/MMException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->a:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->a:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->c:Lcom/millennialmedia/android/RequestListener;

    if-eqz v0, :cond_0

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->a:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->c:Lcom/millennialmedia/android/RequestListener;

    iget-object v1, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->a:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->d()Lcom/millennialmedia/android/MMAd;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMSDK$Event$7;->b:Lcom/millennialmedia/android/MMException;

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/android/RequestListener;->requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    const-string v1, "MMSDK"

    const-string v2, "Exception raised in your RequestListener: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
