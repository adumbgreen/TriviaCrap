.class public Lcom/etermax/gamescommon/b/e;
.super Lcom/etermax/tools/f/a/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/b/h;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/etermax/tools/f/a/a;-><init>()V

    .line 79
    const-string v0, "lang"

    iput-object v0, p0, Lcom/etermax/gamescommon/b/e;->a:Ljava/lang/String;

    .line 80
    const-string v0, "type"

    iput-object v0, p0, Lcom/etermax/gamescommon/b/e;->b:Ljava/lang/String;

    .line 81
    const-string v0, "from"

    iput-object v0, p0, Lcom/etermax/gamescommon/b/e;->c:Ljava/lang/String;

    .line 82
    const-string v0, "action"

    iput-object v0, p0, Lcom/etermax/gamescommon/b/e;->d:Ljava/lang/String;

    .line 83
    const-string v0, "page_number"

    iput-object v0, p0, Lcom/etermax/gamescommon/b/e;->e:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/etermax/gamescommon/b/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/e;->e(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/b/f;)V
    .locals 2
    .parameter

    .prologue
    .line 107
    const-string v0, "action"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/b/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/b/g;)V
    .locals 2
    .parameter

    .prologue
    .line 103
    const-string v0, "from"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/b/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/b/i;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/etermax/gamescommon/b/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/b/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public b()[Lcom/etermax/tools/f/c;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/gamescommon/b/e;->P:[Lcom/etermax/tools/f/c;

    return-object v0
.end method
