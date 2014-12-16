.class public final Lcom/millennialmedia/a/a/b/a/d;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/a/a/s",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/millennialmedia/a/a/t;


# instance fields
.field private final b:Ljava/text/DateFormat;

.field private final c:Ljava/text/DateFormat;

.field private final d:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/millennialmedia/a/a/b/a/d$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/d$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/d;->a:Lcom/millennialmedia/a/a/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    .line 56
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->b:Ljava/text/DateFormat;

    .line 58
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->c:Ljava/text/DateFormat;

    .line 60
    invoke-static {}, Lcom/millennialmedia/a/a/b/a/d;->a()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->d:Ljava/text/DateFormat;

    return-void
.end method

.method private static a()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 66
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 67
    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .parameter

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->c:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    monitor-exit p0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 91
    :try_start_2
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->d:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 92
    :catch_2
    move-exception v0

    .line 93
    :try_start_3
    new-instance v1, Lcom/millennialmedia/a/a/q;

    invoke-direct {v1, p1, v0}, Lcom/millennialmedia/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Date;
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/d;->a(Lcom/millennialmedia/a/a/d/c;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/millennialmedia/a/a/d/c;Ljava/util/Date;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    monitor-enter p0

    if-nez p2, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/d;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/d;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
