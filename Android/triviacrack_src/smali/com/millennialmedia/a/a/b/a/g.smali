.class public final Lcom/millennialmedia/a/a/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/t;


# instance fields
.field private final a:Lcom/millennialmedia/a/a/b/f;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/millennialmedia/a/a/b/f;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/g;->a:Lcom/millennialmedia/a/a/b/f;

    .line 138
    iput-boolean p2, p0, Lcom/millennialmedia/a/a/b/a/g;->b:Z

    .line 139
    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/e;Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/s;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/e;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/millennialmedia/a/a/s",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 171
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/millennialmedia/a/a/b/a/p;->f:Lcom/millennialmedia/a/a/s;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/millennialmedia/a/a/b/a/g;)Z
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/a/g;->b:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/a/a/e;",
            "Lcom/millennialmedia/a/a/c/a",
            "<TT;>;)",
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 145
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 146
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 150
    :cond_0
    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Lcom/millennialmedia/a/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 153
    aget-object v0, v1, v3

    invoke-direct {p0, p1, v0}, Lcom/millennialmedia/a/a/b/a/g;->a(Lcom/millennialmedia/a/a/e;Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/s;

    move-result-object v4

    .line 154
    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;

    move-result-object v6

    .line 156
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/g;->a:Lcom/millennialmedia/a/a/b/f;

    invoke-virtual {v0, p2}, Lcom/millennialmedia/a/a/b/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/b/q;

    move-result-object v7

    .line 161
    new-instance v0, Lcom/millennialmedia/a/a/b/a/h;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/millennialmedia/a/a/b/a/h;-><init>(Lcom/millennialmedia/a/a/b/a/g;Lcom/millennialmedia/a/a/e;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/s;Ljava/lang/reflect/Type;Lcom/millennialmedia/a/a/s;Lcom/millennialmedia/a/a/b/q;)V

    goto :goto_0
.end method
