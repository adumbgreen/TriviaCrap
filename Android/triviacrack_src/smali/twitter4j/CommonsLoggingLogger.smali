.class final Ltwitter4j/CommonsLoggingLogger;
.super Ltwitter4j/Logger;
.source "SourceFile"


# instance fields
.field private final LOGGER:Lorg/apache/commons/logging/Log;


# direct methods
.method constructor <init>(Lorg/apache/commons/logging/Log;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ltwitter4j/Logger;-><init>()V

    .line 28
    iput-object p1, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    .line 29
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 125
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Ltwitter4j/CommonsLoggingLogger;->LOGGER:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 109
    return-void
.end method
