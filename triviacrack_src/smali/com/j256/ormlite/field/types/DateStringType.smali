.class public Lcom/j256/ormlite/field/types/DateStringType;
.super Lcom/j256/ormlite/field/types/BaseDateType;
.source "SourceFile"


# static fields
.field public static DEFAULT_WIDTH:I

.field private static final singleTon:Lcom/j256/ormlite/field/types/DateStringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x32

    sput v0, Lcom/j256/ormlite/field/types/DateStringType;->DEFAULT_WIDTH:I

    .line 22
    new-instance v0, Lcom/j256/ormlite/field/types/DateStringType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/DateStringType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/DateStringType;->singleTon:Lcom/j256/ormlite/field/types/DateStringType;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BaseDateType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 30
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
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseDateType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 37
    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/DateStringType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/j256/ormlite/field/types/DateStringType;->singleTon:Lcom/j256/ormlite/field/types/DateStringType;

    return-object v0
.end method


# virtual methods
.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/j256/ormlite/field/types/DateStringType;->DEFAULT_WIDTH:I

    return v0
.end method

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
    .line 96
    const-class v0, [B

    return-object v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    sget-object v0, Lcom/j256/ormlite/field/types/DateStringType;->defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-static {p1, v0}, Lcom/j256/ormlite/field/types/DateStringType;->convertDateStringConfig(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 71
    check-cast p2, Ljava/util/Date;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeConfigObject(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 77
    if-nez v1, :cond_0

    .line 78
    sget-object v0, Lcom/j256/ormlite/field/types/DateStringType;->defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    .line 80
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-direct {v0, v1}, Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 41
    sget-object v0, Lcom/j256/ormlite/field/types/DateStringType;->defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-static {p1, v0}, Lcom/j256/ormlite/field/types/DateStringType;->convertDateStringConfig(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    move-result-object v0

    .line 44
    :try_start_0
    invoke-static {v0, p2}, Lcom/j256/ormlite/field/types/DateStringType;->normalizeDateString(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problems with field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parsing default date-string \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' using \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/j256/ormlite/field/types/DateStringType;->sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    check-cast p2, Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/j256/ormlite/field/types/DateStringType;->defaultDateFormatConfig:Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    invoke-static {p1, v0}, Lcom/j256/ormlite/field/types/DateStringType;->convertDateStringConfig(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;)Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;

    move-result-object v0

    .line 61
    :try_start_0
    invoke-static {v0, p2}, Lcom/j256/ormlite/field/types/DateStringType;->parseDateString(Lcom/j256/ormlite/field/types/BaseDateType$DateStringFormatConfig;Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problems with column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parsing date-string \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' using \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method
