.class Lcom/millennialmedia/android/Utils$HttpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/millennialmedia/android/Utils$HttpUtils$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/Utils$HttpUtils$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
