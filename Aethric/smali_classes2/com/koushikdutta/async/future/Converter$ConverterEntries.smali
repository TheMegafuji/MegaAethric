.class public Lcom/koushikdutta/async/future/Converter$ConverterEntries;
.super Ljava/lang/Object;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConverterEntries"
.end annotation


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/koushikdutta/async/future/Converter$ConverterEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/future/Converter$ConverterEntries;)V
    .locals 1

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->list:Ljava/util/ArrayList;

    .line 325
    iget-object p1, p1, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;ILcom/koushikdutta/async/future/TypeConverter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "I",
            "Lcom/koushikdutta/async/future/TypeConverter<",
            "TT;TF;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 332
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "*/*"

    :cond_0
    move-object v2, p2

    .line 334
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p4, "*/*"

    :cond_1
    move-object v4, p4

    .line 337
    iget-object p2, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->list:Ljava/util/ArrayList;

    new-instance p4, Lcom/koushikdutta/async/future/Converter$ConverterEntry;

    move-object v0, p4

    move-object v1, p1

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/async/future/Converter$ConverterEntry;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;ILcom/koushikdutta/async/future/TypeConverter;)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/future/TypeConverter<",
            "TT;TF;>;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 329
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->addConverter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;ILcom/koushikdutta/async/future/TypeConverter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeConverter(Lcom/koushikdutta/async/future/TypeConverter;)Z
    .locals 3

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;

    .line 342
    iget-object v2, v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->typeConverter:Lcom/koushikdutta/async/future/TypeConverter;

    if-ne v2, p1, :cond_0

    .line 343
    iget-object p1, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 345
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
