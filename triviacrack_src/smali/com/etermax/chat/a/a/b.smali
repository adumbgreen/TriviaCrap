.class public Lcom/etermax/chat/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/etermax/chat/a/a/b;->a:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/etermax/chat/a/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/etermax/chat/a/a/b;->c:I

    .line 49
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/etermax/chat/a/a/b;->a:J

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/etermax/chat/a/a/b;->e:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etermax/chat/a/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/etermax/chat/a/a/b;->d:I

    .line 57
    return-void
.end method

.method public b(J)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/etermax/chat/a/a/b;->b:J

    .line 41
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/etermax/chat/a/a/b;->f:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/etermax/chat/a/a/b;->a:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/etermax/chat/a/a/b;->b:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/etermax/chat/a/a/b;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/etermax/chat/a/a/b;->d:I

    return v0
.end method
