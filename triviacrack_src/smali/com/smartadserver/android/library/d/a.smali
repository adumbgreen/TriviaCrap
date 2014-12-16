.class public Lcom/smartadserver/android/library/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/util/Date;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/d/a;->d:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/d/a;->e:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/smartadserver/android/library/d/a;->f:Z

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/smartadserver/android/library/d/a;->g:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartadserver/android/library/d/a;->h:I

    .line 121
    iput-boolean v1, p0, Lcom/smartadserver/android/library/d/a;->k:Z

    .line 127
    iput-boolean v1, p0, Lcom/smartadserver/android/library/d/a;->l:Z

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/smartadserver/android/library/d/a;->m:Ljava/lang/String;

    .line 138
    iput v1, p0, Lcom/smartadserver/android/library/d/a;->n:I

    .line 143
    iput v1, p0, Lcom/smartadserver/android/library/d/a;->o:I

    .line 148
    iput v1, p0, Lcom/smartadserver/android/library/d/a;->p:I

    .line 153
    iput v1, p0, Lcom/smartadserver/android/library/d/a;->q:I

    .line 159
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput p1, p0, Lcom/smartadserver/android/library/d/a;->g:I

    .line 308
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/smartadserver/android/library/d/a;->a:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/smartadserver/android/library/d/a;->j:Ljava/util/Date;

    .line 356
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/smartadserver/android/library/d/a;->f:Z

    .line 277
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 166
    .line 167
    iget-object v0, p0, Lcom/smartadserver/android/library/d/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/d/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/smartadserver/android/library/d/a;->d:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/smartadserver/android/library/d/a;->d:Ljava/lang/String;

    const-string v2, ",http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 169
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    array-length v0, v2

    if-ne v0, v1, :cond_1

    aget-object v0, v2, v5

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    aget-object v0, v2, v5

    aget-object v1, v2, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    :cond_1
    move-object v0, v2

    .line 179
    :goto_1
    return-object v0

    .line 177
    :cond_2
    new-array v0, v5, [Ljava/lang/String;

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/smartadserver/android/library/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput p1, p0, Lcom/smartadserver/android/library/d/a;->h:I

    .line 324
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/smartadserver/android/library/d/a;->b:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/smartadserver/android/library/d/a;->k:Z

    .line 372
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/smartadserver/android/library/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput p1, p0, Lcom/smartadserver/android/library/d/a;->i:I

    .line 340
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/smartadserver/android/library/d/a;->c:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/smartadserver/android/library/d/a;->l:Z

    .line 388
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/smartadserver/android/library/d/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput p1, p0, Lcom/smartadserver/android/library/d/a;->n:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/smartadserver/android/library/d/a;->d:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/smartadserver/android/library/d/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput p1, p0, Lcom/smartadserver/android/library/d/a;->o:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/smartadserver/android/library/d/a;->e:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public f(I)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput p1, p0, Lcom/smartadserver/android/library/d/a;->p:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/smartadserver/android/library/d/a;->m:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/smartadserver/android/library/d/a;->f:Z

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/smartadserver/android/library/d/a;->g:I

    return v0
.end method

.method public g(I)V
    .locals 0
    .parameter

    .prologue
    .line 444
    iput p1, p0, Lcom/smartadserver/android/library/d/a;->q:I

    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/smartadserver/android/library/d/a;->h:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/smartadserver/android/library/d/a;->i:I

    return v0
.end method

.method public j()Ljava/util/Date;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/smartadserver/android/library/d/a;->j:Ljava/util/Date;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/smartadserver/android/library/d/a;->k:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/smartadserver/android/library/d/a;->l:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/smartadserver/android/library/d/a;->m:Ljava/lang/String;

    return-object v0
.end method
