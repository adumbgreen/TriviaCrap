.class public Lcom/etermax/gamescommon/animations/v1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/animations/v1/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lcom/etermax/gamescommon/animations/v1/e;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->a:Ljava/util/List;

    .line 48
    const-string v0, "Animation"

    invoke-interface {p1, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "name"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/animations/v1/b;->a(Ljava/lang/String;)V

    .line 51
    const-string v0, "framerate"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/animations/v1/b;->b(Ljava/lang/String;)V

    .line 52
    const-string v0, "totalframes"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/animations/v1/b;->c(Ljava/lang/String;)V

    .line 58
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 59
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "Part"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->a:Ljava/util/List;

    new-instance v1, Lcom/etermax/gamescommon/animations/v1/d;

    invoke-direct {v1, p1}, Lcom/etermax/gamescommon/animations/v1/d;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1
    const-string v1, "Sizes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    new-instance v0, Lcom/etermax/gamescommon/animations/v1/e;

    invoke-direct {v0, p1}, Lcom/etermax/gamescommon/animations/v1/e;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->f:Lcom/etermax/gamescommon/animations/v1/e;

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {p1}, Lcom/etermax/gamescommon/animations/v1/b;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 72
    :cond_3
    return-void
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 127
    :cond_0
    const/4 v0, 0x1

    .line 128
    :goto_0
    if-eqz v0, :cond_1

    .line 129
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 134
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 132
    goto :goto_0

    .line 138
    :cond_1
    return-void

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/etermax/gamescommon/animations/v1/b;->b:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->d:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->d:I

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->e:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->e:I

    goto :goto_0
.end method

.method public d()F
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->f:Lcom/etermax/gamescommon/animations/v1/e;

    iget-object v1, p0, Lcom/etermax/gamescommon/animations/v1/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/animations/v1/e;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/animations/v1/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/animations/v1/f;->a()F

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/etermax/gamescommon/animations/v1/b;->c:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public e()F
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->f:Lcom/etermax/gamescommon/animations/v1/e;

    iget-object v1, p0, Lcom/etermax/gamescommon/animations/v1/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/animations/v1/e;->a(Ljava/lang/String;)Lcom/etermax/gamescommon/animations/v1/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/animations/v1/f;->b()F

    move-result v0

    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/animations/v1/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/b;->a:Ljava/util/List;

    return-object v0
.end method
