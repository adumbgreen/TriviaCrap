.class public abstract Lcom/etermax/gamescommon/dashboard/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/dashboard/a/b/b;
.implements Lcom/etermax/gamescommon/dashboard/a/c/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSectionType()I
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 25
    .line 27
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a;->isMyTurn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a;->isPendingApproval()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    :goto_1
    return v1

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    const/4 v0, 0x2

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a;->isPendingApproval()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected abstract isActive()Z
.end method

.method protected abstract isEnded()Z
.end method

.method public isImageTileLeft()Z
    .locals 2

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a;->isEnded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a;->userWon()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a;->getSectionType()I

    move-result v1

    if-nez v1, :cond_2

    .line 15
    :cond_1
    const/4 v0, 0x1

    .line 18
    :cond_2
    return v0
.end method

.method protected abstract isMyTurn()Z
.end method

.method protected abstract isPendingApproval()Z
.end method

.method protected abstract userWon()Z
.end method
