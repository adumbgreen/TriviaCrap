.class public Lcom/etermax/gamescommon/animations/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/etermax/gamescommon/resources/a;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/animations/iEterAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/a;->c:Ljava/util/HashMap;

    .line 56
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/animations/iEterAnimation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 189
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 192
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 194
    const-string v2, "Animation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    new-instance v1, Lcom/etermax/gamescommon/animations/v1/b;

    invoke-direct {v1, p1}, Lcom/etermax/gamescommon/animations/v1/b;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 196
    invoke-virtual {v1}, Lcom/etermax/gamescommon/animations/v1/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {p1}, Lcom/etermax/gamescommon/animations/v1/b;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 202
    :cond_2
    return-object v0
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/HashMap;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/animations/iEterAnimation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    packed-switch p2, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/animations/a;->a(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/etermax/gamescommon/resources/b;)Lcom/etermax/gamescommon/animations/d;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    .line 130
    :cond_0
    new-instance v1, Lcom/etermax/gamescommon/animations/v1/AnimatedView;

    iget-object v0, p0, Lcom/etermax/gamescommon/animations/a;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;-><init>(Landroid/content/Context;)V

    .line 131
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/animations/v1/b;

    iget-object v2, p0, Lcom/etermax/gamescommon/animations/a;->b:Lcom/etermax/gamescommon/resources/a;

    invoke-virtual {v1, v0, v2, p2}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->a(Lcom/etermax/gamescommon/animations/v1/b;Lcom/etermax/gamescommon/resources/a;Lcom/etermax/gamescommon/resources/b;)V

    move-object v0, v1

    .line 132
    goto :goto_0
.end method

.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/animations/iEterAnimation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/a;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Ljava/util/Set;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 73
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 75
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 76
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 78
    const/4 v0, 0x0

    invoke-interface {v3, p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 80
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 86
    const/4 v0, 0x0

    const-string v4, "version"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v4, "version"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    :goto_0
    if-ne v0, v2, :cond_1

    .line 89
    new-instance v0, Lcom/etermax/gamescommon/animations/b;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/animations/b;-><init>(Lcom/etermax/gamescommon/animations/a;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 99
    :goto_1
    :try_start_1
    const-string v2, "EterAnimation"

    const-string v3, "loadData"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 104
    :goto_2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 86
    goto :goto_0

    .line 90
    :cond_1
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 91
    :try_start_2
    new-instance v0, Lcom/etermax/gamescommon/animations/b;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/animations/b;-><init>(Lcom/etermax/gamescommon/animations/a;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 95
    :cond_2
    :try_start_3
    invoke-direct {p0, v3, v0}, Lcom/etermax/gamescommon/animations/a;->a(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 96
    :try_start_4
    iget-object v1, p0, Lcom/etermax/gamescommon/animations/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 101
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 98
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
