.class public Lcom/etermax/tools/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->a:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->b:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->c:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->d:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->e:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->f:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->g:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->h:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->i:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->j:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 181
    const-string v0, "|"

    const-string v1, "\\|"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/etermax/tools/a/a/e;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "And-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->a:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/etermax/tools/a/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->b:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 81
    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->c:Ljava/lang/String;

    .line 82
    return-void

    .line 81
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/etermax/tools/a/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->d:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 99
    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->e:Ljava/lang/String;

    .line 100
    return-void

    .line 99
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/etermax/tools/a/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->f:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 148
    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->j:Ljava/lang/String;

    .line 149
    return-void

    .line 148
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/etermax/tools/a/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->g:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/etermax/tools/a/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->h:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/etermax/tools/a/a/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/a/a/d;->i:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 156
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget-object v1, p0, Lcom/etermax/tools/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget-object v1, p0, Lcom/etermax/tools/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget-object v1, p0, Lcom/etermax/tools/a/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget-object v1, p0, Lcom/etermax/tools/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    iget-object v1, p0, Lcom/etermax/tools/a/a/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    iget-object v1, p0, Lcom/etermax/tools/a/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v1, p0, Lcom/etermax/tools/a/a/d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    iget-object v1, p0, Lcom/etermax/tools/a/a/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    iget-object v1, p0, Lcom/etermax/tools/a/a/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget-object v1, p0, Lcom/etermax/tools/a/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
