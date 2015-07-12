.class Lcom/millennialmedia/android/MMLog$LoggingComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/millennialmedia/android/MMLog$LogHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x4

    sput v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->b:Lcom/millennialmedia/android/MMLog$LogHandler;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->b:Lcom/millennialmedia/android/MMLog$LogHandler;

    invoke-interface {v0, p1}, Lcom/millennialmedia/android/MMLog$LogHandler;->handleLog(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMSDK-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a(Ljava/lang/String;)V

    .line 141
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a:I

    return v0
.end method

.method public setLogLevel(I)V
    .locals 0
    .parameter

    .prologue
    .line 30
    sput p1, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a:I

    .line 31
    return-void
.end method
