.class final Ltwitter4j/StdOutLoggerFactory;
.super Ltwitter4j/LoggerFactory;
.source "SourceFile"


# static fields
.field private static final SINGLETON:Ltwitter4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ltwitter4j/StdOutLogger;

    invoke-direct {v0}, Ltwitter4j/StdOutLogger;-><init>()V

    sput-object v0, Ltwitter4j/StdOutLoggerFactory;->SINGLETON:Ltwitter4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ltwitter4j/LoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;
    .locals 1
    .parameter

    .prologue
    .line 31
    sget-object v0, Ltwitter4j/StdOutLoggerFactory;->SINGLETON:Ltwitter4j/Logger;

    return-object v0
.end method
