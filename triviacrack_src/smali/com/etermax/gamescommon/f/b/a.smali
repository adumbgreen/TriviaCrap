.class public Lcom/etermax/gamescommon/f/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "ChatHistory"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "otherUserId"
        id = true
    .end annotation
.end field

.field private c:[B
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "messageListSerialized"
        dataType = .enum Lcom/j256/ormlite/field/DataType;->BYTE_ARRAY:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private d:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "syncDate"
    .end annotation
.end field

.field private e:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "isFriend"
    .end annotation
.end field

.field private f:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "isBlocked"
    .end annotation
.end field

.field private g:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "isUserIsBlocked"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "lastActivity"
    .end annotation
.end field

.field private i:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "facebookId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "ChatHistory"

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/a;->a:Ljava/lang/String;

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/a;->b:Ljava/lang/Long;

    .line 51
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/a;->d:Ljava/util/Date;

    .line 52
    iput-boolean v1, p0, Lcom/etermax/gamescommon/f/b/a;->e:Z

    .line 53
    iput-boolean v1, p0, Lcom/etermax/gamescommon/f/b/a;->f:Z

    .line 54
    iput-boolean v1, p0, Lcom/etermax/gamescommon/f/b/a;->g:Z

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/a;->h:Ljava/lang/String;

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/a;->i:Ljava/lang/Long;

    .line 57
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessageDTO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/a;->c:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-object v1

    .line 72
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/etermax/gamescommon/f/b/a;->c:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    move-object v1, v0

    .line 92
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v2, "ChatHistory"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 90
    goto :goto_1

    .line 84
    :catch_1
    move-exception v0

    .line 85
    const-string v2, "ChatHistory"

    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 90
    goto :goto_1

    .line 86
    :catch_2
    move-exception v0

    .line 87
    const-string v2, "ChatHistory"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 90
    goto :goto_1

    .line 88
    :catch_3
    move-exception v0

    .line 89
    const-string v2, "ChatHistory"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/etermax/gamescommon/f/b/a;->b:Ljava/lang/Long;

    .line 65
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/etermax/gamescommon/f/b/a;->h:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/etermax/gamescommon/f/b/a;->d:Ljava/util/Date;

    .line 116
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/MessageDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 100
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/a;->c:[B

    .line 108
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v2, "ChatHistory"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/etermax/gamescommon/f/b/a;->e:Z

    .line 124
    return-void
.end method

.method public b()Ljava/util/Date;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/a;->d:Ljava/util/Date;

    return-object v0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/etermax/gamescommon/f/b/a;->i:Ljava/lang/Long;

    .line 156
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/etermax/gamescommon/f/b/a;->f:Z

    .line 132
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/etermax/gamescommon/f/b/a;->g:Z

    .line 140
    return-void
.end method
