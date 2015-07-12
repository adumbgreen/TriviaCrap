.class public final Lcom/millennialmedia/a/a/b/a/f;
.super Lcom/millennialmedia/a/a/d/c;
.source "SourceFile"


# static fields
.field private static final a:Ljava/io/Writer;

.field private static final b:Lcom/millennialmedia/a/a/o;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/millennialmedia/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/millennialmedia/a/a/b/a/f$1;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/a/f$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/f;->a:Ljava/io/Writer;

    .line 61
    new-instance v0, Lcom/millennialmedia/a/a/o;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/a/a/b/a/f;->b:Lcom/millennialmedia/a/a/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/millennialmedia/a/a/b/a/f;->a:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/d/c;-><init>(Ljava/io/Writer;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    .line 77
    sget-object v0, Lcom/millennialmedia/a/a/l;->a:Lcom/millennialmedia/a/a/l;

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->e:Lcom/millennialmedia/a/a/j;

    .line 83
    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/j;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/f;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/f;->j()Lcom/millennialmedia/a/a/j;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/m;

    .line 107
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/millennialmedia/a/a/m;->a(Ljava/lang/String;Lcom/millennialmedia/a/a/j;)V

    .line 109
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    .line 120
    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/f;->e:Lcom/millennialmedia/a/a/j;

    goto :goto_0

    .line 113
    :cond_3
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/f;->j()Lcom/millennialmedia/a/a/j;

    move-result-object v0

    .line 114
    instance-of v1, v0, Lcom/millennialmedia/a/a/h;

    if-eqz v1, :cond_4

    .line 115
    check-cast v0, Lcom/millennialmedia/a/a/h;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/h;->a(Lcom/millennialmedia/a/a/j;)V

    goto :goto_0

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private j()Lcom/millennialmedia/a/a/j;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/j;

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/millennialmedia/a/a/d/c;
    .locals 2
    .parameter

    .prologue
    .line 220
    new-instance v0, Lcom/millennialmedia/a/a/o;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/o;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/j;)V

    .line 221
    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/millennialmedia/a/a/d/c;
    .locals 3
    .parameter

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/f;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object p0

    .line 240
    :goto_0
    return-object p0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 233
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    new-instance v0, Lcom/millennialmedia/a/a/o;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/o;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/j;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/f;->j()Lcom/millennialmedia/a/a/j;

    move-result-object v0

    .line 175
    instance-of v0, v0, Lcom/millennialmedia/a/a/m;

    if-eqz v0, :cond_2

    .line 176
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    .line 177
    return-object p0

    .line 179
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Z)Lcom/millennialmedia/a/a/d/c;
    .locals 2
    .parameter

    .prologue
    .line 202
    new-instance v0, Lcom/millennialmedia/a/a/o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/o;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/j;)V

    .line 203
    return-object p0
.end method

.method public a()Lcom/millennialmedia/a/a/j;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->e:Lcom/millennialmedia/a/a/j;

    return-object v0
.end method

.method public b()Lcom/millennialmedia/a/a/d/c;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/millennialmedia/a/a/h;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/h;-><init>()V

    .line 126
    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/j;)V

    .line 127
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;
    .locals 1
    .parameter

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/a/f;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object p0

    .line 189
    :goto_0
    return-object p0

    .line 188
    :cond_0
    new-instance v0, Lcom/millennialmedia/a/a/o;

    invoke-direct {v0, p1}, Lcom/millennialmedia/a/a/o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/j;)V

    goto :goto_0
.end method

.method public c()Lcom/millennialmedia/a/a/d/c;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/f;->j()Lcom/millennialmedia/a/a/j;

    move-result-object v0

    .line 138
    instance-of v0, v0, Lcom/millennialmedia/a/a/h;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 140
    return-object p0

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    sget-object v1, Lcom/millennialmedia/a/a/b/a/f;->b:Lcom/millennialmedia/a/a/o;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method public d()Lcom/millennialmedia/a/a/d/c;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/millennialmedia/a/a/m;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/m;-><init>()V

    .line 149
    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/j;)V

    .line 150
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-object p0
.end method

.method public e()Lcom/millennialmedia/a/a/d/c;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/a/f;->j()Lcom/millennialmedia/a/a/j;

    move-result-object v0

    .line 161
    instance-of v0, v0, Lcom/millennialmedia/a/a/m;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    return-object p0

    .line 165
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public f()Lcom/millennialmedia/a/a/d/c;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/millennialmedia/a/a/l;->a:Lcom/millennialmedia/a/a/l;

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/a/f;->a(Lcom/millennialmedia/a/a/j;)V

    .line 196
    return-object p0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method
