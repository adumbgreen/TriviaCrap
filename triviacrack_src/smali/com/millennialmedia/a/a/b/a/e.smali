.class public final Lcom/millennialmedia/a/a/b/a/e;
.super Lcom/millennialmedia/a/a/d/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/io/Reader;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/millennialmedia/a/a/b/a/e$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/e$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/e;->a:Ljava/io/Reader;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/e;->b:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/d/b;)V
    .locals 3
    .parameter

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    return-void
.end method

.method private q()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private r()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->a:Lcom/millennialmedia/a/a/d/b;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/b;)V

    .line 72
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/h;

    .line 73
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/h;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->b:Lcom/millennialmedia/a/a/d/b;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/b;)V

    .line 80
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    .line 81
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->c:Lcom/millennialmedia/a/a/d/b;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/b;)V

    .line 88
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/m;

    .line 89
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->o()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    sget-object v1, Lcom/millennialmedia/a/a/b/a/e;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->d:Lcom/millennialmedia/a/a/d/b;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/b;)V

    .line 96
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    .line 97
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/millennialmedia/a/a/d/b;->d:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->b:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/millennialmedia/a/a/d/b;
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->j:Lcom/millennialmedia/a/a/d/b;

    .line 144
    :goto_0
    return-object v0

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    .line 115
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    .line 116
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/millennialmedia/a/a/m;

    .line 117
    check-cast v0, Ljava/util/Iterator;

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    if-eqz v1, :cond_1

    .line 120
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->e:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/millennialmedia/a/a/d/b;->d:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->b:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 128
    :cond_4
    instance-of v1, v0, Lcom/millennialmedia/a/a/m;

    if-eqz v1, :cond_5

    .line 129
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->c:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 130
    :cond_5
    instance-of v1, v0, Lcom/millennialmedia/a/a/h;

    if-eqz v1, :cond_6

    .line 131
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->a:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 132
    :cond_6
    instance-of v1, v0, Lcom/millennialmedia/a/a/o;

    if-eqz v1, :cond_a

    .line 133
    check-cast v0, Lcom/millennialmedia/a/a/o;

    .line 134
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 135
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->f:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 136
    :cond_7
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 137
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->h:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 138
    :cond_8
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 139
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->g:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 141
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 143
    :cond_a
    instance-of v1, v0, Lcom/millennialmedia/a/a/l;

    if-eqz v1, :cond_b

    .line 144
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    goto :goto_0

    .line 145
    :cond_b
    sget-object v1, Lcom/millennialmedia/a/a/b/a/e;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->e:Lcom/millennialmedia/a/a/d/b;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/b;)V

    .line 174
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/millennialmedia/a/a/d/b;->f:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->g:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/a/a/d/b;->f:Lcom/millennialmedia/a/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/o;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->h:Lcom/millennialmedia/a/a/d/b;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/b;)V

    .line 195
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/o;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->f()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/b;)V

    .line 202
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public k()D
    .locals 5

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/millennialmedia/a/a/d/b;->g:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->f:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/a/a/d/b;->g:Lcom/millennialmedia/a/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/o;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->c()D

    move-result-wide v0

    .line 214
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->p()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    .line 219
    return-wide v0
.end method

.method public l()J
    .locals 4

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    .line 226
    sget-object v1, Lcom/millennialmedia/a/a/d/b;->g:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->f:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/a/a/d/b;->g:Lcom/millennialmedia/a/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/o;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->d()J

    move-result-wide v0

    .line 231
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    .line 232
    return-wide v0
.end method

.method public m()I
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/millennialmedia/a/a/d/b;->g:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->f:Lcom/millennialmedia/a/a/d/b;

    if-eq v0, v1, :cond_0

    .line 240
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/a/a/d/b;->g:Lcom/millennialmedia/a/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/o;

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/o;->e()I

    move-result v0

    .line 244
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    .line 245
    return v0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->e:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/e;->g()Ljava/lang/String;

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->r()Ljava/lang/Object;

    goto :goto_0
.end method

.method public o()V
    .locals 3

    .prologue
    .line 273
    sget-object v0, Lcom/millennialmedia/a/a/d/b;->e:Lcom/millennialmedia/a/a/d/b;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/e;->a(Lcom/millennialmedia/a/a/d/b;)V

    .line 274
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 275
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/e;->c:Ljava/util/List;

    new-instance v2, Lcom/millennialmedia/a/a/o;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/millennialmedia/a/a/o;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
