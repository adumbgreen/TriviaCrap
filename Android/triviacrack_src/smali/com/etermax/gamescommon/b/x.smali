.class public Lcom/etermax/gamescommon/b/x;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "guest_signup"

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
