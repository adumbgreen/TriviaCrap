.class public Lcom/etermax/chat/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/etermax/chat/a/l;->d:J

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/etermax/chat/a/l;->b:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/etermax/chat/a/l;->a:Z

    .line 17
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/etermax/chat/a/l;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etermax/chat/a/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/etermax/chat/a/l;->c:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/etermax/chat/a/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/etermax/chat/a/l;->d:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/etermax/chat/a/l;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/etermax/chat/a/l;

    invoke-virtual {v0}, Lcom/etermax/chat/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/etermax/chat/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return v1

    .line 49
    :cond_0
    check-cast p1, Lcom/etermax/chat/a/l;

    invoke-virtual {p1}, Lcom/etermax/chat/a/l;->d()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/etermax/chat/a/l;->d()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 51
    goto :goto_0
.end method
