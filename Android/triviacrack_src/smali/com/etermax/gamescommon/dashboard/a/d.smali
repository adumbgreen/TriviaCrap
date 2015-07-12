.class public interface abstract Lcom/etermax/gamescommon/dashboard/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getAppConfig()Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;
.end method

.method public abstract getGames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getLastChatActivity()Ljava/util/Date;
.end method

.method public abstract getNotificationId()Ljava/lang/String;
.end method

.method public abstract getSuggestedOpponents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTime()Ljava/util/Date;
.end method

.method public abstract getUnreadConversations()I
.end method
