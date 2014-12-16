.class public Lcom/etermax/gamescommon/b/aj;
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
    .line 17
    const-string v0, "logout_guest"

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    const-string v0, "option_selected"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method
