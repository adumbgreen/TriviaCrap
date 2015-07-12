.class public Lorg/b/e/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lorg/b/e/b/a;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/regex/Pattern;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "\\{([^/]+?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/b/e/b/k;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/b/e/b/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/b/e/b/l;-><init>(Ljava/lang/String;Lorg/b/e/b/k$1;)V

    .line 69
    iput-object p1, p0, Lorg/b/e/b/k;->e:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Lorg/b/e/b/l;->a(Lorg/b/e/b/l;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/b/e/b/k;->c:Ljava/util/List;

    .line 71
    invoke-static {v0}, Lorg/b/e/b/l;->b(Lorg/b/e/b/l;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/b/e/b/k;->d:Ljava/util/regex/Pattern;

    .line 72
    invoke-static {p1}, Lorg/b/e/b/h;->a(Ljava/lang/String;)Lorg/b/e/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/e/b/h;->a()Lorg/b/e/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/b/e/b/k;->b:Lorg/b/e/b/a;

    .line 73
    return-void
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/b/e/b/k;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/net/URI;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lorg/b/e/b/k;->b:Lorg/b/e/b/a;

    invoke-virtual {v0, p1}, Lorg/b/e/b/a;->a(Ljava/util/Map;)Lorg/b/e/b/a;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lorg/b/e/b/a;->h()Lorg/b/e/b/a;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lorg/b/e/b/a;->j()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Ljava/lang/Object;)Ljava/net/URI;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lorg/b/e/b/k;->b:Lorg/b/e/b/a;

    invoke-virtual {v0, p1}, Lorg/b/e/b/a;->a([Ljava/lang/Object;)Lorg/b/e/b/a;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lorg/b/e/b/a;->h()Lorg/b/e/b/a;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lorg/b/e/b/a;->j()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/b/e/b/k;->e:Ljava/lang/String;

    return-object v0
.end method
