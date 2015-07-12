.class public Lcom/millennialmedia/android/MMLog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Lcom/millennialmedia/android/MMLog$LoggingComponent;)V

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->j()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->j()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    return-void
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->j()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->j()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->j()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->j()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->j()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->getLogLevel()I

    move-result v0

    return v0
.end method

.method public static setLogLevel(I)V
    .locals 1
    .parameter

    .prologue
    .line 169
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->j()Lcom/millennialmedia/android/MMLog$LoggingComponent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/MMLog$LoggingComponent;->setLogLevel(I)V

    .line 170
    return-void
.end method
