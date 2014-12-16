.class public Lorg/b/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/b/c/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/b/c/b/f",
        "<",
        "Lorg/b/d/h",
        "<",
        "Ljava/lang/String;",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/util/Random;

.field private c:Ljava/nio/charset/Charset;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/b/c/k;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/b/c/b/f",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/b/c/b/c;->a:[B

    return-void

    :array_0
    .array-data 0x1
        0x2dt
        0x5ft
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/b/c/b/c;->b:Ljava/util/Random;

    .line 98
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/b/c/b/c;->c:Ljava/nio/charset/Charset;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/b/c/b/c;->d:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/b/c/b/c;->e:Ljava/util/List;

    .line 106
    iget-object v0, p0, Lorg/b/c/b/c;->d:Ljava/util/List;

    sget-object v1, Lorg/b/c/k;->d:Lorg/b/c/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lorg/b/c/b/c;->d:Ljava/util/List;

    sget-object v1, Lorg/b/c/k;->m:Lorg/b/c/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lorg/b/c/b/c;->e:Ljava/util/List;

    new-instance v1, Lorg/b/c/b/b;

    invoke-direct {v1}, Lorg/b/c/b/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lorg/b/c/b/j;

    invoke-direct {v0}, Lorg/b/c/b/j;-><init>()V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/b/c/b/j;->a(Z)V

    .line 112
    iget-object v1, p0, Lorg/b/c/b/c;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lorg/b/c/b/c;->e:Ljava/util/List;

    new-instance v1, Lorg/b/c/b/i;

    invoke-direct {v1}, Lorg/b/c/b/i;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method private a(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 327
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 328
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 329
    return-void
.end method

.method private a(Ljava/io/OutputStream;Lorg/b/d/h;[B)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 271
    invoke-interface {p2}, Lorg/b/d/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 274
    invoke-direct {p0, p3, p1}, Lorg/b/c/b/c;->a([BLjava/io/OutputStream;)V

    .line 275
    invoke-direct {p0, v3}, Lorg/b/c/b/c;->b(Ljava/lang/Object;)Lorg/b/c/b;

    move-result-object v3

    .line 276
    invoke-direct {p0, v1, v3, p1}, Lorg/b/c/b/c;->a(Ljava/lang/String;Lorg/b/c/b;Ljava/io/OutputStream;)V

    .line 277
    invoke-direct {p0, p1}, Lorg/b/c/b/c;->a(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 280
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/b/c/b;Ljava/io/OutputStream;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/b/c/b",
            "<*>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p2}, Lorg/b/c/b;->b()Ljava/lang/Object;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 301
    invoke-virtual {p2}, Lorg/b/c/b;->a()Lorg/b/c/c;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v4

    .line 303
    iget-object v0, p0, Lorg/b/c/b/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/b/f;

    .line 304
    invoke-interface {v0, v2, v4}, Lorg/b/c/b/f;->b(Ljava/lang/Class;Lorg/b/c/k;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    new-instance v2, Lorg/b/c/b/d;

    invoke-direct {v2, p0, p3}, Lorg/b/c/b/d;-><init>(Lorg/b/c/b/c;Ljava/io/OutputStream;)V

    .line 306
    invoke-interface {v2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v5

    invoke-virtual {p0, v1}, Lorg/b/c/b/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lorg/b/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v3}, Lorg/b/c/c;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 308
    invoke-interface {v2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/b/c/c;->putAll(Ljava/util/Map;)V

    .line 310
    :cond_1
    invoke-interface {v0, v1, v4, v2}, Lorg/b/c/b/f;->a(Ljava/lang/Object;Lorg/b/c/k;Lorg/b/c/g;)V

    .line 311
    return-void

    .line 314
    :cond_2
    new-instance v0, Lorg/b/c/b/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not write request: no suitable HttpMessageConverter found for request type ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/b/c/b/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lorg/b/c/b/c;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/b/c/b/c;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method private a(Lorg/b/d/h;Lorg/b/c/g;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/b/c/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/b/c/b/c;->b()[B

    move-result-object v0

    .line 262
    const-string v1, "boundary"

    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 263
    new-instance v2, Lorg/b/c/k;

    sget-object v3, Lorg/b/c/k;->m:Lorg/b/c/k;

    invoke-direct {v2, v3, v1}, Lorg/b/c/k;-><init>(Lorg/b/c/k;Ljava/util/Map;)V

    .line 264
    invoke-interface {p2}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/b/c/c;->a(Lorg/b/c/k;)V

    .line 266
    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lorg/b/c/b/c;->a(Ljava/io/OutputStream;Lorg/b/d/h;[B)V

    .line 267
    invoke-interface {p2}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/b/c/b/c;->b([BLjava/io/OutputStream;)V

    .line 268
    return-void
.end method

.method private a([BLjava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x2d

    .line 283
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 284
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 285
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 286
    invoke-direct {p0, p2}, Lorg/b/c/b/c;->a(Ljava/io/OutputStream;)V

    .line 287
    return-void
.end method

.method private a(Lorg/b/d/h;Lorg/b/c/k;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/b/c/k;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 214
    if-eqz p2, :cond_0

    .line 215
    sget-object v0, Lorg/b/c/k;->m:Lorg/b/c/k;

    invoke-virtual {v0, p2}, Lorg/b/c/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 224
    :goto_0
    return v0

    .line 217
    :cond_0
    invoke-interface {p1}, Lorg/b/d/h;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-interface {p1, v0}, Lorg/b/d/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;)Lorg/b/c/b;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/b/c/b",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 290
    instance-of v0, p1, Lorg/b/c/b;

    if-eqz v0, :cond_0

    .line 291
    check-cast p1, Lorg/b/c/b;

    .line 293
    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Lorg/b/c/b;

    invoke-direct {v0, p1}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private b(Lorg/b/d/h;Lorg/b/c/k;Lorg/b/c/g;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/b/c/k;",
            "Lorg/b/c/g;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x26

    .line 229
    if-eqz p2, :cond_3

    .line 230
    invoke-interface {p3}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/b/c/c;->a(Lorg/b/c/k;)V

    .line 231
    invoke-virtual {p2}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 236
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    invoke-interface {p1}, Lorg/b/d/h;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 239
    invoke-interface {p1, v0}, Lorg/b/d/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 240
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    if-eqz v1, :cond_1

    .line 243
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 231
    :cond_2
    iget-object v0, p0, Lorg/b/c/b/c;->c:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 233
    :cond_3
    invoke-interface {p3}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v0

    sget-object v1, Lorg/b/c/k;->d:Lorg/b/c/k;

    invoke-virtual {v0, v1}, Lorg/b/c/c;->a(Lorg/b/c/k;)V

    .line 234
    iget-object v0, p0, Lorg/b/c/b/c;->c:Ljava/nio/charset/Charset;

    move-object v2, v0

    goto :goto_1

    .line 250
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 254
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 255
    invoke-interface {p3}, Lorg/b/c/g;->d()Lorg/b/c/c;

    move-result-object v1

    array-length v2, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/b/c/c;->a(J)V

    .line 256
    invoke-interface {p3}, Lorg/b/c/g;->a()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/b/d/e;->a([BLjava/io/OutputStream;)V

    .line 257
    return-void
.end method

.method private b([BLjava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x2d

    .line 318
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 319
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 320
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 321
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 322
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 323
    invoke-direct {p0, p2}, Lorg/b/c/b/c;->a(Ljava/io/OutputStream;)V

    .line 324
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Class;Lorg/b/c/d;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/b/c/b/c;->b(Ljava/lang/Class;Lorg/b/c/d;)Lorg/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 355
    instance-of v0, p1, Lorg/b/b/a/e;

    if-eqz v0, :cond_0

    .line 356
    check-cast p1, Lorg/b/b/a/e;

    .line 357
    invoke-interface {p1}, Lorg/b/b/a/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 178
    iget-object v0, p0, Lorg/b/c/b/c;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lorg/b/c/k;Lorg/b/c/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    check-cast p1, Lorg/b/d/h;

    invoke-virtual {p0, p1, p2, p3}, Lorg/b/c/b/c;->a(Lorg/b/d/h;Lorg/b/c/k;Lorg/b/c/g;)V

    return-void
.end method

.method public final a(Lorg/b/c/b/f;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c/b/f",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 128
    const-string v0, "\'partConverter\' must not be NULL"

    invoke-static {p1, v0}, Lorg/b/d/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lorg/b/c/b/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public a(Lorg/b/d/h;Lorg/b/c/k;Lorg/b/c/g;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/b/c/k;",
            "Lorg/b/c/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lorg/b/c/b/c;->a(Lorg/b/d/h;Lorg/b/c/k;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lorg/b/c/b/c;->b(Lorg/b/d/h;Lorg/b/c/k;Lorg/b/c/g;)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/b/c/b/c;->a(Lorg/b/d/h;Lorg/b/c/g;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Lorg/b/c/k;)Z
    .locals 5
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    const-class v0, Lorg/b/d/h;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 152
    :goto_0
    return v0

    .line 143
    :cond_0
    if-nez p2, :cond_1

    move v0, v2

    .line 144
    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lorg/b/c/b/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/k;

    .line 148
    sget-object v4, Lorg/b/c/k;->m:Lorg/b/c/k;

    invoke-virtual {v0, v4}, Lorg/b/c/k;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, p2}, Lorg/b/c/k;->a(Lorg/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 149
    goto :goto_0

    :cond_3
    move v0, v1

    .line 152
    goto :goto_0
.end method

.method public b(Ljava/lang/Class;Lorg/b/c/d;)Lorg/b/d/h;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Lorg/b/c/d;",
            ")",
            "Lorg/b/d/h",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-interface {p2}, Lorg/b/c/d;->d()Lorg/b/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/c;->c()Lorg/b/c/k;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/b/c/k;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 185
    :goto_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lorg/b/c/d;->e()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v1}, Lorg/b/d/e;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 187
    const-string v3, "&"

    invoke-static {v1, v3}, Lorg/b/d/j;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 189
    new-instance v4, Lorg/b/d/g;

    array-length v1, v3

    invoke-direct {v4, v1}, Lorg/b/d/g;-><init>(I)V

    .line 191
    array-length v5, v3

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v3, v1

    .line 192
    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 193
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lorg/b/d/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/b/c/b/c;->c:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 197
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-interface {v4, v8, v6}, Lorg/b/d/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 201
    :cond_2
    return-object v4
.end method

.method public b(Ljava/lang/Class;Lorg/b/c/k;)Z
    .locals 4
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    const-class v0, Lorg/b/d/h;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 167
    :goto_0
    return v0

    .line 159
    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lorg/b/c/k;->a:Lorg/b/c/k;

    invoke-virtual {v0, p2}, Lorg/b/c/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 160
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0}, Lorg/b/c/b/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/b/c/k;

    .line 163
    invoke-virtual {v0, p2}, Lorg/b/c/k;->b(Lorg/b/c/k;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 164
    goto :goto_0

    :cond_4
    move v0, v1

    .line 167
    goto :goto_0
.end method

.method protected b()[B
    .locals 5

    .prologue
    .line 337
    iget-object v0, p0, Lorg/b/c/b/c;->b:Ljava/util/Random;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1e

    new-array v1, v0, [B

    .line 338
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 339
    sget-object v2, Lorg/b/c/b/c;->a:[B

    iget-object v3, p0, Lorg/b/c/b/c;->b:Ljava/util/Random;

    sget-object v4, Lorg/b/c/b/c;->a:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-object v1
.end method
