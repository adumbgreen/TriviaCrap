.class public final Lcom/millennialmedia/a/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/a/a/g",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/a/a/g",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/f;->a:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/millennialmedia/a/a/b/q",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 116
    :cond_0
    new-instance v0, Lcom/millennialmedia/a/a/b/f$6;

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/a/a/b/f$6;-><init>(Lcom/millennialmedia/a/a/b/f;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/millennialmedia/a/a/b/q",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 152
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/millennialmedia/a/a/b/f$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$7;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    .line 248
    :goto_0
    return-object v0

    .line 162
    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Lcom/millennialmedia/a/a/b/f$8;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/a/a/b/f$8;-><init>(Lcom/millennialmedia/a/a/b/f;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 184
    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    new-instance v0, Lcom/millennialmedia/a/a/b/f$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$9;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_0

    .line 193
    :cond_2
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    new-instance v0, Lcom/millennialmedia/a/a/b/f$10;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$10;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_0

    .line 203
    :cond_3
    new-instance v0, Lcom/millennialmedia/a/a/b/f$11;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$11;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_0

    .line 214
    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 215
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    new-instance v0, Lcom/millennialmedia/a/a/b/f$12;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$12;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_0

    .line 224
    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    const-class v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 228
    new-instance v0, Lcom/millennialmedia/a/a/b/f$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$2;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_0

    .line 237
    :cond_6
    new-instance v0, Lcom/millennialmedia/a/a/b/f$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/f$3;-><init>(Lcom/millennialmedia/a/a/b/f;)V

    goto :goto_0

    .line 248
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/millennialmedia/a/a/b/q",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/millennialmedia/a/a/b/f$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/millennialmedia/a/a/b/f$4;-><init>(Lcom/millennialmedia/a/a/b/f;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/b/q;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/a/a/c/a",
            "<TT;>;)",
            "Lcom/millennialmedia/a/a/b/q",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 57
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 63
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/g;

    .line 65
    if-eqz v0, :cond_1

    .line 66
    new-instance v1, Lcom/millennialmedia/a/a/b/f$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/millennialmedia/a/a/b/f$1;-><init>(Lcom/millennialmedia/a/a/b/f;Lcom/millennialmedia/a/a/g;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/f;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/g;

    .line 81
    if-eqz v0, :cond_2

    .line 82
    new-instance v1, Lcom/millennialmedia/a/a/b/f$5;

    invoke-direct {v1, p0, v0, v2}, Lcom/millennialmedia/a/a/b/f$5;-><init>(Lcom/millennialmedia/a/a/b/f;Lcom/millennialmedia/a/a/g;Ljava/lang/reflect/Type;)V

    move-object v0, v1

    goto :goto_0

    .line 92
    :cond_2
    invoke-direct {p0, v1}, Lcom/millennialmedia/a/a/b/f;->a(Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, v2, v1}, Lcom/millennialmedia/a/a/b/f;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 104
    invoke-direct {p0, v2, v1}, Lcom/millennialmedia/a/a/b/f;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/a/a/b/q;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/f;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
