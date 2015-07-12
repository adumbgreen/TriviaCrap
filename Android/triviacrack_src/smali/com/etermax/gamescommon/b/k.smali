.class public Lcom/etermax/gamescommon/b/k;
.super Lcom/etermax/gamescommon/b/w;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "click_no_thanks"

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    const-string v0, "reasonPopup"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
