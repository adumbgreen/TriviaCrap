.class final Ltwitter4j/CommonsLoggingLoggerFactory;
.super Ltwitter4j/LoggerFactory;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ltwitter4j/LoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;
    .locals 2
    .parameter

    .prologue
    .line 30
    new-instance v0, Ltwitter4j/CommonsLoggingLogger;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/CommonsLoggingLogger;-><init>(Lorg/apache/commons/logging/Log;)V

    return-object v0
.end method
