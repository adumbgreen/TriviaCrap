.class public interface abstract Lcom/etermax/gamescommon/profile/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/k;


# virtual methods
.method public abstract getConsultedUserId()J
.end method

.method public abstract getFacebookFriendsIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBlocked()Z
.end method

.method public abstract isFriend()Z
.end method

.method public abstract setBlocked(Z)V
.end method

.method public abstract setFriend(Z)V
.end method
