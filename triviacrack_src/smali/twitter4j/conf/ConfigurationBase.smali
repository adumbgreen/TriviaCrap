.class Ltwitter4j/conf/ConfigurationBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/conf/Configuration;


# static fields
.field private static final instances:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/conf/ConfigurationBase;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x55b3f2b9f8085720L


# instance fields
.field private applicationOnlyAuthEnabled:Z

.field private asyncNumThreads:I

.field private contributingTo:J

.field private daemonEnabled:Z

.field private debug:Z

.field private dispatcherImpl:Ljava/lang/String;

.field private httpConf:Ltwitter4j/HttpClientConfiguration;

.field private httpRetryCount:I

.field private httpRetryIntervalSeconds:I

.field private httpStreamingReadTimeout:I

.field private includeEntitiesEnabled:Z

.field private includeMyRetweetEnabled:Z

.field private jsonStoreEnabled:Z

.field private loggerFactory:Ljava/lang/String;

.field private mbeanEnabled:Z

.field private mediaProvider:Ljava/lang/String;

.field private mediaProviderAPIKey:Ljava/lang/String;

.field private mediaProviderParameters:Ljava/util/Properties;

.field private oAuth2AccessToken:Ljava/lang/String;

.field private oAuth2InvalidateTokenURL:Ljava/lang/String;

.field private oAuth2TokenType:Ljava/lang/String;

.field private oAuth2TokenURL:Ljava/lang/String;

.field private oAuthAccessToken:Ljava/lang/String;

.field private oAuthAccessTokenSecret:Ljava/lang/String;

.field private oAuthAccessTokenURL:Ljava/lang/String;

.field private oAuthAuthenticationURL:Ljava/lang/String;

.field private oAuthAuthorizationURL:Ljava/lang/String;

.field private oAuthConsumerKey:Ljava/lang/String;

.field private oAuthConsumerSecret:Ljava/lang/String;

.field private oAuthRequestTokenURL:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private restBaseURL:Ljava/lang/String;

.field private siteStreamBaseURL:Ljava/lang/String;

.field private stallWarningsEnabled:Z

.field private streamBaseURL:Ljava/lang/String;

.field private trimUserEnabled:Z

.field private user:Ljava/lang/String;

.field private userStreamBaseURL:Ljava/lang/String;

.field private userStreamRepliesAllEnabled:Z

.field private userStreamWithFollowingsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v8, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    .line 37
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    .line 41
    const v0, 0x9c40

    iput v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    .line 42
    iput v8, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    .line 45
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    .line 51
    const-string v0, "https://api.twitter.com/oauth/request_token"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    .line 52
    const-string v0, "https://api.twitter.com/oauth/authorize"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    .line 53
    const-string v0, "https://api.twitter.com/oauth/access_token"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    .line 54
    const-string v0, "https://api.twitter.com/oauth/authenticate"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    .line 55
    const-string v0, "https://api.twitter.com/oauth2/token"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    .line 56
    const-string v0, "https://api.twitter.com/oauth2/invalidate_token"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    .line 58
    const-string v0, "https://api.twitter.com/1.1/"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    .line 59
    const-string v0, "https://stream.twitter.com/1.1/"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    .line 60
    const-string v0, "https://userstream.twitter.com/1.1/"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    .line 61
    const-string v0, "https://sitestream.twitter.com/1.1/"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    .line 63
    const-string v0, "twitter4j.DispatcherImpl"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    .line 64
    iput v9, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    .line 66
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    .line 70
    iput-boolean v9, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    .line 71
    iput-boolean v9, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    .line 72
    iput-boolean v8, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    .line 74
    iput-boolean v8, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    .line 76
    iput-boolean v8, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    .line 78
    iput-boolean v8, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    .line 79
    iput-boolean v9, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    .line 80
    iput-boolean v9, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    .line 82
    iput-boolean v8, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    .line 84
    const-string v0, "TWITTER"

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    .line 87
    iput-boolean v9, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    .line 91
    new-instance v0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    const/4 v5, -0x1

    const/16 v6, 0x4e20

    const v7, 0x1d4c0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 100
    return-void
.end method

.method static synthetic access$000(Ltwitter4j/conf/ConfigurationBase;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    return v0
.end method

.method static synthetic access$100(Ltwitter4j/conf/ConfigurationBase;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    return v0
.end method

.method private static cacheInstance(Ltwitter4j/conf/ConfigurationBase;)V
    .locals 1
    .parameter

    .prologue
    .line 867
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_0
    return-void
.end method

.method static fixURL(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 687
    if-nez p1, :cond_0

    .line 688
    const/4 v0, 0x0

    .line 698
    :goto_0
    return-object v0

    .line 690
    :cond_0
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 691
    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    .line 692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url should contain \'://\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_1
    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 695
    if-eqz p0, :cond_2

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 698
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getInstance(Ltwitter4j/conf/ConfigurationBase;)Ltwitter4j/conf/ConfigurationBase;
    .locals 2
    .parameter

    .prologue
    .line 878
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 879
    sget-object v0, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    :goto_0
    return-object p0

    :cond_0
    sget-object v1, Ltwitter4j/conf/ConfigurationBase;->instances:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/conf/ConfigurationBase;

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method protected cacheInstance()V
    .locals 0

    .prologue
    .line 873
    invoke-static {p0}, Ltwitter4j/conf/ConfigurationBase;->cacheInstance(Ltwitter4j/conf/ConfigurationBase;)V

    .line 874
    return-void
.end method

.method public dumpConfiguration()V
    .locals 9

    .prologue
    .line 226
    const-class v0, Ltwitter4j/conf/ConfigurationBase;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v2

    .line 227
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eqz v0, :cond_1

    .line 228
    const-class v0, Ltwitter4j/conf/ConfigurationBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 229
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 231
    :try_start_0
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 232
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 233
    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "oAuthConsumerSecret|oAuthAccessTokenSecret|password"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 234
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "."

    const-string v7, "*"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 241
    :cond_1
    return-void

    .line 237
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 704
    if-ne p0, p1, :cond_1

    .line 770
    :cond_0
    :goto_0
    return v0

    .line 705
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 707
    :cond_3
    check-cast p1, Ltwitter4j/conf/ConfigurationBase;

    .line 709
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 710
    :cond_4
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 711
    :cond_5
    iget-wide v2, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    iget-wide v4, p1, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    .line 712
    :cond_6
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 713
    :cond_7
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    .line 714
    :cond_8
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    .line 715
    :cond_9
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    .line 716
    :cond_a
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    .line 717
    :cond_b
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_0

    .line 718
    :cond_c
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    if-eq v2, v3, :cond_d

    move v0, v1

    goto :goto_0

    .line 719
    :cond_d
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    if-eq v2, v3, :cond_e

    move v0, v1

    goto :goto_0

    .line 720
    :cond_e
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    if-eq v2, v3, :cond_f

    move v0, v1

    goto :goto_0

    .line 721
    :cond_f
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    if-eq v2, v3, :cond_10

    move v0, v1

    goto :goto_0

    .line 722
    :cond_10
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    if-eq v2, v3, :cond_11

    move v0, v1

    goto/16 :goto_0

    .line 723
    :cond_11
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    if-eq v2, v3, :cond_12

    move v0, v1

    goto/16 :goto_0

    .line 724
    :cond_12
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    if-eq v2, v3, :cond_13

    move v0, v1

    goto/16 :goto_0

    .line 725
    :cond_13
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    move v0, v1

    .line 726
    goto/16 :goto_0

    .line 725
    :cond_15
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 727
    :cond_16
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    if-eqz v2, :cond_18

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    if-nez v2, :cond_17

    .line 728
    :cond_19
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    move v0, v1

    .line 729
    goto/16 :goto_0

    .line 728
    :cond_1b
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-nez v2, :cond_1a

    .line 730
    :cond_1c
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move v0, v1

    .line 731
    goto/16 :goto_0

    .line 730
    :cond_1e
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-nez v2, :cond_1d

    .line 732
    :cond_1f
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_20
    move v0, v1

    .line 733
    goto/16 :goto_0

    .line 732
    :cond_21
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-nez v2, :cond_20

    .line 734
    :cond_22
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v2, :cond_24

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v2, v3}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_23
    move v0, v1

    .line 735
    goto/16 :goto_0

    .line 734
    :cond_24
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-nez v2, :cond_23

    .line 736
    :cond_25
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-eqz v2, :cond_27

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_26
    move v0, v1

    .line 737
    goto/16 :goto_0

    .line 736
    :cond_27
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-nez v2, :cond_26

    .line 738
    :cond_28
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_29
    move v0, v1

    .line 739
    goto/16 :goto_0

    .line 738
    :cond_2a
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-nez v2, :cond_29

    .line 740
    :cond_2b
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_2c
    move v0, v1

    .line 741
    goto/16 :goto_0

    .line 740
    :cond_2d
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-nez v2, :cond_2c

    .line 742
    :cond_2e
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-eqz v2, :cond_30

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    :cond_2f
    move v0, v1

    .line 743
    goto/16 :goto_0

    .line 742
    :cond_30
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-nez v2, :cond_2f

    .line 744
    :cond_31
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    :cond_32
    move v0, v1

    .line 745
    goto/16 :goto_0

    .line 744
    :cond_33
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-nez v2, :cond_32

    .line 746
    :cond_34
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    :cond_35
    move v0, v1

    .line 747
    goto/16 :goto_0

    .line 746
    :cond_36
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-nez v2, :cond_35

    .line 748
    :cond_37
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    :cond_38
    move v0, v1

    .line 749
    goto/16 :goto_0

    .line 748
    :cond_39
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-nez v2, :cond_38

    .line 750
    :cond_3a
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    :cond_3b
    move v0, v1

    .line 751
    goto/16 :goto_0

    .line 750
    :cond_3c
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-nez v2, :cond_3b

    .line 752
    :cond_3d
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    :cond_3e
    move v0, v1

    .line 753
    goto/16 :goto_0

    .line 752
    :cond_3f
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-nez v2, :cond_3e

    .line 754
    :cond_40
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v2, :cond_42

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    :cond_41
    move v0, v1

    .line 755
    goto/16 :goto_0

    .line 754
    :cond_42
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-nez v2, :cond_41

    .line 756
    :cond_43
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_45

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    :cond_44
    move v0, v1

    .line 757
    goto/16 :goto_0

    .line 756
    :cond_45
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-nez v2, :cond_44

    .line 758
    :cond_46
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v2, :cond_48

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    :cond_47
    move v0, v1

    .line 759
    goto/16 :goto_0

    .line 758
    :cond_48
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-nez v2, :cond_47

    .line 760
    :cond_49
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    :cond_4a
    move v0, v1

    goto/16 :goto_0

    :cond_4b
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-nez v2, :cond_4a

    .line 761
    :cond_4c
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    :cond_4d
    move v0, v1

    goto/16 :goto_0

    :cond_4e
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-nez v2, :cond_4d

    .line 762
    :cond_4f
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_51

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    :cond_50
    move v0, v1

    .line 763
    goto/16 :goto_0

    .line 762
    :cond_51
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-nez v2, :cond_50

    .line 764
    :cond_52
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_54

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    :cond_53
    move v0, v1

    .line 765
    goto/16 :goto_0

    .line 764
    :cond_54
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-nez v2, :cond_53

    .line 766
    :cond_55
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v2, :cond_57

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    :cond_56
    move v0, v1

    goto/16 :goto_0

    :cond_57
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-nez v2, :cond_56

    .line 767
    :cond_58
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 768
    goto/16 :goto_0

    .line 767
    :cond_59
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final getAsyncNumThreads()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    return v0
.end method

.method public final getContributingTo()J
    .locals 2

    .prologue
    .line 457
    iget-wide v0, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    return-wide v0
.end method

.method public getDispatcherImpl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    return-object v0
.end method

.method public getHttpStreamingReadTimeout()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    return v0
.end method

.method public getLoggerFactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProviderAPIKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProviderParameters()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    return-object v0
.end method

.method public getOAuth2AccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuth2InvalidateTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuth2TokenType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuth2TokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAccessTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthenticationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthAuthorizationURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getOAuthConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getOAuthRequestTokenURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getRestBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStreamBaseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 775
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 776
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 777
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 778
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v3

    .line 779
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    add-int/2addr v0, v3

    .line 780
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    add-int/2addr v0, v3

    .line 781
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    add-int/2addr v0, v3

    .line 782
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v3

    .line 783
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v3

    .line 784
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v3

    .line 785
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v3

    .line 786
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v3

    .line 787
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v3

    .line 788
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v3

    .line 789
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v3

    .line 790
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v3

    .line 791
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v3

    .line 792
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v3

    .line 793
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v3

    .line 794
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v3

    .line 795
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v3

    .line 796
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v3

    .line 797
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v3

    .line 798
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v3

    .line 799
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    add-int/2addr v0, v3

    .line 800
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v3

    .line 801
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    iget-wide v5, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    .line 802
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    if-eqz v0, :cond_16

    move v0, v1

    :goto_16
    add-int/2addr v0, v3

    .line 803
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    if-eqz v0, :cond_17

    move v0, v1

    :goto_17
    add-int/2addr v0, v3

    .line 804
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    if-eqz v0, :cond_18

    move v0, v1

    :goto_18
    add-int/2addr v0, v3

    .line 805
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    if-eqz v0, :cond_19

    move v0, v1

    :goto_19
    add-int/2addr v0, v3

    .line 806
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_1a
    add-int/2addr v0, v3

    .line 807
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1b
    add-int/2addr v0, v3

    .line 808
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_1c
    add-int/2addr v0, v3

    .line 809
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_1d
    add-int/2addr v0, v3

    .line 810
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_1e
    add-int/2addr v0, v3

    .line 811
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1f
    add-int/2addr v0, v3

    .line 812
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_20
    add-int/2addr v0, v3

    .line 813
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    if-eqz v0, :cond_21

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->hashCode()I

    move-result v0

    :goto_21
    add-int/2addr v0, v3

    .line 814
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    if-eqz v3, :cond_22

    :goto_22
    add-int/2addr v0, v1

    .line 815
    return v0

    :cond_0
    move v0, v2

    .line 775
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 776
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 777
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 778
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 782
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 783
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 784
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 785
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 786
    goto/16 :goto_8

    :cond_9
    move v0, v2

    .line 787
    goto/16 :goto_9

    :cond_a
    move v0, v2

    .line 788
    goto/16 :goto_a

    :cond_b
    move v0, v2

    .line 789
    goto/16 :goto_b

    :cond_c
    move v0, v2

    .line 790
    goto/16 :goto_c

    :cond_d
    move v0, v2

    .line 791
    goto/16 :goto_d

    :cond_e
    move v0, v2

    .line 792
    goto/16 :goto_e

    :cond_f
    move v0, v2

    .line 793
    goto/16 :goto_f

    :cond_10
    move v0, v2

    .line 794
    goto/16 :goto_10

    :cond_11
    move v0, v2

    .line 795
    goto/16 :goto_11

    :cond_12
    move v0, v2

    .line 796
    goto/16 :goto_12

    :cond_13
    move v0, v2

    .line 797
    goto/16 :goto_13

    :cond_14
    move v0, v2

    .line 798
    goto/16 :goto_14

    :cond_15
    move v0, v2

    .line 800
    goto/16 :goto_15

    :cond_16
    move v0, v2

    .line 802
    goto/16 :goto_16

    :cond_17
    move v0, v2

    .line 803
    goto/16 :goto_17

    :cond_18
    move v0, v2

    .line 804
    goto/16 :goto_18

    :cond_19
    move v0, v2

    .line 805
    goto/16 :goto_19

    :cond_1a
    move v0, v2

    .line 806
    goto/16 :goto_1a

    :cond_1b
    move v0, v2

    .line 807
    goto/16 :goto_1b

    :cond_1c
    move v0, v2

    .line 808
    goto/16 :goto_1c

    :cond_1d
    move v0, v2

    .line 809
    goto/16 :goto_1d

    :cond_1e
    move v0, v2

    .line 810
    goto/16 :goto_1e

    :cond_1f
    move v0, v2

    .line 811
    goto/16 :goto_1f

    :cond_20
    move v0, v2

    .line 812
    goto :goto_20

    :cond_21
    move v0, v2

    .line 813
    goto :goto_21

    :cond_22
    move v1, v2

    .line 814
    goto :goto_22
.end method

.method public isApplicationOnlyAuthEnabled()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    return v0
.end method

.method public isDaemonEnabled()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    return v0
.end method

.method public final isDebugEnabled()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    return v0
.end method

.method public isIncludeEntitiesEnabled()Z
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    return v0
.end method

.method public isIncludeMyRetweetEnabled()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    return v0
.end method

.method public isJSONStoreEnabled()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    return v0
.end method

.method public isMBeanEnabled()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    return v0
.end method

.method public isStallWarningsEnabled()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    return v0
.end method

.method public isTrimUserEnabled()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    return v0
.end method

.method public isUserStreamRepliesAllEnabled()Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    return v0
.end method

.method public isUserStreamWithFollowingsEnabled()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    return v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 888
    invoke-static {p0}, Ltwitter4j/conf/ConfigurationBase;->getInstance(Ltwitter4j/conf/ConfigurationBase;)Ltwitter4j/conf/ConfigurationBase;

    move-result-object v0

    return-object v0
.end method

.method protected final setApplicationOnlyAuthEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    .line 657
    return-void
.end method

.method protected final setAsyncNumThreads(I)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    .line 453
    return-void
.end method

.method protected final setContributingTo(J)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-wide p1, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    .line 462
    return-void
.end method

.method protected setDaemonEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 599
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    .line 600
    return-void
.end method

.method protected final setDebug(Z)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    .line 250
    return-void
.end method

.method protected final setDispatcherImpl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    .line 561
    return-void
.end method

.method protected final setGZIPEnabled(Z)V
    .locals 10
    .parameter

    .prologue
    .line 288
    new-instance v0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    move-object v1, p0

    move v9, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 297
    return-void
.end method

.method protected final setHttpConnectionTimeout(I)V
    .locals 10
    .parameter

    .prologue
    .line 350
    new-instance v0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 359
    return-void
.end method

.method protected final setHttpProxyHost(Ljava/lang/String;)V
    .locals 10
    .parameter

    .prologue
    .line 302
    new-instance v0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 311
    return-void
.end method

.method protected final setHttpProxyPassword(Ljava/lang/String;)V
    .locals 10
    .parameter

    .prologue
    .line 326
    new-instance v0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 335
    return-void
.end method

.method protected final setHttpProxyPort(I)V
    .locals 10
    .parameter

    .prologue
    .line 338
    new-instance v0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 347
    return-void
.end method

.method protected final setHttpProxyUser(Ljava/lang/String;)V
    .locals 10
    .parameter

    .prologue
    .line 314
    new-instance v0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 323
    return-void
.end method

.method protected final setHttpReadTimeout(I)V
    .locals 10
    .parameter

    .prologue
    .line 362
    new-instance v0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v8

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v1, p0

    move v7, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 371
    return-void
.end method

.method protected final setHttpRetryCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    .line 384
    return-void
.end method

.method protected final setHttpRetryIntervalSeconds(I)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    .line 388
    return-void
.end method

.method protected final setHttpStreamingReadTimeout(I)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput p1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    .line 380
    return-void
.end method

.method protected setIncludeEntitiesEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    .line 575
    return-void
.end method

.method public setIncludeMyRetweetEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    .line 587
    return-void
.end method

.method protected final setJSONStoreEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 611
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    .line 612
    return-void
.end method

.method protected final setLoggerFactory(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    .line 579
    return-void
.end method

.method protected final setMBeanEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 620
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    .line 621
    return-void
.end method

.method protected final setMediaProvider(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    .line 666
    return-void
.end method

.method protected final setMediaProviderAPIKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    .line 675
    return-void
.end method

.method protected final setMediaProviderParameters(Ljava/util/Properties;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    .line 684
    return-void
.end method

.method protected final setOAuth2AccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    .line 444
    return-void
.end method

.method protected final setOAuth2InvalidateTokenURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    .line 552
    return-void
.end method

.method protected final setOAuth2TokenType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    .line 435
    return-void
.end method

.method protected final setOAuth2TokenURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    .line 543
    return-void
.end method

.method protected final setOAuthAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    .line 417
    return-void
.end method

.method protected final setOAuthAccessTokenSecret(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    .line 426
    return-void
.end method

.method protected final setOAuthAccessTokenURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    .line 525
    return-void
.end method

.method protected final setOAuthAuthenticationURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    .line 534
    return-void
.end method

.method protected final setOAuthAuthorizationURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    .line 516
    return-void
.end method

.method protected final setOAuthConsumerKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    .line 399
    return-void
.end method

.method protected final setOAuthConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    .line 408
    return-void
.end method

.method protected final setOAuthRequestTokenURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    .line 507
    return-void
.end method

.method protected final setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    .line 273
    return-void
.end method

.method protected final setPrettyDebugEnabled(Z)V
    .locals 10
    .parameter

    .prologue
    .line 276
    new-instance v0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyHost()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyUser()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPassword()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpProxyPort()I

    move-result v5

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpConnectionTimeout()I

    move-result v6

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->getHttpReadTimeout()I

    move-result v7

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v1}, Ltwitter4j/HttpClientConfiguration;->isGZIPEnabled()Z

    move-result v9

    move-object v1, p0

    move v8, p1

    invoke-direct/range {v0 .. v9}, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;-><init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V

    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    .line 285
    return-void
.end method

.method protected final setRestBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    .line 471
    return-void
.end method

.method protected final setSiteStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    .line 498
    return-void
.end method

.method protected final setStallWarningsEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    .line 648
    return-void
.end method

.method protected final setStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setTrimUserEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    .line 604
    return-void
.end method

.method protected final setUser(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    .line 259
    return-void
.end method

.method protected final setUserStreamBaseURL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    .line 489
    return-void
.end method

.method protected final setUserStreamRepliesAllEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    .line 635
    return-void
.end method

.method protected final setUserStreamWithFollowingsEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 638
    iput-boolean p1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    .line 639
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurationBase{debug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->debug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpConf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpConf:Ltwitter4j/HttpClientConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpStreamingReadTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpStreamingReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpRetryIntervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthConsumerKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthConsumerSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthConsumerSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthAccessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthAccessTokenSecret=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuth2TokenType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuth2AccessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2AccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthRequestTokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthRequestTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthAuthorizationURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthorizationURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthAccessTokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAccessTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuthAuthenticationURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuthAuthenticationURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuth2TokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2TokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oAuth2InvalidateTokenURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->oAuth2InvalidateTokenURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->restBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->streamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userStreamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", siteStreamBaseURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->siteStreamBaseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dispatcherImpl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->dispatcherImpl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", asyncNumThreads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase;->asyncNumThreads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loggerFactory=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->loggerFactory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contributingTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/conf/ConfigurationBase;->contributingTo:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeMyRetweetEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeMyRetweetEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeEntitiesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->includeEntitiesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trimUserEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->trimUserEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jsonStoreEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->jsonStoreEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mbeanEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->mbeanEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userStreamRepliesAllEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamRepliesAllEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userStreamWithFollowingsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->userStreamWithFollowingsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stallWarningsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->stallWarningsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applicationOnlyAuthEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->applicationOnlyAuthEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProvider=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProviderAPIKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderAPIKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProviderParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase;->mediaProviderParameters:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", daemonEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase;->daemonEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
