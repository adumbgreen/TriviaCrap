.class public final Lcom/lifestreet/android/lsmsdk/ErrorReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mException:Ljava/lang/Throwable;

.field private final mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->mException:Ljava/lang/Throwable;

    .line 31
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->mMessage:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private getClassName(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method

.method private getErrorCode(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->NO_ERROR:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    .line 113
    instance-of v1, p1, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;

    if-eqz v1, :cond_1

    .line 114
    check-cast p1, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;

    .line 115
    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;->getErrorCode()Lcom/lifestreet/android/lsmsdk/ErrorCode;

    move-result-object v0

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/lifestreet/android/lsmsdk/ErrorCode;->toInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_1
    instance-of v1, p1, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    if-eqz v1, :cond_2

    .line 117
    check-cast p1, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    .line 118
    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->getErrorCode()Lcom/lifestreet/android/lsmsdk/ErrorCode;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    const-string v1, "Uncaught exception"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    sget-object v0, Lcom/lifestreet/android/lsmsdk/ErrorCode;->UNHANDLED_EXCEPTION:Lcom/lifestreet/android/lsmsdk/ErrorCode;

    goto :goto_0
.end method

.method private getLineNumber(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    return-object v0
.end method

.method private getPstTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd-yyyy HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 128
    const-string v1, "US/Pacific"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 129
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSlotContext(Ljava/lang/Throwable;)Lcom/lifestreet/android/lsmsdk/SlotContext;
    .locals 2
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    instance-of v1, p1, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;

    if-eqz v1, :cond_1

    .line 78
    check-cast p1, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;

    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/exceptions/SlotException;->getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v0

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    instance-of v1, p1, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    if-eqz v1, :cond_0

    .line 80
    check-cast p1, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;

    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/exceptions/AdapterException;->getSlotContext()Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v0

    goto :goto_0
.end method

.method private getSlotTag(Lcom/lifestreet/android/lsmsdk/SlotContext;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getSlotTag()Ljava/lang/String;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method


# virtual methods
.method public report()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->mException:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->getSlotContext(Ljava/lang/Throwable;)Lcom/lifestreet/android/lsmsdk/SlotContext;

    move-result-object v1

    .line 37
    const/4 v0, 0x1

    .line 38
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->isConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 42
    :cond_0
    if-eqz v0, :cond_1

    .line 44
    if-eqz v1, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/lifestreet/android/lsmsdk/SlotContext;->getSlotQueryParams()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 47
    :goto_0
    const-string v2, "slot"

    invoke-direct {p0, v1}, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->getSlotTag(Lcom/lifestreet/android/lsmsdk/SlotContext;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "sdkerror_class"

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->mException:Ljava/lang/Throwable;

    invoke-direct {p0, v2}, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->getClassName(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "sdkerrorline"

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->mException:Ljava/lang/Throwable;

    invoke-direct {p0, v2}, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->getLineNumber(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "sdkerror"

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->mException:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->mMessage:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->getErrorCode(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "sdkerror_reason"

    iget-object v2, p0, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->mException:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "sdkerror_time"

    invoke-direct {p0}, Lcom/lifestreet/android/lsmsdk/ErrorReporter;->getPstTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "http://mobile-android.lfstmedia.com/sdkerror"

    invoke-static {v1, v0}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->getUriWithQueryParams(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/lifestreet/android/lsmsdk/commons/LSMLogger;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report error URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 56
    sget-object v1, Lcom/lifestreet/android/lsmsdk/SlotController;->USER_AGENT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lifestreet/android/lsmsdk/commons/Utils;->httpGetUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    return-void

    .line 44
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method
