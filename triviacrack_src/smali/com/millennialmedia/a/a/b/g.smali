.class public final Lcom/millennialmedia/a/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/t;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/millennialmedia/a/a/b/g;


# instance fields
.field private b:D

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/millennialmedia/a/a/b/g;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/b/g;-><init>()V

    sput-object v0, Lcom/millennialmedia/a/a/b/g;->a:Lcom/millennialmedia/a/a/b/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/millennialmedia/a/a/b/g;->b:D

    .line 59
    const/16 v0, 0x88

    iput v0, p0, Lcom/millennialmedia/a/a/b/g;->c:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/a/a/b/g;->d:Z

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/g;->f:Ljava/util/List;

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/g;->g:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/millennialmedia/a/a/a/c;)Z
    .locals 4
    .parameter

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 270
    invoke-interface {p1}, Lcom/millennialmedia/a/a/a/c;->a()D

    move-result-wide v0

    .line 271
    iget-wide v2, p0, Lcom/millennialmedia/a/a/b/g;->b:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/millennialmedia/a/a/a/c;Lcom/millennialmedia/a/a/a/d;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/millennialmedia/a/a/a/d;)Z
    .locals 4
    .parameter

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    invoke-interface {p1}, Lcom/millennialmedia/a/a/a/d;->a()D

    move-result-wide v0

    .line 282
    iget-wide v2, p0, Lcom/millennialmedia/a/a/b/g;->b:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 248
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/g;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/millennialmedia/a/a/b/g;
    .locals 1

    .prologue
    .line 71
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/b/g;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;
    .locals 6
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
    .line 127
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 128
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/a/a/b/g;->a(Ljava/lang/Class;Z)Z

    move-result v3

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/a/a/b/g;->a(Ljava/lang/Class;Z)Z

    move-result v2

    .line 131
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/millennialmedia/a/a/b/g$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/millennialmedia/a/a/b/g$1;-><init>(Lcom/millennialmedia/a/a/b/g;ZZLcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Z)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 221
    iget-wide v0, p0, Lcom/millennialmedia/a/a/b/g;->b:D

    const-wide/high16 v3, -0x4010

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_0

    const-class v0, Lcom/millennialmedia/a/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/a/c;

    const-class v1, Lcom/millennialmedia/a/a/a/d;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/a/a/a/d;

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/a/c;Lcom/millennialmedia/a/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 243
    :goto_0
    return v0

    .line 227
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/g;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/g;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 228
    goto :goto_0

    .line 231
    :cond_1
    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/g;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 232
    goto :goto_0

    .line 235
    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/g;->f:Ljava/util/List;

    .line 237
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/a;

    .line 238
    invoke-interface {v0, p1}, Lcom/millennialmedia/a/a/a;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 239
    goto :goto_0

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/g;->g:Ljava/util/List;

    goto :goto_1

    .line 243
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 174
    iget v0, p0, Lcom/millennialmedia/a/a/b/g;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    .line 216
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-wide v0, p0, Lcom/millennialmedia/a/a/b/g;->b:D

    const-wide/high16 v3, -0x4010

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_1

    const-class v0, Lcom/millennialmedia/a/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/a/c;

    const-class v1, Lcom/millennialmedia/a/a/a/d;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/a/a/a/d;

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/a/c;Lcom/millennialmedia/a/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 181
    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 185
    goto :goto_0

    .line 188
    :cond_2
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/g;->e:Z

    if-eqz v0, :cond_5

    .line 189
    const-class v0, Lcom/millennialmedia/a/a/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/a/a;

    .line 190
    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    invoke-interface {v0}, Lcom/millennialmedia/a/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    .line 193
    goto :goto_0

    .line 190
    :cond_4
    invoke-interface {v0}, Lcom/millennialmedia/a/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    :cond_5
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/g;->d:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/g;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 198
    goto :goto_0

    .line 201
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/millennialmedia/a/a/b/g;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 202
    goto :goto_0

    .line 205
    :cond_7
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/g;->f:Ljava/util/List;

    .line 207
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 208
    new-instance v1, Lcom/millennialmedia/a/a/b;

    invoke-direct {v1, p1}, Lcom/millennialmedia/a/a/b;-><init>(Ljava/lang/reflect/Field;)V

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/a;

    .line 210
    invoke-interface {v0, v1}, Lcom/millennialmedia/a/a/a;->a(Lcom/millennialmedia/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 211
    goto/16 :goto_0

    .line 205
    :cond_9
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/g;->g:Ljava/util/List;

    goto :goto_1

    .line 216
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/g;->a()Lcom/millennialmedia/a/a/b/g;

    move-result-object v0

    return-object v0
.end method
