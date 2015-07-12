.class public final Lcom/millennialmedia/a/a/b/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/t;


# instance fields
.field private final a:Lcom/millennialmedia/a/a/b/f;

.field private final b:Lcom/millennialmedia/a/a/d;

.field private final c:Lcom/millennialmedia/a/a/b/g;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/a/a/b/f;Lcom/millennialmedia/a/a/d;Lcom/millennialmedia/a/a/b/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/j;->a:Lcom/millennialmedia/a/a/b/f;

    .line 56
    iput-object p2, p0, Lcom/millennialmedia/a/a/b/a/j;->b:Lcom/millennialmedia/a/a/d;

    .line 57
    iput-object p3, p0, Lcom/millennialmedia/a/a/b/a/j;->c:Lcom/millennialmedia/a/a/b/g;

    .line 58
    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/e;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/millennialmedia/a/a/c/a;ZZ)Lcom/millennialmedia/a/a/b/a/l;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/e;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/a/a/c/a",
            "<*>;ZZ)",
            "Lcom/millennialmedia/a/a/b/a/l;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p4}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/r;->a(Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 93
    new-instance v0, Lcom/millennialmedia/a/a/b/a/j$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/millennialmedia/a/a/b/a/j$1;-><init>(Lcom/millennialmedia/a/a/b/a/j;Ljava/lang/String;ZZLcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;Ljava/lang/reflect/Field;Z)V

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 68
    const-class v0, Lcom/millennialmedia/a/a/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/a/b;

    .line 69
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/j;->b:Lcom/millennialmedia/a/a/d;

    invoke-interface {v0, p1}, Lcom/millennialmedia/a/a/d;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/millennialmedia/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/e;",
            "Lcom/millennialmedia/a/a/c/a",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/a/a/b/a/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 126
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 156
    :goto_0
    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 131
    :goto_1
    const-class v0, Ljava/lang/Object;

    if-eq p3, v0, :cond_4

    .line 132
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 133
    array-length v11, v10

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    if-ge v8, v11, :cond_3

    aget-object v2, v10, v8

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/a/a/b/a/j;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/a/a/b/a/j;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    .line 136
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    .line 133
    :cond_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 139
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 142
    invoke-direct {p0, v2}, Lcom/millennialmedia/a/a/b/a/j;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/millennialmedia/a/a/b/a/j;->a(Lcom/millennialmedia/a/a/e;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/millennialmedia/a/a/c/a;ZZ)Lcom/millennialmedia/a/a/b/a/l;

    move-result-object v0

    .line 145
    iget-object v1, v0, Lcom/millennialmedia/a/a/b/a/l;->g:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/b/a/l;

    .line 146
    if-eqz v0, :cond_1

    .line 147
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/millennialmedia/a/a/b/a/l;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_3
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;

    move-result-object p2

    .line 154
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object p3

    goto :goto_1

    :cond_4
    move-object v0, v7

    .line 156
    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;
    .locals 4
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
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v2

    .line 77
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-object v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/j;->a:Lcom/millennialmedia/a/a/b/f;

    invoke-virtual {v1, p2}, Lcom/millennialmedia/a/a/b/f;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/b/q;

    move-result-object v3

    .line 82
    new-instance v1, Lcom/millennialmedia/a/a/b/a/k;

    invoke-direct {p0, p1, p2, v2}, Lcom/millennialmedia/a/a/b/a/j;->a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/millennialmedia/a/a/b/a/k;-><init>(Lcom/millennialmedia/a/a/b/q;Ljava/util/Map;Lcom/millennialmedia/a/a/b/a/j$1;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/j;->c:Lcom/millennialmedia/a/a/b/g;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/millennialmedia/a/a/b/g;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/j;->c:Lcom/millennialmedia/a/a/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/b/g;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
