.class Lcom/mdotm/android/vast/g$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/g;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/mdotm/android/vast/g;


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/g;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    .line 232
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 235
    iget-object v0, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    invoke-static {v0}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;)Lcom/mdotm/android/vast/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/vast/f;->getCurrentPosition()I

    move-result v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iget-boolean v1, v1, Lcom/mdotm/android/vast/g;->i:Z

    if-nez v1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video play start :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iput-boolean v3, v1, Lcom/mdotm/android/vast/g;->i:Z

    .line 241
    :cond_0
    const/16 v1, 0x1388

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iget-boolean v1, v1, Lcom/mdotm/android/vast/g;->j:Z

    if-nez v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iput-boolean v3, v1, Lcom/mdotm/android/vast/g;->j:Z

    .line 243
    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    invoke-static {v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;)Lcom/mdotm/android/vast/f;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/f;->c(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/c/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/mdotm/android/c/b;->a()V

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iget v1, v1, Lcom/mdotm/android/vast/g;->b:I

    if-lt v0, v1, :cond_3

    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iget-boolean v1, v1, Lcom/mdotm/android/vast/g;->e:Z

    if-nez v1, :cond_3

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "quarter position crossed ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iput-boolean v3, v0, Lcom/mdotm/android/vast/g;->e:Z

    .line 250
    iget-object v0, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    invoke-static {v0}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;)Lcom/mdotm/android/vast/f;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/f;->d(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/vast/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    invoke-static {v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;)Lcom/mdotm/android/vast/f;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/f;->d(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/vast/d;

    move-result-object v1

    iget-object v1, v1, Lcom/mdotm/android/vast/d;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;Ljava/util/ArrayList;)V

    .line 269
    :cond_2
    :goto_0
    return-void

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iget v1, v1, Lcom/mdotm/android/vast/g;->c:I

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iget-boolean v1, v1, Lcom/mdotm/android/vast/g;->f:Z

    if-nez v1, :cond_4

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "half position crossed :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iput-boolean v3, v0, Lcom/mdotm/android/vast/g;->f:Z

    .line 257
    iget-object v0, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    invoke-static {v0}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;)Lcom/mdotm/android/vast/f;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/f;->d(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/vast/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    invoke-static {v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;)Lcom/mdotm/android/vast/f;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/f;->d(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/vast/d;

    move-result-object v1

    iget-object v1, v1, Lcom/mdotm/android/vast/d;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iget v1, v1, Lcom/mdotm/android/vast/g;->d:I

    if-lt v0, v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iget-boolean v1, v1, Lcom/mdotm/android/vast/g;->g:Z

    if-nez v1, :cond_2

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "three qurter position crossed ::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iput-boolean v3, v0, Lcom/mdotm/android/vast/g;->g:Z

    .line 265
    iget-object v0, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    invoke-static {v0}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;)Lcom/mdotm/android/vast/f;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/vast/f;->d(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/vast/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    iget-object v1, p0, Lcom/mdotm/android/vast/g$1;->a:Lcom/mdotm/android/vast/g;

    invoke-static {v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;)Lcom/mdotm/android/vast/f;

    move-result-object v1

    invoke-static {v1}, Lcom/mdotm/android/vast/f;->d(Lcom/mdotm/android/vast/f;)Lcom/mdotm/android/vast/d;

    move-result-object v1

    iget-object v1, v1, Lcom/mdotm/android/vast/d;->e:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/g;->a(Lcom/mdotm/android/vast/g;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
