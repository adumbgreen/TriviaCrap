.class public Lcom/etermax/preguntados/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/etermax/tools/j/a;

.field protected c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/etermax/preguntados/e/b;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/etermax/preguntados/e/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->a:Landroid/content/Context;

    sget-object v1, Lcom/etermax/gamescommon/resources/b;->e:Lcom/etermax/gamescommon/resources/b;

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/resources/a;->a(Landroid/content/Context;Lcom/etermax/gamescommon/resources/b;)Lcom/etermax/gamescommon/resources/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/resources/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/e/c;->b:Lcom/etermax/tools/j/a;

    invoke-virtual {v2}, Lcom/etermax/tools/j/a;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    const-string v2, ".jpg"

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method private b(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 249
    const-string v0, "MediaDownloader"

    invoke-static {v0, p1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method


# virtual methods
.method public a(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/preguntados/e/c;->b(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/etermax/preguntados/e/c;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/e/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/e/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/e/c;->c:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/e/c;->d:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 5
    .parameter

    .prologue
    .line 58
    if-eqz p1, :cond_4

    .line 59
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSpins_data()Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 63
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getSpins_data()Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinsDataDTO;->getSpins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinDTO;

    .line 65
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinDTO;->getQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;

    .line 66
    sget-object v3, Lcom/etermax/preguntados/e/c$1;->a:[I

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/SpinQuestionDTO;->getQuestion()Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    goto :goto_0

    .line 82
    :cond_2
    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getDuelQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    .line 85
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v2

    sget-object v3, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->IMAGE:Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    invoke-virtual {v2, v3}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    goto :goto_1

    .line 92
    :cond_4
    return-void

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 6
    .parameter

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/etermax/preguntados/e/c;->b(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v3, Lcom/etermax/preguntados/e/b;

    invoke-direct {v3}, Lcom/etermax/preguntados/e/b;-><init>()V

    .line 107
    sget-object v0, Lcom/etermax/preguntados/e/e;->a:Lcom/etermax/preguntados/e/e;

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/e/b;->a(Lcom/etermax/preguntados/e/e;)V

    .line 108
    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL Loaded: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/e/c;->b(Ljava/lang/String;)V

    .line 113
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 115
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 116
    const/16 v4, 0x3a98

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 117
    const/16 v4, 0x3a98

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 118
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 120
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 121
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 123
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    if-eqz v4, :cond_1

    .line 126
    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/e/b;->a(Landroid/graphics/Bitmap;)V

    .line 127
    sget-object v0, Lcom/etermax/preguntados/e/e;->c:Lcom/etermax/preguntados/e/e;

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/e/b;->a(Lcom/etermax/preguntados/e/e;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " OK"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/e/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, v1, v3}, Lcom/etermax/preguntados/e/c;->a(Ljava/lang/String;Lcom/etermax/preguntados/e/b;)V

    .line 149
    :cond_0
    return-void

    .line 131
    :cond_1
    :try_start_1
    sget-object v0, Lcom/etermax/preguntados/e/e;->b:Lcom/etermax/preguntados/e/e;

    invoke-virtual {v3, v0}, Lcom/etermax/preguntados/e/b;->a(Lcom/etermax/preguntados/e/e;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " DECODE FAIL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/e/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/e/b;->a(Landroid/graphics/Bitmap;)V

    .line 138
    sget-object v4, Lcom/etermax/preguntados/e/e;->b:Lcom/etermax/preguntados/e/e;

    invoke-virtual {v3, v4}, Lcom/etermax/preguntados/e/b;->a(Lcom/etermax/preguntados/e/e;)V

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " NOT DOWNLOADED"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/etermax/preguntados/e/c;->b(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/e/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/e/c;->b(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/e/a;)V

    .line 97
    return-void
.end method

.method a(Ljava/lang/String;Lcom/etermax/preguntados/e/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/etermax/preguntados/e/b;->a()Lcom/etermax/preguntados/e/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/e/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/e/c;->b(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Lcom/etermax/preguntados/e/b;->a()Lcom/etermax/preguntados/e/e;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/e/e;->c:Lcom/etermax/preguntados/e/e;

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/e/a;

    invoke-virtual {p2}, Lcom/etermax/preguntados/e/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/e/a;->a(Landroid/graphics/Bitmap;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p2}, Lcom/etermax/preguntados/e/b;->a()Lcom/etermax/preguntados/e/e;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/e/e;->b:Lcom/etermax/preguntados/e/e;

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/e/a;

    invoke-interface {v0}, Lcom/etermax/preguntados/e/a;->a()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "image_task_id"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/a/a/a;->a(Ljava/lang/String;Z)V

    .line 239
    const-string v0, "Tasks cancelled"

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/e/c;->b(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;Lcom/etermax/preguntados/e/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/etermax/preguntados/e/c;->b(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/lang/String;

    move-result-object v1

    .line 203
    sget-object v0, Lcom/etermax/preguntados/e/c$1;->a:[I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 205
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/e/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/e/b;->a()Lcom/etermax/preguntados/e/e;

    move-result-object v0

    sget-object v2, Lcom/etermax/preguntados/e/e;->b:Lcom/etermax/preguntados/e/e;

    if-ne v0, v2, :cond_0

    .line 207
    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/e/a;

    invoke-interface {v0}, Lcom/etermax/preguntados/e/a;->a()V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/etermax/preguntados/e/c;->b(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/lang/String;

    move-result-object v0

    .line 178
    sget-object v2, Lcom/etermax/preguntados/e/c$1;->a:[I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 193
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 180
    :pswitch_1
    iget-object v2, p0, Lcom/etermax/preguntados/e/c;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/etermax/preguntados/e/c;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/e/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/e/b;->a()Lcom/etermax/preguntados/e/e;

    move-result-object v0

    sget-object v2, Lcom/etermax/preguntados/e/e;->c:Lcom/etermax/preguntados/e/e;

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 181
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 185
    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 244
    iget-object v0, p0, Lcom/etermax/preguntados/e/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 245
    const-string v0, "Cache cleared"

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/e/c;->b(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public c(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getId()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getCategory()Lcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/etermax/preguntados/e/c;->b(JLcom/etermax/preguntados/datasource/dto/enums/QuestionCategory;)Ljava/lang/String;

    move-result-object v0

    .line 223
    sget-object v2, Lcom/etermax/preguntados/e/c$1;->a:[I

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/QuestionDTO;->getQuestionType()Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/enums/QuestionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 233
    :goto_0
    return v0

    .line 225
    :pswitch_0
    iget-object v2, p0, Lcom/etermax/preguntados/e/c;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/etermax/preguntados/e/c;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/e/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/e/b;->a()Lcom/etermax/preguntados/e/e;

    move-result-object v0

    sget-object v2, Lcom/etermax/preguntados/e/e;->b:Lcom/etermax/preguntados/e/e;

    if-ne v0, v2, :cond_1

    .line 226
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
