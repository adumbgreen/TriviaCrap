.class public abstract Lorg/b/c/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/c/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/b/c/b/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/b/c/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/b/c/k;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/b/a;->a:Ljava/util/List;

    .line 59
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/b/c/b/a;->a(Ljava/util/List;)V

    .line 60
    return-void
.end method

.method protected varargs constructor <init>([Lorg/b/c/k;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/b/a;->a:Ljava/util/List;

    .line 67
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/b/c/b/a;->a(Ljava/util/List;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Lorg/b/c/k;)Ljava/lang/Long;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/b/c/k;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/b/c/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/a;->b(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/b/c/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lorg/b/c/b/a;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)Lorg/b/c/k;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/b/c/k;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/b/c/b/a;->a()Ljava/util/List;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/k;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;Lorg/b/c/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/b/c/g;",
            ")V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;Lorg/b/c/k;Lorg/b/c/g;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/b/c/k;",
            "Lorg/b/c/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-interface {p3}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v1

    if-nez v1, :cond_2

    .line 160
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/b/c/k;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lorg/b/c/k;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lorg/b/c/b/a;->a(Ljava/lang/Object;)Lorg/b/c/k;

    move-result-object p2

    .line 163
    :cond_1
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {v0, p2}, Lorg/b/c/c;->a(Lorg/b/c/k;)V

    .line 167
    :cond_2
    invoke-virtual {v0}, Lorg/b/c/c;->b()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 168
    invoke-virtual {v0}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/b/c/b/a;->a(Ljava/lang/Object;Lorg/b/c/k;)Ljava/lang/Long;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_3

    .line 170
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/b/c/c;->a(J)V

    .line 173
    :cond_3
    invoke-virtual {p0, p1, p3}, Lorg/b/c/b/a;->a(Ljava/lang/Object;Lorg/b/c/g;)V

    .line 174
    invoke-interface {p3}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 175
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/b/c/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    const-string v0, "\'supportedMediaTypes\' must not be empty"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/util/Collection;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/b/c/b/a;->a:Ljava/util/List;

    .line 77
    return-void
.end method

.method protected abstract a(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Class;Lorg/b/c/k;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/b/c/k;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lorg/b/c/b/a;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/b/c/b/a;->a(Lorg/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lorg/b/c/k;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 102
    if-nez p1, :cond_0

    move v0, v1

    .line 110
    :goto_0
    return v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lorg/b/c/b/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/k;

    .line 106
    invoke-virtual {v0, p1}, Lorg/b/c/k;->a(Lorg/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 107
    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/b/c/d;",
            ")TT;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/Class;Lorg/b/c/k;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/b/c/k;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lorg/b/c/b/a;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/b/c/b/a;->b(Lorg/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lorg/b/c/k;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 131
    if-eqz p1, :cond_0

    sget-object v0, Lorg/b/c/k;->a:Lorg/b/c/k;

    invoke-virtual {v0, p1}, Lorg/b/c/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_1
    invoke-virtual {p0}, Lorg/b/c/b/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/k;

    .line 135
    invoke-virtual {v0, p1}, Lorg/b/c/k;->b(Lorg/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 136
    goto :goto_0

    .line 139
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
