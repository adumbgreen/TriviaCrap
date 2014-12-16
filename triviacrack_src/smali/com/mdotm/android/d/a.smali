.class public Lcom/mdotm/android/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "0"

    iput-object v0, p0, Lcom/mdotm/android/d/a;->d:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/d/a;->e:Z

    .line 17
    const-string v0, "1"

    iput-object v0, p0, Lcom/mdotm/android/d/a;->g:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mdotm/android/d/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mdotm/android/d/a;->d:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/mdotm/android/d/a;->f:Z

    .line 39
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mdotm/android/d/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mdotm/android/d/a;->a:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/mdotm/android/d/a;->e:Z

    .line 64
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mdotm/android/d/a;->c:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/mdotm/android/d/a;->f:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/mdotm/android/d/a;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mdotm/android/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/mdotm/android/d/a;->b:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mdotm/android/d/a;->c:Ljava/lang/String;

    return-object v0
.end method
