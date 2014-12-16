.class public Lcom/mologiq/analytics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/mologiq/analytics/d;

.field private j:Lcom/mologiq/analytics/d;

.field private k:Lcom/mologiq/analytics/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 263
    const-string v1, "androidadvertisingid"

    iget-object v2, p0, Lcom/mologiq/analytics/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "androidadvertisingidoptout"

    .line 265
    iget-boolean v2, p0, Lcom/mologiq/analytics/c;->d:Z

    .line 264
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 266
    const-string v1, "androidid"

    iget-object v2, p0, Lcom/mologiq/analytics/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v1, "v"

    iget-object v2, p0, Lcom/mologiq/analytics/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v1, "d"

    iget-object v2, p0, Lcom/mologiq/analytics/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v1, "p"

    iget-object v2, p0, Lcom/mologiq/analytics/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v1, "wifi"

    iget v2, p0, Lcom/mologiq/analytics/c;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    const-string v1, "ip"

    iget-object v2, p0, Lcom/mologiq/analytics/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    iget-object v1, p0, Lcom/mologiq/analytics/c;->k:Lcom/mologiq/analytics/d;

    if-eqz v1, :cond_0

    .line 275
    const-string v1, "clicks"

    iget-object v2, p0, Lcom/mologiq/analytics/c;->k:Lcom/mologiq/analytics/d;

    invoke-virtual {v2}, Lcom/mologiq/analytics/d;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/mologiq/analytics/c;->i:Lcom/mologiq/analytics/d;

    if-eqz v1, :cond_1

    .line 280
    const-string v1, "impressions"

    iget-object v2, p0, Lcom/mologiq/analytics/c;->i:Lcom/mologiq/analytics/d;

    invoke-virtual {v2}, Lcom/mologiq/analytics/d;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/mologiq/analytics/c;->j:Lcom/mologiq/analytics/d;

    if-eqz v1, :cond_2

    .line 285
    const-string v1, "requests"

    iget-object v2, p0, Lcom/mologiq/analytics/c;->j:Lcom/mologiq/analytics/d;

    invoke-virtual {v2}, Lcom/mologiq/analytics/d;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/mologiq/analytics/c;->f:I

    .line 52
    return-void
.end method

.method public a(Lcom/mologiq/analytics/d;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mologiq/analytics/c;->i:Lcom/mologiq/analytics/d;

    .line 82
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mologiq/analytics/c;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/mologiq/analytics/c;->d:Z

    .line 122
    return-void
.end method

.method public b(Lcom/mologiq/analytics/d;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mologiq/analytics/c;->j:Lcom/mologiq/analytics/d;

    .line 92
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mologiq/analytics/c;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public c(Lcom/mologiq/analytics/d;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mologiq/analytics/c;->k:Lcom/mologiq/analytics/d;

    .line 102
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mologiq/analytics/c;->g:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mologiq/analytics/c;->h:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mologiq/analytics/c;->c:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mologiq/analytics/c;->e:Ljava/lang/String;

    .line 132
    return-void
.end method
