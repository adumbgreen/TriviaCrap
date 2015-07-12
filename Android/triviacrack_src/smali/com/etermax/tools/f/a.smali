.class public Lcom/etermax/tools/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/tools/f/b/a;

.field private b:[Lcom/etermax/tools/f/c;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/etermax/tools/f/c;",
            "Lcom/etermax/tools/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/etermax/tools/f/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/etermax/tools/f/c;->a:Lcom/etermax/tools/f/c;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/etermax/tools/f/a;->b:[Lcom/etermax/tools/f/c;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/f/a;->c:Ljava/util/Map;

    .line 43
    iget-object v0, p0, Lcom/etermax/tools/f/a;->c:Ljava/util/Map;

    sget-object v1, Lcom/etermax/tools/f/c;->a:Lcom/etermax/tools/f/c;

    iget-object v2, p0, Lcom/etermax/tools/f/a;->a:Lcom/etermax/tools/f/b/a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/etermax/tools/f/a;->b:[Lcom/etermax/tools/f/c;

    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/f/a;->a(Landroid/content/Context;[Lcom/etermax/tools/f/c;)V

    .line 48
    return-void
.end method

.method public varargs a(Landroid/content/Context;[Lcom/etermax/tools/f/c;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 51
    if-eqz p2, :cond_0

    .line 52
    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 53
    iget-object v3, p0, Lcom/etermax/tools/f/a;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/f/b;

    invoke-interface {v0, p1}, Lcom/etermax/tools/f/b;->a(Landroid/content/Context;)V

    .line 52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public a(Lcom/etermax/tools/f/a/a;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/etermax/tools/f/a/a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/etermax/tools/f/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/tools/f/a/a;->b()[Lcom/etermax/tools/f/c;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/tools/f/a;->a(Ljava/lang/String;[Lcom/etermax/tools/f/c;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/tools/f/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/tools/f/a/a;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/etermax/tools/f/a/a;->b()[Lcom/etermax/tools/f/c;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/tools/f/a;->a(Ljava/lang/String;Ljava/util/Map;[Lcom/etermax/tools/f/c;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "ANALYTICS LOGGER"

    const-string v1, "/**************************** LOGGING ERROR ********************************/"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "ANALYTICS LOGGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######## errorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "ANALYTICS LOGGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "############ message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "ANALYTICS LOGGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "############ errorClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "ANALYTICS LOGGER"

    const-string v1, "/***************************************************************************/"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/f/a;->c:Ljava/util/Map;

    sget-object v1, Lcom/etermax/tools/f/c;->a:Lcom/etermax/tools/f/c;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/f/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/etermax/tools/f/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public varargs a(Ljava/lang/String;Ljava/util/Map;[Lcom/etermax/tools/f/c;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/etermax/tools/f/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "ANALYTICS LOGGER"

    const-string v1, "/**************************** LOGGING EVENT ********************************/"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "ANALYTICS LOGGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######## eventId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    const-string v3, "ANALYTICS LOGGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "############ "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    const-string v0, "ANALYTICS LOGGER"

    const-string v1, "/***************************************************************************/"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    if-eqz p3, :cond_2

    .line 101
    array-length v2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v0, p3, v1

    .line 102
    iget-object v3, p0, Lcom/etermax/tools/f/a;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/f/b;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1, v3}, Lcom/etermax/tools/f/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 105
    :cond_2
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Lcom/etermax/tools/f/c;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 81
    const-string v0, "ANALYTICS LOGGER"

    const-string v1, "/**************************** LOGGING EVENT ********************************/"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "ANALYTICS LOGGER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "######## eventId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "ANALYTICS LOGGER"

    const-string v1, "/***************************************************************************/"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz p2, :cond_0

    .line 85
    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 86
    iget-object v3, p0, Lcom/etermax/tools/f/a;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/f/b;

    invoke-interface {v0, p1}, Lcom/etermax/tools/f/b;->a(Ljava/lang/String;)V

    .line 85
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/tools/f/a;->b:[Lcom/etermax/tools/f/c;

    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/f/a;->b(Landroid/content/Context;[Lcom/etermax/tools/f/c;)V

    .line 60
    return-void
.end method

.method public varargs b(Landroid/content/Context;[Lcom/etermax/tools/f/c;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 63
    if-eqz p2, :cond_0

    .line 64
    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 65
    iget-object v3, p0, Lcom/etermax/tools/f/a;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/f/b;

    invoke-interface {v0, p1}, Lcom/etermax/tools/f/b;->b(Landroid/content/Context;)V

    .line 64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method
