.class Lorg/b/c/a/m;
.super Lorg/b/c/a/a;
.source "SourceFile"


# instance fields
.field private final a:Lorg/b/c/a/g;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/b/c/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lorg/b/c/f;

.field private d:Ljava/net/URI;


# direct methods
.method protected constructor <init>(Lorg/b/c/a/g;Ljava/util/List;Ljava/net/URI;Lorg/b/c/f;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c/a/g;",
            "Ljava/util/List",
            "<",
            "Lorg/b/c/a/h;",
            ">;",
            "Ljava/net/URI;",
            "Lorg/b/c/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/b/c/a/a;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/b/c/a/m;->a:Lorg/b/c/a/g;

    .line 50
    iput-object p2, p0, Lorg/b/c/a/m;->b:Ljava/util/List;

    .line 51
    iput-object p4, p0, Lorg/b/c/a/m;->c:Lorg/b/c/f;

    .line 52
    iput-object p3, p0, Lorg/b/c/a/m;->d:Ljava/net/URI;

    .line 53
    return-void
.end method

.method static synthetic a(Lorg/b/c/a/m;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lorg/b/c/a/m;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lorg/b/c/a/m;)Lorg/b/c/a/g;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lorg/b/c/a/m;->a:Lorg/b/c/a/g;

    return-object v0
.end method


# virtual methods
.method protected final a(Lorg/b/c/c;[B)Lorg/b/c/a/i;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Lorg/b/c/a/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/b/c/a/n;-><init>(Lorg/b/c/a/m;Lorg/b/c/a/m$1;)V

    .line 67
    invoke-virtual {v0, p0, p2}, Lorg/b/c/a/n;->a(Lorg/b/c/h;[B)Lorg/b/c/a/i;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/b/c/f;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/b/c/a/m;->c:Lorg/b/c/f;

    return-object v0
.end method

.method public c()Ljava/net/URI;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/b/c/a/m;->d:Ljava/net/URI;

    return-object v0
.end method
