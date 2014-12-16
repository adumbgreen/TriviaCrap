.class public final Lcom/millennialmedia/a/a/b/a/m;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/a/a/s",
        "<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/millennialmedia/a/a/t;


# instance fields
.field private final b:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/millennialmedia/a/a/b/a/m$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/m$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/m;->a:Lcom/millennialmedia/a/a/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/m;->b:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/millennialmedia/a/a/d/a;)Ljava/sql/Date;
    .locals 3
    .parameter

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v0, 0x0

    .line 64
    :goto_0
    monitor-exit p0

    return-object v0

    .line 63
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/m;->b:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 64
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_2
    new-instance v1, Lcom/millennialmedia/a/a/q;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p2, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/m;->a(Lcom/millennialmedia/a/a/d/c;Ljava/sql/Date;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/millennialmedia/a/a/d/c;Ljava/sql/Date;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    monitor-enter p0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/m;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/m;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method
