.class public Lcom/j256/ormlite/android/DatabaseTableConfigUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALLOW_GENERATED_ID_INSERT:I = 0x18

.field private static final CAN_BE_NULL:I = 0x5

.field private static final COLUMN_DEFINITON:I = 0x19

.field private static final COLUMN_NAME:I = 0x1

.field private static final DATA_TYPE:I = 0x2

.field private static final DEFAULT_VALUE:I = 0x3

.field private static final FOREIGN:I = 0x9

.field private static final FOREIGN_AUTO_CREATE:I = 0x1a

.field private static final FOREIGN_AUTO_REFRESH:I = 0x15

.field private static final FOREIGN_COLUMN_NAME:I = 0x1c

.field private static final FORMAT:I = 0xe

.field private static final GENERATED_ID:I = 0x7

.field private static final GENERATED_ID_SEQUENCE:I = 0x8

.field private static final ID:I = 0x6

.field private static final INDEX:I = 0x11

.field private static final INDEX_NAME:I = 0x13

.field private static final MAX_FOREIGN_AUTO_REFRESH_LEVEL:I = 0x16

.field private static final PERSISTED:I = 0xd

.field private static final PERSISTER_CLASS:I = 0x17

.field private static final READ_ONLY:I = 0x1d

.field private static final THROW_IF_NULL:I = 0xc

.field private static final UNIQUE:I = 0xf

.field private static final UNIQUE_COMBO:I = 0x10

.field private static final UNIQUE_INDEX:I = 0x12

.field private static final UNIQUE_INDEX_NAME:I = 0x14

.field private static final UNKNOWN_ENUM_NAME:I = 0xb

.field private static final USE_GET_SET:I = 0xa

.field private static final VERSION:I = 0x1b

.field private static final WIDTH:I = 0x4

.field private static annotationFactoryClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static annotationMemberClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final configFieldNums:[I

.field private static elementsField:Ljava/lang/reflect/Field;

.field private static nameField:Ljava/lang/reflect/Field;

.field private static valueField:Ljava/lang/reflect/Field;

.field private static workedC:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    .line 38
    invoke-static {}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->lookupClasses()[I

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    return-void
.end method

.method private static assignConfigField(ILcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    packed-switch p0, :pswitch_data_0

    .line 392
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find support for DatabaseField number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :pswitch_0
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnName(Ljava/lang/String;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 303
    :pswitch_1
    check-cast p3, Lcom/j256/ormlite/field/DataType;

    invoke-virtual {p1, p3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDataType(Lcom/j256/ormlite/field/DataType;)V

    goto :goto_0

    .line 306
    :pswitch_2
    check-cast p3, Ljava/lang/String;

    .line 307
    if-eqz p3, :cond_0

    const-string v0, "__ormlite__ no default value string was specified"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    invoke-virtual {p1, p3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setWidth(I)V

    goto :goto_0

    .line 315
    :pswitch_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setCanBeNull(Z)V

    goto :goto_0

    .line 318
    :pswitch_5
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setId(Z)V

    goto :goto_0

    .line 321
    :pswitch_6
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedId(Z)V

    goto :goto_0

    .line 324
    :pswitch_7
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setGeneratedIdSequence(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :pswitch_8
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeign(Z)V

    goto :goto_0

    .line 330
    :pswitch_9
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUseGetSet(Z)V

    goto :goto_0

    .line 333
    :pswitch_a
    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->findMatchingEnumVal(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnknownEnumValue(Ljava/lang/Enum;)V

    goto :goto_0

    .line 336
    :pswitch_b
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setThrowIfNull(Z)V

    goto :goto_0

    .line 339
    :pswitch_c
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setPersisted(Z)V

    goto :goto_0

    .line 342
    :pswitch_d
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :pswitch_e
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUnique(Z)V

    goto/16 :goto_0

    .line 348
    :pswitch_f
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueCombo(Z)V

    goto/16 :goto_0

    .line 351
    :pswitch_10
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndex(Z)V

    goto/16 :goto_0

    .line 354
    :pswitch_11
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndex(Z)V

    goto/16 :goto_0

    .line 357
    :pswitch_12
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setIndexName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :pswitch_13
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setUniqueIndexName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :pswitch_14
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoRefresh(Z)V

    goto/16 :goto_0

    .line 366
    :pswitch_15
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setMaxForeignAutoRefreshLevel(I)V

    goto/16 :goto_0

    .line 370
    :pswitch_16
    check-cast p3, Ljava/lang/Class;

    .line 371
    invoke-virtual {p1, p3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setPersisterClass(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 374
    :pswitch_17
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setAllowGeneratedIdInsert(Z)V

    goto/16 :goto_0

    .line 377
    :pswitch_18
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setColumnDefinition(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    :pswitch_19
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignAutoCreate(Z)V

    goto/16 :goto_0

    .line 383
    :pswitch_1a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setVersion(Z)V

    goto/16 :goto_0

    .line 386
    :pswitch_1b
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setForeignColumnName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :pswitch_1c
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->setReadOnly(Z)V

    goto/16 :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method private static buildConfig(Lcom/j256/ormlite/field/DatabaseField;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 273
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    move-object v0, v1

    .line 290
    :goto_0
    return-object v0

    .line 278
    :cond_0
    sget-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    if-nez v0, :cond_1

    move-object v0, v1

    .line 280
    goto :goto_0

    .line 282
    :cond_1
    new-instance v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>(Ljava/lang/String;)V

    .line 283
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 284
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 285
    sget-object v3, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueField:Ljava/lang/reflect/Field;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 286
    if-eqz v3, :cond_2

    .line 287
    sget-object v4, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    aget v4, v4, v1

    invoke-static {v4, v2, p2, v3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->assignConfigField(ILcom/j256/ormlite/field/DatabaseFieldConfig;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 284
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 290
    goto :goto_0
.end method

.method private static configFieldNameToNum(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 166
    const-string v0, "columnName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    .line 168
    :cond_0
    const-string v0, "dataType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const/4 v0, 0x2

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, "defaultValue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    const/4 v0, 0x3

    goto :goto_0

    .line 172
    :cond_2
    const-string v0, "width"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    const/4 v0, 0x4

    goto :goto_0

    .line 174
    :cond_3
    const-string v0, "canBeNull"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    const/4 v0, 0x5

    goto :goto_0

    .line 176
    :cond_4
    const-string v0, "id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    const/4 v0, 0x6

    goto :goto_0

    .line 178
    :cond_5
    const-string v0, "generatedId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    const/4 v0, 0x7

    goto :goto_0

    .line 180
    :cond_6
    const-string v0, "generatedIdSequence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 181
    const/16 v0, 0x8

    goto :goto_0

    .line 182
    :cond_7
    const-string v0, "foreign"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 183
    const/16 v0, 0x9

    goto :goto_0

    .line 184
    :cond_8
    const-string v0, "useGetSet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 185
    const/16 v0, 0xa

    goto :goto_0

    .line 186
    :cond_9
    const-string v0, "unknownEnumName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 187
    const/16 v0, 0xb

    goto :goto_0

    .line 188
    :cond_a
    const-string v0, "throwIfNull"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 189
    const/16 v0, 0xc

    goto :goto_0

    .line 190
    :cond_b
    const-string v0, "persisted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 191
    const/16 v0, 0xd

    goto :goto_0

    .line 192
    :cond_c
    const-string v0, "format"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 193
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 194
    :cond_d
    const-string v0, "unique"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 195
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 196
    :cond_e
    const-string v0, "uniqueCombo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 197
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 198
    :cond_f
    const-string v0, "index"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 199
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 200
    :cond_10
    const-string v0, "uniqueIndex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 201
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 202
    :cond_11
    const-string v0, "indexName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 203
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 204
    :cond_12
    const-string v0, "uniqueIndexName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 205
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 206
    :cond_13
    const-string v0, "foreignAutoRefresh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 207
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 208
    :cond_14
    const-string v0, "maxForeignAutoRefreshLevel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 209
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 210
    :cond_15
    const-string v0, "persisterClass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 211
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 212
    :cond_16
    const-string v0, "allowGeneratedIdInsert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 213
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 214
    :cond_17
    const-string v0, "columnDefinition"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 215
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 216
    :cond_18
    const-string v0, "foreignAutoCreate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 217
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 218
    :cond_19
    const-string v0, "version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 219
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 220
    :cond_1a
    const-string v0, "foreignColumnName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 221
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 222
    :cond_1b
    const-string v0, "readOnly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 223
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 225
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find support for DatabaseField "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static configFromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNums:[I

    if-nez v0, :cond_0

    .line 236
    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .line 243
    :cond_0
    const-class v0, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DatabaseField;

    .line 245
    const/4 v1, 0x0

    .line 247
    if-eqz v0, :cond_2

    .line 248
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->buildConfig(Lcom/j256/ormlite/field/DatabaseField;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    :goto_1
    if-nez v0, :cond_1

    .line 260
    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->fromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 262
    :cond_1
    sget v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v2

    .line 46
    invoke-static {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 47
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    .line 48
    :goto_0
    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    .line 50
    invoke-static {v2, v3, v7}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFromField(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v7

    .line 51
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->isPersisted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 52
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-direct {v0, p1, v3, v4}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method public static getWorkedC()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->workedC:I

    return v0
.end method

.method private static lookupClasses()[I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 77
    :try_start_0
    const-string v0, "org.apache.harmony.lang.annotation.AnnotationFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    .line 78
    const-string v0, "org.apache.harmony.lang.annotation.AnnotationMember"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationMemberClazz:Ljava/lang/Class;

    .line 79
    const-string v0, "[Lorg.apache.harmony.lang.annotation.AnnotationMember;"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :try_start_1
    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    const-string v3, "elements"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    .line 87
    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationMemberClazz:Ljava/lang/Class;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->nameField:Ljava/lang/reflect/Field;

    .line 90
    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->nameField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationMemberClazz:Ljava/lang/Class;

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueField:Ljava/lang/reflect/Field;

    .line 92
    sget-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->valueField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 94
    const-class v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil$DatabaseFieldSample;

    const-string v3, "field"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 101
    const-class v3, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/field/DatabaseField;

    .line 102
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->annotationFactoryClazz:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    move-object v0, v2

    .line 124
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 81
    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 96
    goto :goto_0

    .line 97
    :catch_2
    move-exception v0

    move-object v0, v2

    .line 98
    goto :goto_0

    .line 109
    :cond_0
    :try_start_2
    sget-object v3, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->elementsField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 111
    goto :goto_0

    .line 114
    :cond_2
    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 115
    array-length v1, v0

    new-array v3, v1, [I

    .line 118
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    array-length v1, v0

    if-ge v4, v1, :cond_3

    .line 119
    sget-object v1, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->nameField:Ljava/lang/reflect/Field;

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    invoke-static {v1}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->configFieldNameToNum(Ljava/lang/String;)I

    move-result v1

    aput v1, v3, v4
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 118
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    move-object v0, v3

    .line 122
    goto :goto_0

    .line 123
    :catch_3
    move-exception v0

    move-object v0, v2

    .line 124
    goto :goto_0
.end method

.method private static valueIfNotBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 397
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    const/4 p0, 0x0

    .line 400
    :cond_1
    return-object p0
.end method
