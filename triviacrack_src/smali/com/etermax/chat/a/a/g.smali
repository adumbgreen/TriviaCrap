.class public Lcom/etermax/chat/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Long;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/etermax/chat/a/a/g;->a:J

    .line 21
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/etermax/chat/a/a/g;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/etermax/chat/a/a/g;->d:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/chat/a/a/g;->k:Z

    .line 83
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/etermax/chat/a/a/g;->a:J

    .line 29
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/etermax/chat/a/a/g;->i:Ljava/lang/Long;

    .line 107
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/etermax/chat/a/a/g;->e:Ljava/lang/String;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/chat/a/a/g;->k:Z

    .line 56
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/etermax/chat/a/a/g;->k:Z

    .line 91
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/etermax/chat/a/a/g;->b:J

    return-wide v0
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/etermax/chat/a/a/g;->b:J

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/chat/a/a/g;->k:Z

    .line 38
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/etermax/chat/a/a/g;->f:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/chat/a/a/g;->k:Z

    .line 65
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/etermax/chat/a/a/g;->c:J

    return-wide v0
.end method

.method public c(J)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/etermax/chat/a/a/g;->c:J

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/chat/a/a/g;->k:Z

    .line 47
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/etermax/chat/a/a/g;->h:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/etermax/chat/a/a/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(J)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/etermax/chat/a/a/g;->g:J

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/chat/a/a/g;->k:Z

    .line 74
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/etermax/chat/a/a/g;->j:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/chat/a/a/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/etermax/chat/a/a/g;->g:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/etermax/chat/a/a/g;->d:I

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/etermax/chat/a/a/g;->k:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/chat/a/a/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/etermax/chat/a/a/g;->i:Ljava/lang/Long;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/etermax/chat/a/a/g;->j:Ljava/lang/String;

    return-object v0
.end method
