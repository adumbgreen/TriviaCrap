.class Lcom/amazon/device/ads/BridgeSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/amazon/device/ads/BridgeSelector;


# instance fields
.field private bridgesForCT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private bridgesForPattern:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private bridgesForResourcePattern:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private patterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/amazon/device/ads/BridgeSelector;

    invoke-direct {v0}, Lcom/amazon/device/ads/BridgeSelector;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/BridgeSelector;->instance:Lcom/amazon/device/ads/BridgeSelector;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/amazon/device/ads/BridgeSelector;->initialize()V

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/BridgeSelector;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/amazon/device/ads/BridgeSelector;->instance:Lcom/amazon/device/ads/BridgeSelector;

    return-object v0
.end method

.method private getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->patterns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 163
    if-nez v0, :cond_0

    .line 165
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->patterns:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 67
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public addBridgeFactory(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 84
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public addBridgeFactoryForResourceLoad(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 101
    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public getBridgeFactories(Lcom/amazon/device/ads/AAXCreative;)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AAXCreative;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getBridgeFactories(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/BridgeSelector;->getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 130
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 136
    :cond_1
    return-object v1
.end method

.method public getBridgeFactoriesForResourceLoad(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 142
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/BridgeSelector;->getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 145
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 146
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 151
    :cond_1
    return-object v1
.end method

.method initialize()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->patterns:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/amazon/device/ads/MraidAdSDKBridgeFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MraidAdSDKBridgeFactory;-><init>()V

    .line 50
    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 51
    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 52
    sget-object v1, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 54
    const-string v1, "<[Ss][Cc][Rr][Ii][Pp][Tt](\\s[^>]*\\s|\\s)[Ss][Rr][Cc]\\s*=\\s*[\"\']mraid.js[\"\']"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactory(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 55
    const-string v1, ".*\\Wmraid.js$|^mraid.js$"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactoryForResourceLoad(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 56
    return-void
.end method
