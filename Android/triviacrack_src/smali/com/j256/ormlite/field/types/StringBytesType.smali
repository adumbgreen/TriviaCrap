.class public Lcom/j256/ormlite/field/types/StringBytesType;
.super Lcom/j256/ormlite/field/types/BaseDataType;
.source "SourceFile"


# static fields
.field private static final DEFAULT_STRING_BYTES_CHARSET_NAME:Ljava/lang/String; = "Unicode"

.field private static final singleTon:Lcom/j256/ormlite/field/types/StringBytesType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/j256/ormlite/field/types/StringBytesType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/StringBytesType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/StringBytesType;->singleTon:Lcom/j256/ormlite/field/types/StringBytesType;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->BYTE_ARRAY:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/field/SqlType;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDataType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 35
    return-void
.end method

.method private getCharsetName(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 92
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    const-string v0, "Unicode"

    .line 95
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/StringBytesType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/j256/ormlite/field/types/StringBytesType;->singleTon:Lcom/j256/ormlite/field/types/StringBytesType;

    return-object v0
.end method


# virtual methods
.method public getPrimaryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 88
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAppropriateId()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public isArgumentHolderRequired()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 61
    check-cast p2, Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/types/StringBytesType;->getCharsetName(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not convert string with charset name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "String-bytes type cannot have default values"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "String-bytes type cannot be converted from string to Java"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    check-cast p2, [B

    check-cast p2, [B

    .line 50
    invoke-direct {p0, p1}, Lcom/j256/ormlite/field/types/StringBytesType;->getCharsetName(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/String;

    move-result-object v1

    .line 53
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not convert string with charset name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
