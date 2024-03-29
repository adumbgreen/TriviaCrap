.class public Lcom/j256/ormlite/field/types/EnumStringType;
.super Lcom/j256/ormlite/field/types/BaseEnumType;
.source "SourceFile"


# static fields
.field public static DEFAULT_WIDTH:I

.field private static final singleTon:Lcom/j256/ormlite/field/types/EnumStringType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x64

    sput v0, Lcom/j256/ormlite/field/types/EnumStringType;->DEFAULT_WIDTH:I

    .line 20
    new-instance v0, Lcom/j256/ormlite/field/types/EnumStringType;

    invoke-direct {v0}, Lcom/j256/ormlite/field/types/EnumStringType;-><init>()V

    sput-object v0, Lcom/j256/ormlite/field/types/EnumStringType;->singleTon:Lcom/j256/ormlite/field/types/EnumStringType;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 27
    sget-object v0, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Enum;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/j256/ormlite/field/types/BaseEnumType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

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
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/field/types/BaseEnumType;-><init>(Lcom/j256/ormlite/field/SqlType;[Ljava/lang/Class;)V

    .line 35
    return-void
.end method

.method public static getSingleton()Lcom/j256/ormlite/field/types/EnumStringType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/j256/ormlite/field/types/EnumStringType;->singleTon:Lcom/j256/ormlite/field/types/EnumStringType;

    return-object v0
.end method


# virtual methods
.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/j256/ormlite/field/types/EnumStringType;->DEFAULT_WIDTH:I

    return v0
.end method

.method public javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    check-cast p2, Ljava/lang/Enum;

    .line 65
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeConfigObject(Lcom/j256/ormlite/field/FieldType;)Ljava/lang/Object;
    .locals 6
    .parameter

    .prologue
    .line 70
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    check-cast v0, [Ljava/lang/Enum;

    .line 72
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " improperly configured as type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 76
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    return-object v2
.end method

.method public parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    return-object p2
.end method

.method public resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/j256/ormlite/field/types/EnumStringType;->sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-interface {p2, p3}, Lcom/j256/ormlite/support/DatabaseResults;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return-object p2

    .line 47
    :cond_0
    check-cast p2, Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getDataTypeConfigObj()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 50
    if-nez v0, :cond_1

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getUnknownEnumVal()Ljava/lang/Enum;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/j256/ormlite/field/types/EnumStringType;->enumVal(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p2

    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p1}, Lcom/j256/ormlite/field/FieldType;->getUnknownEnumVal()Ljava/lang/Enum;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/j256/ormlite/field/types/EnumStringType;->enumVal(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p2

    goto :goto_0
.end method
