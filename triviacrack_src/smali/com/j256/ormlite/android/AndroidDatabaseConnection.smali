.class public Lcom/j256/ormlite/android/AndroidDatabaseConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/support/DatabaseConnection;


# static fields
.field private static final ANDROID_VERSION:Ljava/lang/String; = "VERSION__4.48__"

.field private static final NO_STRING_ARGS:[Ljava/lang/String;

.field private static logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field private final cancelQueriesEnabled:Z

.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final readWrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->NO_STRING_ARGS:[Ljava/lang/String;

    .line 40
    const-string v0, "VERSION__4.48__"

    invoke-static {v0}, Lcom/j256/ormlite/misc/VersionUtils;->checkCoreVersusAndroidVersions(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;-><init>(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    iput-boolean p2, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->readWrite:Z

    .line 50
    iput-boolean p3, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->cancelQueriesEnabled:Z

    .line 51
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: db {} opened, read-write = {}"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method private bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    if-nez p2, :cond_1

    .line 368
    :cond_0
    return-void

    .line 328
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_0

    .line 329
    aget-object v0, p2, v1

    .line 330
    if-nez v0, :cond_2

    .line 331
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 328
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 333
    :cond_2
    aget-object v2, p3, v1

    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v2

    .line 334
    sget-object v3, Lcom/j256/ormlite/android/AndroidDatabaseConnection$1;->$SwitchMap$com$j256$ormlite$field$SqlType:[I

    invoke-virtual {v2}, Lcom/j256/ormlite/field/SqlType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 364
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sql argument type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :pswitch_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 345
    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_1

    .line 349
    :pswitch_2
    add-int/lit8 v2, v1, 0x1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_1

    .line 353
    :pswitch_3
    add-int/lit8 v2, v1, 0x1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_1

    .line 361
    :pswitch_4
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Android type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private toStrings([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 371
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 384
    :goto_0
    return-object v0

    .line 374
    :cond_1
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    .line 375
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 376
    aget-object v3, p1, v0

    .line 377
    if-nez v3, :cond_2

    .line 378
    aput-object v2, v1, v0

    .line 375
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 384
    goto :goto_0
.end method

.method private update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 295
    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 298
    :try_start_1
    invoke-direct {p0, v1, p2, p3}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)V

    .line 299
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 303
    if-eqz v1, :cond_3

    .line 304
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    move-object v0, v2

    .line 310
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT CHANGES()"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 311
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v2

    long-to-int v0, v2

    .line 316
    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 320
    :cond_0
    :goto_1
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "{} statement is compiled and executed, changed {}: {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p4, v3, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    return v0

    .line 300
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 301
    :goto_2
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating database failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 305
    :cond_1
    throw v0

    .line 312
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 314
    :goto_4
    const/4 v0, 0x1

    .line 316
    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1

    .line 316
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_5
    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v0

    .line 316
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 312
    :catch_2
    move-exception v0

    goto :goto_4

    .line 303
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 300
    :catch_3
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 253
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: db {} closed"

    iget-object v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p0, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string v1, "problems closing the database connection"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public closeQuietly()V
    .locals 1

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit(Ljava/sql/Savepoint;)V
    .locals 3
    .parameter

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 106
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    if-nez p1, :cond_0

    .line 108
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: transaction is successfuly ended"

    invoke-virtual {v0, v1, p0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: transaction {} is successfuly ended"

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    if-nez p1, :cond_1

    .line 114
    const-string v1, "problems commiting transaction"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 116
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problems commiting transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;I)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v0, Lcom/j256/ormlite/android/AndroidCompiledStatement;

    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v2, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->cancelQueriesEnabled:Z

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/j256/ormlite/android/AndroidCompiledStatement;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;Z)V

    .line 147
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "{}: compiled statement got {}: {}"

    invoke-virtual {v1, v2, p0, v0, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    return-object v0
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    const-string v0, "deleted"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public executeStatement(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->NO_STRING_ARGS:[Ljava/lang/String;

    invoke-static {v0, p1, p1, v1}, Lcom/j256/ormlite/android/AndroidCompiledStatement;->execSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/GeneratedKeyHolder;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 156
    invoke-direct {p0, v1, p2, p3}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)V

    .line 157
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    .line 158
    if-eqz p4, :cond_0

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/j256/ormlite/support/GeneratedKeyHolder;->addKey(Ljava/lang/Number;)V

    .line 165
    :cond_0
    const/4 v0, 0x1

    .line 166
    sget-object v2, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "{}: insert statement is compiled and executed, changed {}: {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, p0, v4, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    return v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inserting to database failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v0
.end method

.method public isAutoCommit()Z
    .locals 4

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    .line 61
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "{}: in transaction is {}"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "problems getting auto-commit from database"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isAutoCommitSupported()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public isClosed()Z
    .locals 5

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    .line 270
    sget-object v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v2, "{}: db {} isOpen returned {}"

    iget-object v3, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    const-string v1, "problems detecting if the database is closed"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isReadWrite()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->readWrite:Z

    return v0
.end method

.method public isTableExists(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 282
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 287
    :goto_0
    sget-object v2, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "{}: isTableExists \'{}\' returned {}"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, p0, p1, v4}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public queryForLong(Ljava/lang/String;)J
    .locals 6
    .parameter

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    .line 217
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "{}: query for long simple query returned {}: {}"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, p0, v5, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    return-wide v2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryForLong from database failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0
.end method

.method public queryForLong(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)J
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 229
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->toStrings([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 232
    new-instance v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/j256/ormlite/android/AndroidDatabaseResults;-><init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;)V

    .line 234
    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->first()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getLong(I)J

    move-result-wide v2

    .line 239
    :goto_0
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "{}: query for long raw query returned {}: {}"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, p0, v5, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    if-eqz v1, :cond_0

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v2

    .line 237
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryForLong from database failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public queryForOne(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "Lcom/j256/ormlite/stmt/GenericRowMapper",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 188
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->toStrings([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 191
    :try_start_1
    new-instance v2, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    invoke-direct {v2, v1, p5}, Lcom/j256/ormlite/android/AndroidDatabaseResults;-><init>(Landroid/database/Cursor;Lcom/j256/ormlite/dao/ObjectCache;)V

    .line 192
    sget-object v3, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v4, "{}: queried for one result: {}"

    invoke-virtual {v3, v4, p0, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v2}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->first()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-nez v3, :cond_1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 196
    :cond_1
    :try_start_2
    invoke-interface {p4, v2}, Lcom/j256/ormlite/stmt/GenericRowMapper;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;

    move-result-object v0

    .line 197
    invoke-virtual {v2}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->MORE_THAN_ONE:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 206
    :cond_2
    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 204
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryForOne from database failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 207
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 206
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 203
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 3
    .parameter

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 125
    if-nez p1, :cond_0

    .line 126
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: transaction is ended, unsuccessfuly"

    invoke-virtual {v0, v1, p0}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: transaction {} is ended, unsuccessfuly"

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    if-nez p1, :cond_1

    .line 132
    const-string v1, "problems rolling back transaction"

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 134
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problems rolling back transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public setAutoCommit(Z)V
    .locals 1
    .parameter

    .prologue
    .line 74
    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 77
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0
.end method

.method public setSavePoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 3
    .parameter

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 89
    sget-object v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: save-point set with name {}"

    invoke-virtual {v0, v1, p0, p1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    new-instance v0, Lcom/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint;

    invoke-direct {v0, p1}, Lcom/j256/ormlite/android/AndroidDatabaseConnection$OurSavePoint;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problems beginning transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    const-string v0, "updated"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;->update(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
