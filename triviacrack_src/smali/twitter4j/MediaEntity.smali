.class public interface abstract Ltwitter4j/MediaEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltwitter4j/URLEntity;


# virtual methods
.method public abstract getId()J
.end method

.method public abstract getMediaURL()Ljava/lang/String;
.end method

.method public abstract getMediaURLHttps()Ljava/lang/String;
.end method

.method public abstract getSizes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
.end method
