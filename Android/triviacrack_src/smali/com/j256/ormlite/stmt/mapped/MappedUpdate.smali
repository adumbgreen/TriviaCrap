.class public Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement",
        "<TT;TID;>;"
    }
.end annotation


# instance fields
.field private final versionFieldType:Lcom/j256/ormlite/field/FieldType;

.field private final versionFieldTypeIndex:I


# direct methods
.method private constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Lcom/j256/ormlite/field/FieldType;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/BaseMappedStatement;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;)V

    .line 25
    iput-object p4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    .line 26
    iput p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldTypeIndex:I

    .line 27
    return-void
.end method

.method public static build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;)",
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdate",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v7

    .line 32
    if-nez v7, :cond_0

    .line 33
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because it doesn\'t have an id field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    const-string v0, "UPDATE "

    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v8, v0, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendTableName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, -0x1

    .line 42
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v6

    array-length v9, v6

    const/4 v0, 0x0

    move v3, v0

    move v0, v1

    :goto_0
    if-ge v3, v9, :cond_3

    aget-object v1, v6, v3

    .line 43
    invoke-static {v1, v7}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 44
    invoke-virtual {v1}, Lcom/j256/ormlite/field/FieldType;->isVersion()Z

    move-result v10

    if-eqz v10, :cond_1

    move v5, v0

    move-object v4, v1

    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 52
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 53
    if-eqz v4, :cond_4

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 57
    :cond_4
    new-array v3, v0, [Lcom/j256/ormlite/field/FieldType;

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v6, v0

    move v0, v2

    :goto_1
    if-ge v6, v10, :cond_7

    aget-object v11, v9, v6

    .line 60
    invoke-static {v11, v7}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z

    move-result v2

    if-nez v2, :cond_5

    move v12, v1

    move v1, v0

    move v0, v12

    .line 59
    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v12, v0

    move v0, v1

    move v1, v12

    goto :goto_1

    .line 63
    :cond_5
    if-eqz v0, :cond_6

    .line 64
    const-string v0, "SET "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v0, 0x0

    .line 69
    :goto_3
    const/4 v2, 0x0

    invoke-static {p0, v8, v11, v2}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 70
    add-int/lit8 v2, v1, 0x1

    aput-object v11, v3, v1

    .line 71
    const-string v1, "= ?"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    move v0, v2

    goto :goto_2

    .line 67
    :cond_6
    const-string v2, ", "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 73
    :cond_7
    const/16 v0, 0x20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    const/4 v0, 0x0

    invoke-static {p0, v7, v8, v0}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendWhereFieldEq(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/field/FieldType;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 75
    add-int/lit8 v0, v1, 0x1

    aput-object v7, v3, v1

    .line 76
    if-eqz v4, :cond_8

    .line 77
    const-string v1, " AND "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/4 v1, 0x0

    invoke-static {p0, v8, v4, v1}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->appendFieldColumnName(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/StringBuilder;Lcom/j256/ormlite/field/FieldType;Ljava/util/List;)V

    .line 79
    const-string v1, "= ?"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v1, v0, 0x1

    aput-object v4, v3, v0

    .line 82
    :cond_8
    new-instance v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;I)V

    return-object v0
.end method

.method private static isFieldUpdatable(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/field/FieldType;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->isForeignCollection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/j256/ormlite/field/FieldType;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    array-length v2, v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 127
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-virtual {p0, p2}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->getFieldObjects(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 96
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    if-eqz v2, :cond_5

    .line 97
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v1, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v2, v1}, Lcom/j256/ormlite/field/FieldType;->moveToNextValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    iget v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldTypeIndex:I

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v4, v1}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    move-object v2, v1

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, v1, v3, v4}, Lcom/j256/ormlite/support/DatabaseConnection;->update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I

    move-result v1

    .line 102
    if-lez v1, :cond_3

    .line 103
    if-eqz v2, :cond_1

    .line 105
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->versionFieldType:Lcom/j256/ormlite/field/FieldType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v2, v5, v6}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 107
    :cond_1
    if-eqz p3, :cond_3

    .line 109
    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->idField:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v2, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->clazz:Ljava/lang/Class;

    invoke-interface {p3, v4, v2}, Lcom/j256/ormlite/dao/ObjectCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_3

    if-eq v2, p2, :cond_3

    .line 113
    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v4}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v4

    array-length v5, v4

    :goto_2
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    .line 114
    iget-object v7, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->idField:Lcom/j256/ormlite/field/FieldType;

    if-eq v6, v7, :cond_2

    .line 115
    invoke-virtual {v6, p2}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8, p3}, Lcom/j256/ormlite/field/FieldType;->assignField(Ljava/lang/Object;Ljava/lang/Object;ZLcom/j256/ormlite/dao/ObjectCache;)V

    .line 113
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 122
    :cond_3
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "update data with statement \'{}\' and {} args, changed {} rows"

    iget-object v4, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    array-length v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    array-length v0, v3

    if-lez v0, :cond_4

    .line 125
    sget-object v0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "update arguments: {}"

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v0, v1

    .line 127
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to run update stmt on object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->statement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_5
    move-object v2, v1

    goto/16 :goto_1
.end method
