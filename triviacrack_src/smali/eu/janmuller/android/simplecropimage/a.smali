.class public Leu/janmuller/android/simplecropimage/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Leu/janmuller/android/simplecropimage/a;


# instance fields
.field private final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Leu/janmuller/android/simplecropimage/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Leu/janmuller/android/simplecropimage/a;->b:Leu/janmuller/android/simplecropimage/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Leu/janmuller/android/simplecropimage/a;->a:Ljava/util/WeakHashMap;

    .line 97
    return-void
.end method

.method public static declared-synchronized a()Leu/janmuller/android/simplecropimage/a;
    .locals 2

    .prologue
    .line 198
    const-class v1, Leu/janmuller/android/simplecropimage/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Leu/janmuller/android/simplecropimage/a;->b:Leu/janmuller/android/simplecropimage/a;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Leu/janmuller/android/simplecropimage/a;

    invoke-direct {v0}, Leu/janmuller/android/simplecropimage/a;-><init>()V

    sput-object v0, Leu/janmuller/android/simplecropimage/a;->b:Leu/janmuller/android/simplecropimage/a;

    .line 201
    :cond_0
    sget-object v0, Leu/janmuller/android/simplecropimage/a;->b:Leu/janmuller/android/simplecropimage/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Thread;)Leu/janmuller/android/simplecropimage/d;
    .locals 2
    .parameter

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/janmuller/android/simplecropimage/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/janmuller/android/simplecropimage/d;

    .line 105
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Leu/janmuller/android/simplecropimage/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/janmuller/android/simplecropimage/d;-><init>(Leu/janmuller/android/simplecropimage/a$1;)V

    .line 107
    iget-object v1, p0, Leu/janmuller/android/simplecropimage/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Leu/janmuller/android/simplecropimage/c;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Leu/janmuller/android/simplecropimage/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 147
    invoke-virtual {p0, v0}, Leu/janmuller/android/simplecropimage/a;->a(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 149
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/Thread;)V
    .locals 2
    .parameter

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Leu/janmuller/android/simplecropimage/a;->b(Ljava/lang/Thread;)Leu/janmuller/android/simplecropimage/d;

    move-result-object v0

    .line 174
    sget-object v1, Leu/janmuller/android/simplecropimage/b;->a:Leu/janmuller/android/simplecropimage/b;

    iput-object v1, v0, Leu/janmuller/android/simplecropimage/d;->a:Leu/janmuller/android/simplecropimage/b;

    .line 175
    iget-object v1, v0, Leu/janmuller/android/simplecropimage/d;->b:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_0

    .line 176
    iget-object v0, v0, Leu/janmuller/android/simplecropimage/d;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 180
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
