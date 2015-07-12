.class Lcom/smartadserver/android/library/controller/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/smartadserver/android/library/ui/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/controller/a;->a(ILjava/lang/String;ILjava/lang/String;ZLcom/smartadserver/android/library/ui/a;ILorg/json/JSONObject;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/e/a;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/smartadserver/android/library/controller/a;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/controller/a;Lcom/smartadserver/android/library/e/a;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/smartadserver/android/library/controller/a$3;->f:Lcom/smartadserver/android/library/controller/a;

    iput-object p2, p0, Lcom/smartadserver/android/library/controller/a$3;->a:Lcom/smartadserver/android/library/e/a;

    iput p3, p0, Lcom/smartadserver/android/library/controller/a$3;->b:I

    iput-object p4, p0, Lcom/smartadserver/android/library/controller/a$3;->c:Ljava/lang/String;

    iput p5, p0, Lcom/smartadserver/android/library/controller/a$3;->d:I

    iput-object p6, p0, Lcom/smartadserver/android/library/controller/a$3;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adLoadingCompleted(Lcom/smartadserver/android/library/d/a;)V
    .locals 6
    .parameter

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->i()I

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->a:Lcom/smartadserver/android/library/e/a;

    iget v1, p0, Lcom/smartadserver/android/library/controller/a$3;->b:I

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$3;->c:Ljava/lang/String;

    iget v3, p0, Lcom/smartadserver/android/library/controller/a$3;->d:I

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/a$3;->e:Ljava/lang/String;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/smartadserver/android/library/e/a;->a(ILjava/lang/String;ILjava/lang/String;Lcom/smartadserver/android/library/d/a;)V

    .line 212
    const-string v0, "adLoadingCompleted for prefetch ad, load Ad can be processed on this AdView"

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->f:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->d()V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully cached ad for url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;)V

    .line 215
    sget-boolean v0, Lcom/smartadserver/android/library/h/c;->a:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->f:Lcom/smartadserver/android/library/controller/a;

    iget-object v1, p0, Lcom/smartadserver/android/library/controller/a$3;->f:Lcom/smartadserver/android/library/controller/a;

    invoke-static {v1}, Lcom/smartadserver/android/library/controller/a;->a(Lcom/smartadserver/android/library/controller/a;)Lcom/smartadserver/android/library/ui/SASAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartadserver/android/library/ui/SASAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartadserver/android/library/controller/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/smartadserver/android/library/a/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/a$3;->adLoadingFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    new-instance v0, Lcom/smartadserver/android/library/a/a;

    const-string v1, "Ad does not support prefetching"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/a$3;->adLoadingFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/smartadserver/android/library/d/a;->i()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/smartadserver/android/library/a/a;

    const-string v1, "Prefechable Ad does not have a valid insertionID"

    invoke-direct {v0, v1}, Lcom/smartadserver/android/library/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartadserver/android/library/controller/a$3;->adLoadingFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public adLoadingFailed(Ljava/lang/Exception;)V
    .locals 5
    .parameter

    .prologue
    .line 191
    instance-of v0, p1, Lcom/smartadserver/android/library/a/f;

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->a:Lcom/smartadserver/android/library/e/a;

    iget v1, p0, Lcom/smartadserver/android/library/controller/a$3;->b:I

    iget-object v2, p0, Lcom/smartadserver/android/library/controller/a$3;->c:Ljava/lang/String;

    iget v3, p0, Lcom/smartadserver/android/library/controller/a$3;->d:I

    iget-object v4, p0, Lcom/smartadserver/android/library/controller/a$3;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartadserver/android/library/e/a;->a(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/smartadserver/android/library/a/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prefetch failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;)V

    .line 201
    const-string v0, "adLoadingFailed for prefetch ad, load Ad can be processed on this AdView"

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/smartadserver/android/library/controller/a$3;->f:Lcom/smartadserver/android/library/controller/a;

    invoke-virtual {v0}, Lcom/smartadserver/android/library/controller/a;->d()V

    .line 205
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Lcom/smartadserver/android/library/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartadserver/android/library/h/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
