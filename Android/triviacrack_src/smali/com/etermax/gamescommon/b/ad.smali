.class public Lcom/etermax/gamescommon/b/ad;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 165
    const-string v0, "login"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/ad;->e(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 140
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/b/ad;->e(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 131
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/b/ad;->e(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p2, p3}, Lcom/etermax/gamescommon/b/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 144
    const-string v0, "error"

    .line 146
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 147
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_0
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 169
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method
