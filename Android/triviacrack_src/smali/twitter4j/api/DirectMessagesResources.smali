.class public interface abstract Ltwitter4j/api/DirectMessagesResources;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract destroyDirectMessage(J)Ltwitter4j/DirectMessage;
.end method

.method public abstract getDMImageAsStream(Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract getDirectMessages()Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirectMessages(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSentDirectMessages()Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSentDirectMessages(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendDirectMessage(JLjava/lang/String;)Ltwitter4j/DirectMessage;
.end method

.method public abstract sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/DirectMessage;
.end method

.method public abstract showDirectMessage(J)Ltwitter4j/DirectMessage;
.end method
