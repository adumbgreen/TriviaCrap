.class Lcom/millennialmedia/android/ComponentRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/ExampleComponent;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMBanner;",
            ">;"
        }
    .end annotation
.end field

.field static c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMCachedVideo;",
            ">;"
        }
    .end annotation
.end field

.field static d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMCalendar;",
            ">;"
        }
    .end annotation
.end field

.field static e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMDevice;",
            ">;"
        }
    .end annotation
.end field

.field static f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMInlineVideo;",
            ">;"
        }
    .end annotation
.end field

.field static g:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field static h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMMedia;",
            ">;"
        }
    .end annotation
.end field

.field static i:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMNotification;",
            ">;"
        }
    .end annotation
.end field

.field static j:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMSpeechkit;",
            ">;"
        }
    .end annotation
.end field

.field static k:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/MMLog$LoggingComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->a:Ljava/util/Stack;

    .line 28
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->b:Ljava/util/Stack;

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->c:Ljava/util/Stack;

    .line 30
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->d:Ljava/util/Stack;

    .line 31
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->e:Ljava/util/Stack;

    .line 32
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->f:Ljava/util/Stack;

    .line 33
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->g:Ljava/util/Stack;

    .line 34
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->h:Ljava/util/Stack;

    .line 35
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->i:Ljava/util/Stack;

    .line 36
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->j:Ljava/util/Stack;

    .line 37
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->k:Ljava/util/Stack;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/millennialmedia/android/BridgeMMBanner;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->b:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMBanner;

    return-object v0
.end method

.method private static a(Ljava/util/Stack;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Stack",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Lcom/millennialmedia/android/BridgeMMBanner;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->b:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method static a(Lcom/millennialmedia/android/BridgeMMCachedVideo;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->c:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method static a(Lcom/millennialmedia/android/BridgeMMCalendar;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->d:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method static a(Lcom/millennialmedia/android/BridgeMMDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->e:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method static a(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->f:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method static a(Lcom/millennialmedia/android/BridgeMMInterstitial;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->g:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method static a(Lcom/millennialmedia/android/BridgeMMMedia;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->h:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method static a(Lcom/millennialmedia/android/BridgeMMNotification;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->i:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method static a(Lcom/millennialmedia/android/BridgeMMSpeechkit;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->j:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method static a(Lcom/millennialmedia/android/MMLog$LoggingComponent;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->k:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method static b()Lcom/millennialmedia/android/BridgeMMCachedVideo;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->c:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMCachedVideo;

    return-object v0
.end method

.method static c()Lcom/millennialmedia/android/BridgeMMCalendar;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->d:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMCalendar;

    return-object v0
.end method

.method static d()Lcom/millennialmedia/android/BridgeMMDevice;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->e:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMDevice;

    return-object v0
.end method

.method static e()Lcom/millennialmedia/android/BridgeMMInlineVideo;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->f:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMInlineVideo;

    return-object v0
.end method

.method static f()Lcom/millennialmedia/android/BridgeMMInterstitial;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->g:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMInterstitial;

    return-object v0
.end method

.method static g()Lcom/millennialmedia/android/BridgeMMMedia;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->h:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMMedia;

    return-object v0
.end method

.method static h()Lcom/millennialmedia/android/BridgeMMNotification;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->i:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMNotification;

    return-object v0
.end method

.method static i()Lcom/millennialmedia/android/BridgeMMSpeechkit;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->j:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMSpeechkit;

    return-object v0
.end method

.method static j()Lcom/millennialmedia/android/MMLog$LoggingComponent;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->k:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->a(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;

    return-object v0
.end method
