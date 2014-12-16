.class final Lcom/millennialmedia/android/MMConversionTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMConversionTracker;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/MMRequest;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/lang/String;ZJLjava/util/TreeMap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->b:Z

    iput-wide p3, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->c:J

    iput-object p5, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->d:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 102
    new-instance v0, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->b:Z

    iget-wide v3, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->c:J

    iget-object v5, p0, Lcom/millennialmedia/android/MMConversionTracker$1;->d:Ljava/util/TreeMap;

    invoke-virtual/range {v0 .. v5}, Lcom/millennialmedia/android/HttpGetRequest;->a(Ljava/lang/String;ZJLjava/util/TreeMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "MMConversionTracker"

    const-string v2, "Problem doing conversion tracking."

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
