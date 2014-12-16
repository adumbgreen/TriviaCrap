.class public final Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;
.super Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;
.source "SourceFile"


# static fields
.field private static final sContentPattern:Ljava/util/regex/Pattern;

.field private static final sMetaPattern:Ljava/util/regex/Pattern;

.field private static final sNamePattern:Ljava/util/regex/Pattern;


# instance fields
.field private final mResponseBody:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "(?mi)<meta[\\s]+([^>]+)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->sMetaPattern:Ljava/util/regex/Pattern;

    .line 23
    const-string v0, "(?i)[\\s]*name[\\s]*=[\\s]*\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->sNamePattern:Ljava/util/regex/Pattern;

    .line 24
    const-string v0, "(?i)[\\s]*content[\\s]*=[\\s]*\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->sContentPattern:Ljava/util/regex/Pattern;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/lifestreet/android/lsmsdk/SlotContext;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/AbstractSlotResponse;-><init>(Lcom/lifestreet/android/lsmsdk/SlotContext;)V

    .line 31
    iput-object p2, p0, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->mResponseBody:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private getNetworkParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 84
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 87
    const-string v4, "Parameter-"

    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "HTML"

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->mResponseBody:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-object v2
.end method

.method private getNetworkType(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    const-string v1, "LSM"

    .line 67
    const-string v0, "NetworkType"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    if-eqz v0, :cond_1

    .line 69
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    const-string v1, "LSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->mResponseBody:Ljava/lang/String;

    const-string v2, "mraid"

    invoke-static {v1, v2}, Lcom/lifestreet/android/lsmsdk/commons/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v0, "MRAID"

    .line 78
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private parseAdsParams(Ljava/util/Map;)Lcom/lifestreet/android/lsmsdk/AdsParams;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lifestreet/android/lsmsdk/AdsParams;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 56
    const-string v0, "requestId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    if-eqz v0, :cond_0

    .line 58
    new-instance v1, Lcom/lifestreet/android/lsmsdk/AdsParams;

    invoke-direct {v1, v0}, Lcom/lifestreet/android/lsmsdk/AdsParams;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 61
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private parseHtmlMetaParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 101
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 103
    sget-object v0, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->sMetaPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 104
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    sget-object v0, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->sNamePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_1
    sget-object v5, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->sContentPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    :goto_2
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_1
    return-object v3

    :cond_2
    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private parseNetworks(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lifestreet/android/lsmsdk/AdNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->getNetworkType(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-direct {p0, p1}, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->getNetworkParameters(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 49
    invoke-virtual {p0, p1, v1, v2}, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->createNetworkInstanceFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)Lcom/lifestreet/android/lsmsdk/AdNetwork;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-object v0
.end method


# virtual methods
.method public parse()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->mResponseBody:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->parseHtmlMetaParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->parseNetworks(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->setNetworks(Ljava/util/List;)V

    .line 39
    invoke-direct {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->parseAdsParams(Ljava/util/Map;)Lcom/lifestreet/android/lsmsdk/AdsParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lifestreet/android/lsmsdk/SlotHtmlResponse;->setAdsParams(Lcom/lifestreet/android/lsmsdk/AdsParams;)V

    .line 40
    return-void
.end method
